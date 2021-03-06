"""The MapFeatures layer and related definitions."""

from typing import Mapping

import tensorflow as tf

from tensorflow_gnn.graph import dict_utils as du
from tensorflow_gnn.graph import graph_constants as const
from tensorflow_gnn.graph import graph_tensor as gt


@tf.keras.utils.register_keras_serializable(package="GNN")
class MapFeatures(tf.keras.layers.Layer):
  """Transforms features on a GraphTensor by user-defined callbacks.

  This layer transforms the feature maps of graph pieces (that is, EdgeSets,
  NodeSets, or the Context) by applying Keras Models to them. Those Models
  are built by user-supplied callbacks that receive a KerasTensor for the
  graph piece as input and return a dict of output features computed with
  the Keras functional API, see https://tensorflow.org/guide/keras/functional.

  Examples:

  ```
  # Hashes edge features called "id", leaves others unchanged:
  def edge_sets_fn(edge_set, *, edge_set_name):
    features = edge_set.get_features_dict()
    ids = features.pop("id")
    num_bins = 100_000 if edge_set_name == "views" else 20_000
    hashed_ids = tf.keras.layers.Hashing(num_bins=num_bins)(ids)
    features["hashed_id"] = hashed_ids
    return features
  graph = tfgnn.keras.layers.MapFeatures(edge_sets_fn=edge_sets_fn)(graph)
  ```

  ```
  # A simplistic way to map node features to an initial state.
  def node_sets_fn(node_set, *, node_set_name):
    state_dims_by_node_set = {"author": 32, "paper": 64}  # ...and so on.
    state_dim = state_dims_by_node_set[node_set_name]
    features = node_set.features  # Immutable view.
    if features: # Concatenate and project all inputs (assumes they are floats).
      return tf.keras.layers.Dense(state_dim)(
          tf.keras.layers.Concatente([v for _, v in sorted(features.items())]))
    else:  # There are no inputs, create a zero state.
      total_size = tfgnn.keras.layers.TotalSize()(node_set)
      return tf.zeros([total_size, state_dim])
  graph = tfgnn.keras.layers.MapFeatures(node_sets_fn=node_sets_fn)(graph)
  ```

  ```
  # Doubles all feature values, with one callback used for all graph pieces.
  def fn(inputs, **unused_kwargs):
    return {k: tf.add(v, v) for k, v in inputs.features.items()}
  graph = tfgnn.keras.layers.MapFeatures(
      context_fn=fn, node_sets_fn=fn, edge_sets_fn=fn)(graph)
  ```

  When this layer is called on a GraphTensor, it transforms the feature map
  of each graph piece with the model built by the respective callbacks.
  The very first call to this layer triggers building the models. Subsequent
  calls to this layer do not use the callbacks again, but check that their
  input does not have more graph pieces or features than seen by the callbacks:
    * It is an error to call with a node set or edge set that was not present
      in the first call. (After the first call, it is too late to initialize
      another model for it and find out what the callback would have done.)
    * It is an error to call with a set of feature names of some graph piece
      that has changed since the first call, except for those graph pieces for
      which the callback was `None` or returned `None` to request passthrough.
      (Without this check, the model for the graph piece would silently drop
      new features, even though the callback might have handled them.)

  More details on the callbacks:

  The model-building callbacks are passed as arguments when initializing this
  layer (see "Init args" below). Each callback is invoked as
  `fn(graph_piece, **kwargs)` where
    * `graph_piece` is a KerasTensor for the EdgeSet, NodeSet or Context
      that is being transformed. It provides access to the input features.
    * the keyword argument (if any) is
        * `edge_set_name=...` when transforming the features of that EdgeSet,
        * `node_set_name=...` when transforming the features of that NodeSet,
        * absent when transforming the features of the Context.

  The output of the callbacks can take one of the following forms:
    * A returned dict of feature values is used as the new feature map of
      the respective graph piece in this layer's output. Returning the
      empty dict `{}` is allowed and results in an empty feature map.
    * A returned feature `value` not wrapped in a dict is a shorthand for
      `{tfgnn.DEFAULT_STATE_NAME: value}`, to simplify the set-up of initial
      states.
    * Returning `None` as the callback's result indicates to leave this graph
      piece alone and not even validate that subsequent inputs have the same
      features.

  The output values are required to
    * have the correct shape for a feature on the respective piece of the
      GraphTensor;
    * depend on the input, so that the Keras functional API can use them
      as Model outputs.
  This happens naturally for outputs of transformed input features.
  Outputs created from scratch still need to depend on the input for its size.
  In case of scalar GraphTensors, users are recommended to call
  `tfgnn.keras.layers.TotalSize()(graph_piece)` and use the result as the
  leading dimension of outputs, as seen in the example code snippet above.
  (For constant shapes on TPUs, see the documentation of TotalSize.)

  Init args:
    context_fn: A callback to build a Keras model for transforming context
      features. It will be called as `output = context_fn(g.context)`.
      Leaving this at the default `None` is equivalent to returning `None`.
    node_sets_fn: A callback to build a Keras model for transforming node set
      features. It will be called for every node sets as
      `node_sets_fn(g.node_sets[node_set_name], node_set_name=node_set_name)`.
      Leaving this at the default `None` is equivalent to returning `None`
      for every node set.
    edge_sets_fn: A callback to build a Keras model for transforming edge set
      features. It will be called for every edge sets as
      `edge_sets_fn(g.edge_sets[edge_set_name], edge_set_name=edge_set_name)`.
      Leaving this at the default `None` is equivalent to returning `None`
      for every edge set.

  Call args:
    graph: A GraphTensor. The very first call triggers the building of
      the models that map the various feature maps, with tensor specs
      taken from the GraphTensorSpec of the first input.

  Call returns:
    A GraphTensor with the same nodes and edges as the input, but with
    transformed feature maps.
  """

  def __init__(self,
               context_fn=None,
               node_sets_fn=None,
               edge_sets_fn=None,
               **kwargs):
    from_config = kwargs.pop("_from_config", False)
    if from_config:
      context_model = kwargs.pop("context_model")
      node_set_models = kwargs.pop("node_set_models")
      edge_set_models = kwargs.pop("edge_set_models")
    super().__init__(**kwargs)

    if not from_config:
      # Usually, an object of this class is partially initialized by remembering
      # the user-supplied model builder functions that are called later to
      # initialize the actual mapper models, once the GraphTensorSpec is known.
      self._context_fn = context_fn
      self._node_sets_fn = node_sets_fn
      self._edge_sets_fn = edge_sets_fn
      self._context_model = None
      self._node_set_models = None
      self._edge_set_models = None
      self._is_initialized = False
    else:
      # In the special case of restoring a saved model from a config,
      # the mapper models are restored directly.
      self._context_fn = None
      self._node_sets_fn = None
      self._edge_sets_fn = None
      self._context_model = context_model
      self._node_set_models = node_set_models
      self._edge_set_models = edge_set_models
      self._is_initialized = True

  def get_config(self):
    if not self._is_initialized:
      raise ValueError("Cannot get a config for saving a MapFeatures layer "
                       "before it has been built (during the first call).")
    return dict(
        context_model=self._context_model,
        # Sublayers need to be top-level objects in the config (b/209560043).
        **du.with_key_prefix(self._node_set_models, "node_set_models/"),
        **du.with_key_prefix(self._edge_set_models, "edge_set_models/"),
        **super().get_config())

  @classmethod
  def from_config(cls, config):
    config["node_set_models"] = du.pop_by_prefix(config, "node_set_models/")
    config["edge_set_models"] = du.pop_by_prefix(config, "edge_set_models/")
    return cls(**config, _from_config=True)

  def _init_from_spec(self, spec: gt.GraphTensorSpec):
    self._context_model = _make_model_or_none(
        self._context_fn, spec.context_spec)

    # All node sets seen at initialization time. Value `None` means ignore.
    self._node_set_models = {}
    for node_set_name, node_set_spec in spec.node_sets_spec.items():
      self._node_set_models[node_set_name] = _make_model_or_none(
          self._node_sets_fn, node_set_spec, node_set_name=node_set_name)

    # All edge sets seen at initialization time. Value `None` means ignore.
    self._edge_set_models = {}
    for edge_set_name, edge_set_spec in spec.edge_sets_spec.items():
      self._edge_set_models[edge_set_name] = _make_model_or_none(
          self._edge_sets_fn, edge_set_spec, edge_set_name=edge_set_name)

    self._is_initialized = True

  def call(self, graph: gt.GraphTensor) -> gt.GraphTensor:
    if not self._is_initialized:
      with tf.init_scope():
        self._init_from_spec(graph.spec)
        self._context_fn = self._node_sets_fn = self._edge_sets_fn = None
    assert self._is_initialized

    context_features = None
    if self._context_model is not None:
      context_features = _call_model(self._context_model, graph.context,
                                     logging_name="context")

    node_set_features = {}
    for node_set_name, node_set in graph.node_sets.items():
      try:
        model = self._node_set_models[node_set_name]
      except KeyError as e:
        raise KeyError(f"Unexpected node set '{node_set_name}' "
                       "not seen in first call") from e
      if model is None: continue  # Initialized to be ignored.
      node_set_features[node_set_name] = _call_model(
          model, node_set, logging_name=f"node_set '{node_set_name}'")

    edge_set_features = {}
    for edge_set_name, edge_set in graph.edge_sets.items():
      try:
        model = self._edge_set_models[edge_set_name]
      except KeyError as e:
        raise KeyError(f"Unexpected edge set '{edge_set_name}' "
                       "not seen in first call") from e
      if model is None: continue  # Initialized to be ignored.
      edge_set_features[edge_set_name] = _call_model(
          model, edge_set, logging_name=f"edge_set '{edge_set_name}'")

    result = graph.replace_features(context=context_features,
                                    node_sets=node_set_features,
                                    edge_sets=edge_set_features)
    return result


def _make_model_or_none(model_fn, graph_piece_spec, **kwargs):
  """Returns a Model to map this graph piece, or None to leave it alone."""
  if model_fn is None:
    return None  # This graph piece is to be left alone.

  graph_piece_input = tf.keras.layers.Input(type_spec=graph_piece_spec)
  raw_outputs = model_fn(graph_piece_input, **kwargs)
  if raw_outputs is None:
    return None  # As if model_fn were None to begin with.
  if isinstance(raw_outputs, Mapping):
    outputs = dict(raw_outputs)
  else:
    outputs = {const.DEFAULT_STATE_NAME: raw_outputs}

  non_keras_outputs = {k: v for k, v in outputs.items()
                       if not tf.keras.backend.is_keras_tensor(v)}
  if non_keras_outputs:
    raise ValueError(
        "MapFeatures(...=fn) requires the callback fn to return KerasTensors "
        "that depend on the input to fn. For values created from scratch, "
        "use tfgnn.keras.layers.TotalSize()(...) to get the (possibly static) "
        "output size with a proper dependency on the input.\n"
        f"The callback for {kwargs or 'context'} "
        f"returned the following non-KerasTensor outputs: {non_keras_outputs}")

  return tf.keras.Model(graph_piece_input, outputs)


def _call_model(model, graph_piece, *, logging_name):
  """Returns results of model, after checking the unchanged set of features."""
  actual_features = set(graph_piece.features.keys())
  expected_features = set(model.input.features.keys())
  if expected_features != actual_features:
    raise ValueError(
        f"The feature set of {logging_name} has changed since this layer "
        f"was built. Expected {sorted(expected_features)}, "
        f"got {sorted(actual_features)}.")

  return model(graph_piece)


@tf.keras.utils.register_keras_serializable(package="GNN")
class TotalSize(tf.keras.layers.Layer):
  """Returns the .total_size of a graph piece.

  This layer returns the total size of an input EdgeSet, NodeSet or Context
  as a scalar tensor (akin to `input.total_size`), with a dependency on the
  input tensor as required by the Keras functional API. This layer can be used
  to generate new feature values for a scalar GraphTensor inside a callback
  passed to MapFeatures.

  Init args:
    constant_from_spec: Setting this to true guarantees that the output is a
      constant Tensor (suitable for environments in which constant shapes are
      required, like models distributed to TPU). Setting this requires that
      `input.spec.total_size is not None`. If unset, the output Tensor may or
      may not be constant.
  """

  def __init__(self, *, constant_from_spec: bool = False, **kwargs):
    super().__init__(**kwargs)
    self._constant_from_spec = constant_from_spec

  def get_config(self):
    return dict(
        constant_from_spec=self._constant_from_spec,
        **super().get_config())

  def call(self, graph_piece):
    if not self._constant_from_spec:
      return graph_piece.total_size

    total_size = graph_piece.spec.total_size
    if total_size is None:
      raise ValueError("TotalSize(constant_from_spec=True)(x) "
                       "requires x.spec.total_size != None")
    return tf.constant(total_size, dtype=graph_piece.spec.indices_dtype)
