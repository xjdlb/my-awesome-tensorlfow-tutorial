"""Tests for GATv2."""

import enum
import os

from absl.testing import parameterized
import tensorflow as tf

from tensorflow_gnn.graph import adjacency as adj
from tensorflow_gnn.graph import graph_constants as const
from tensorflow_gnn.graph import graph_tensor as gt
from tensorflow_gnn.graph.keras.layers import gat_v2


class ReloadModel(int, enum.Enum):
  """Controls how to reload a model for further testing after saving."""
  SKIP = 0
  SAVED_MODEL = 1
  KERAS = 2


class GATv2Test(tf.test.TestCase, parameterized.TestCase):

  def testBasic(self):
    """Tests that a single-headed GAT is correct given predefined weights."""
    # NOTE: Many following tests use minor variations of the explicit
    # construction of weights and results introduced here.

    # Construct a graph with three nodes 0, 1, 2, and six edges:
    # a cycle 0->1->2->0 (let's call it clockwise)
    # and the reverse cycle 0->2->1->0 (counterclockwise).
    gt_input = _get_test_bidi_cycle_graph(tf.constant(
        # Node states have dimension 4.
        # The first three dimensions one-hot encode the node_id i.
        # The fourth dimension holds a distinct payload value i+1.
        [[1., 0., 0., 1.],
         [0., 1., 0., 2.],
         [0., 0., 1., 3.]]))

    conv = gat_v2.GATv2Convolution(
        num_heads=1,
        per_head_channels=4,
        receiver_tag=const.TARGET,
        attention_activation="relu")  # Let's keep it simple.

    _ = conv(gt_input, edge_set_name="edges")  # Build weights.
    weights = {v.name: v for v in conv.trainable_weights}
    self.assertLen(weights, 5)
    weights["gat_v2_convolution/query/kernel:0"].assign(
        # The space of attention computation of the single head has dimension 4.
        # The last dimension is used only in the key to carry the node's value,
        # multiplied by 11/10.
        # The first three dimensions are used to hand-construct attention scores
        # (see the running example below) that favor the counterclockwise
        # incoming edge over the other. Recall that weight matrices are
        # multiplied from the right onto batched inputs (in rows).
        #
        # For example, the query vector of node 0 is [0, 1, 0, 0], and ...
        [[0., 1., 0., 0.],
         [0., 0., 1., 0.],
         [1., 0., 0., 0.],
         [0., 0., 0., 0.]])
    weights["gat_v2_convolution/value_node/kernel:0"].assign(
        # ... the key vectors of node 1 and 2, resp., are [-1, 0, -1, 2.2]
        # and [-1, -1, 0, 3.3]. Therefore, ...
        [[0., -1., -1., 0.],
         [-1., 0., -1., 0.],
         [-1., -1., 0., 0.],
         [0., 0., 0., 1.1]])
    log10 = tf.math.log(10.).numpy()
    weights["gat_v2_convolution/attn_logits/kernel:0"].assign(
        # ... attention from node 0 to node 1 has a sum of key and query vector
        # [-1, 1, -1, 2.2], which gets turned by ReLU and the attention weights
        # below into a pre-softmax score of log(10). Likewise,
        # attention from node 0 to node 2 has a vector sum [-1, 0, 0, 3.3]
        # and pre-softmax score of 0. Altogether, this means: ...
        [[log10], [log10], [log10], [0.]])
    weights["gat_v2_convolution/query/bias:0"].assign([0., 0., 0., 0.])
    weights["gat_v2_convolution/value_node/bias:0"].assign([0., 0., 0., 0.])

    got = conv(gt_input, edge_set_name="edges")

    # ... The softmax-weighed key vectors on the incoming edges of node 0
    # are  10/11 * [-1, 0, -1, 2.2]  +  1/11 * [-1, -1, 0, 3.3].
    # The final ReLU takes out the non-positive components and leaves 2 + 0.3
    # in the last component of the first row in the resulting node states.
    want = tf.constant([[0., 0., 0., 2.3],  # Node 0.
                        [0., 0., 0., 3.1],  # Node 1.
                        [0., 0., 0., 1.2]])  # Node 2.
    self.assertAllEqual(got.shape, (3, 4))
    self.assertAllClose(got, want, atol=.0001)

    # For node states with more than one feature dimension, GATv2 works in
    # parallel on the vectors from the innermost dimension, so we can repeat the
    # previous computation and an alternative with different values in the last
    # component and reversed orientation:
    gt_input_2 = _get_test_bidi_cycle_graph(tf.constant(
        [[[1., 0., 0., 1.], [0., 0., 1., 3.]],
         [[0., 1., 0., 2.], [0., 1., 0., 6.]],
         [[0., 0., 1., 3.], [1., 0., 0., 9.]]]))
    got_2 = conv(gt_input_2, edge_set_name="edges")
    want_2 = tf.constant([[[0., 0., 0., 2.3], [0., 0., 0., 9.6]],
                          [[0., 0., 0., 3.1], [0., 0., 0., 3.9]],
                          [[0., 0., 0., 1.2], [0., 0., 0., 6.3]]])
    self.assertAllEqual(got_2.shape, (3, 2, 4))
    self.assertAllClose(got_2, want_2, atol=.0001)

  def testMultihead(self):
    """Extends testBasic with multiple attention heads."""
    # The same test graph as in the testBasic above.
    gt_input = _get_test_bidi_cycle_graph(tf.constant(
        [[1., 0., 0., 1.],
         [0., 1., 0., 2.],
         [0., 0., 1., 3.]]))

    conv = gat_v2.GATv2Convolution(
        num_heads=2,
        per_head_channels=4,
        receiver_tag=const.TARGET,
        attention_activation=tf.keras.layers.LeakyReLU(alpha=0.0),
        use_bias=False)  # Don't create /bias variables.

    _ = conv(gt_input, edge_set_name="edges")  # Build weights.
    weights = {v.name: v for v in conv.trainable_weights}
    self.assertLen(weights, 3)

    weights["gat_v2_convolution/query/kernel:0"].assign(
        # Attention head 0 uses the first four dimensions, which are used
        # in the same way as for the testBasic test above.
        # Attention head 1 uses the last four dimensions, in which we
        # now favor the clockwise incoming edges and omit the scaling by 11/10.
        [[0., 1., 0., 0., 0., 0., 1., 0,],
         [0., 0., 1., 0., 1., 0., 0., 0.],
         [1., 0., 0., 0., 0., 1., 0., 0.],
         [0., 0., 0., 0., 0., 0., 0., 0.]])
    weights["gat_v2_convolution/value_node/kernel:0"].assign(
        [[0., -1., -1., 0., 0., -1., -1., 0.],
         [-1., 0., -1., 0., -1., 0., -1., 0.],
         [-1., -1., 0., 0., -1., -1., 0., 0.],
         [0., 0., 0., 1.1, 0., 0., 0., 1.]])
    log10 = tf.math.log(10.).numpy()
    weights["gat_v2_convolution/attn_logits/kernel:0"].assign(
        # Attention head 0 works out to softmax weights 10/11 and 1/11 as above.
        # Attention head 1 creates very large pre-softmax scores that
        # work out to weights 1 and 0 within floating-point precision.
        [[log10, 100.],
         [log10, 100.],
         [log10, 100.],
         [0., 0.]])

    got = conv(gt_input, edge_set_name="edges")

    # Attention head 0 generates the first four output dimensions as in the
    # testBasic above, with weights 10/11 and 1/11,
    # Attention head 1 uses weights 0 and 1 (note the reversed preference).
    want = tf.constant([[0., 0., 0., 2.3, 0., 0., 0., 3.0],
                        [0., 0., 0., 3.1, 0., 0., 0., 1.0],
                        [0., 0., 0., 1.2, 0., 0., 0., 2.0]])
    self.assertAllEqual(got.shape, (3, 8))
    self.assertAllClose(got, want, atol=.0001)

  @parameterized.named_parameters(
      ("", ReloadModel.SKIP),
      ("Restored", ReloadModel.SAVED_MODEL),
      ("RestoredKeras", ReloadModel.KERAS))
  def testFullModel(self, reload_model):
    """Tests GATv2GraphUpdate in a full Model (incl. saving) with edge input."""
    # The same example as in the testBasic above, but with extra inputs
    # from edges.
    gt_input = _get_test_bidi_cycle_graph(
        # Node i has value i+1 in the last component, which will be mapped
        # into the fourth component of the value.
        tf.constant(
            [[1., 0., 0., 1.],  # Node 0.
             [0., 1., 0., 2.],  # Node 1.
             [0., 0., 1., 3.]]),  # Node 2.
        # Edges out of node i have value 2*(i+1) for the clockwise edges favored
        # by attention and 3*(i+1) for the counterclockwise edges not favored.
        tf.constant(
            [[3.],  # Edge from node 0 (clockwise, not favored).
             [6.],  # Edge from node 1 (clockwise, not favored).
             [9.],  # Edge from node 2 (clockwise, not favored).
             [2.],  # Edge from node 0 (counterclockwise, favored).
             [6.],  # Edge from node 2 (counterclockwise, favored).
             [4.]]))  # Edge from node 1 (counterclockwise, favored).

    layer = gat_v2.GATv2GraphUpdate(
        num_heads=1,
        per_head_channels=5,
        edge_set_name="edges",
        sender_edge_feature=const.DEFAULT_STATE_NAME,  # Activate edge input.
        attention_activation="relu")

    _ = layer(gt_input)  # Build weights.
    weights = {v.name: v for v in layer.trainable_weights}
    self.assertLen(weights, 6)
    weights[
        "gat_v2/node_set_update/gat_v2_convolution/value_edge/kernel:0"
    ].assign(
        # Edge values are put into a new final component of the value space,
        # with the same adjustment for softmax-weighting by 1/11 or 10/11.
        [[0., 0., 0., 0., 1.1]])
    weights["gat_v2/node_set_update/gat_v2_convolution/query/kernel:0"].assign(
        [[0., 1., 0., 0., 0.],
         [0., 0., 1., 0., 0.],
         [1., 0., 0., 0., 0.],
         [0., 0., 0., 0., 0.]])
    weights[
        "gat_v2/node_set_update/gat_v2_convolution/value_node/kernel:0"
    ].assign(
        [[0., -1., -1., 0., 0.],
         [-1., 0., -1., 0., 0.],
         [-1., -1., 0., 0., 0.],
         [0., 0., 0., 1.1, 0.]])
    log10 = tf.math.log(10.).numpy()
    weights[
        "gat_v2/node_set_update/gat_v2_convolution/attn_logits/kernel:0"
    ].assign(
        [[log10], [log10], [log10], [0.], [0.]])
    weights["gat_v2/node_set_update/gat_v2_convolution/query/bias:0"].assign(
        [0., 0., 0., 0., 0.])
    # NOTE: There is value_node/bias but no redundant value_edge/bias.
    weights[
        "gat_v2/node_set_update/gat_v2_convolution/value_node/bias:0"
    ].assign(
        [0., 0., 0., 0., 0.])

    # Build a Model around the Layer, possibly saved and restored.
    inputs = tf.keras.layers.Input(type_spec=gt_input.spec)
    outputs = layer(inputs)
    model = tf.keras.Model(inputs, outputs)
    if reload_model:
      export_dir = os.path.join(self.get_temp_dir(), "edge-input-model")
      model.save(export_dir, include_optimizer=False)
      if reload_model == ReloadModel.KERAS:
        model = tf.keras.models.load_model(export_dir)
      else:
        model = tf.saved_model.load(export_dir)

    got_gt = model(gt_input)
    got = got_gt.node_sets["nodes"][const.DEFAULT_STATE_NAME]

    # The fourth column with values x.y from nodes is analogous to the
    # testBasic test above, with the contribution x from the favored
    # input before the decimal dot and the other contribution y after.
    # The fifth column with values (2x).(3y) is from edges, with the
    # multipliers 2 and 3 used above in setting up the edge features.
    want = tf.constant([[0., 0., 0., 2.3, 4.9],
                        [0., 0., 0., 3.1, 6.3],
                        [0., 0., 0., 1.2, 2.6]])
    self.assertAllEqual(got.shape, (3, 5))
    self.assertAllClose(got, want, atol=.0001)

  def testConvolutionReceivers(self):
    """Tests convolution to context and equivalence to a special node set."""

    # An example graph with two components:
    # The first component has the example from testBasic split into a "sources"
    # node set with the first two nodes and a "targets" node set with the third
    # node and a context feature equal to the target node.
    # The second component repeats that construction, but with a variation in
    # the value of the target node / context.
    gt_input = gt.GraphTensor.from_pieces(
        node_sets={
            "sources": gt.NodeSet.from_fields(
                sizes=[2, 2],
                features={const.DEFAULT_STATE_NAME: tf.constant(
                    [[1., 0., 0., 1.],
                     [0., 1., 0., 2.]] * 2)}),  # Repeated for both components.
            "targets": gt.NodeSet.from_fields(
                sizes=[1, 1],
                features={const.DEFAULT_STATE_NAME: tf.constant(
                    [[0., 0., 1., 3.],
                     [1., 0., 0., 4.]])}),
        },
        context=gt.Context.from_fields(
            # Same as "targets".
            features={const.DEFAULT_STATE_NAME: tf.constant(
                [[0., 0., 1., 3.],
                 [1., 0., 0., 4.]])}),
        edge_sets={
            "edges": gt.EdgeSet.from_fields(
                sizes=[2, 2],
                # Same as membership of "sources" in components.
                adjacency=adj.Adjacency.from_indices(
                    ("sources", tf.constant([0, 1, 2, 3])),
                    ("targets", tf.constant([0, 0, 1, 1]))))
        })

    conv = gat_v2.GATv2Convolution(
        num_heads=1,
        per_head_channels=4,
        attention_activation="relu",
        use_bias=False)

    # Build weights, then initialize as in testBasic.
    _ = conv(gt_input, node_set_name="sources", receiver_tag=const.CONTEXT)
    weights = {v.name: v for v in conv.trainable_weights}
    self.assertLen(weights, 3)
    weights["gat_v2_convolution/query/kernel:0"].assign(
        [[0., 1., 0., 0.],
         [0., 0., 1., 0.],
         [1., 0., 0., 0.],
         [0., 0., 0., 0.]])
    weights["gat_v2_convolution/value_node/kernel:0"].assign(
        [[0., -1., -1., 0.],
         [-1., 0., -1., 0.],
         [-1., -1., 0., 0.],
         [0., 0., 0., 1.1]])
    log10 = tf.math.log(10.).numpy()
    weights["gat_v2_convolution/attn_logits/kernel:0"].assign(
        [[log10], [log10], [log10], [0.]])

    # The convolution object can be called interchangeably for convolving
    # "sources" to context, or along "edges" to "targets" with the same
    # features as context.
    got_context = conv(gt_input, node_set_name="sources",
                       receiver_tag=const.CONTEXT)
    got_targets = conv(gt_input, edge_set_name="edges",
                       receiver_tag=const.TARGET)
    want = tf.constant([[0., 0., 0., 1.2],  # As in testBasic for node 2.
                        [0., 0., 0., 2.1]])  # Opposite preference.
    self.assertAllClose(got_context, want, atol=.0001)
    self.assertAllClose(got_targets, want, atol=.0001)

    # The same object can even be used for convolving over the edge set in
    # reverse direction, that is, to "sources". The result is boring, though:
    # Every "source" gets the same value from the sole "target" of the component
    # (so softmax reduces to a no-op), which is scaled with 1.1 by the
    # bottom-right element of value_node/kernel.
    got_sources = conv(gt_input, edge_set_name="edges",
                       receiver_tag=const.SOURCE)
    want_sources = tf.constant([[0., 0., 0., 3.3],
                                [0., 0., 0., 3.3],
                                [0., 0., 0., 4.4],
                                [0., 0., 0., 4.4]])
    self.assertAllClose(got_sources, want_sources, atol=.0001)

  def testEdgePoolReceivers(self):
    """Tests GATv2EdgePool for pooling to nodes and to context."""
    # This example is similar to testConvolutionReceivers, except that
    # the sender features are now on the edges, not the source nodes.
    gt_input = gt.GraphTensor.from_pieces(
        edge_sets={
            "edges": gt.EdgeSet.from_fields(
                sizes=[2, 2],
                adjacency=adj.Adjacency.from_indices(
                    ("sources", tf.constant([0, 1, 2, 3])),
                    ("targets", tf.constant([0, 0, 1, 1]))),
                features={const.DEFAULT_STATE_NAME: tf.constant(
                    [[1., 0., 0., 1.],
                     [0., 1., 0., 2.]] * 2)}),  # Repeated for both components.
        },
        node_sets={
            "sources": gt.NodeSet.from_fields(
                sizes=[2, 2]),  # No features.
            "targets": gt.NodeSet.from_fields(
                sizes=[1, 1],
                features={const.DEFAULT_STATE_NAME: tf.constant(
                    [[0., 0., 1., 3.],
                     [1., 0., 0., 4.]])}),
        },
        context=gt.Context.from_fields(
            # Same as "targets".
            features={const.DEFAULT_STATE_NAME: tf.constant(
                [[0., 0., 1., 3.],
                 [1., 0., 0., 4.]])}))

    layer = gat_v2.GATv2EdgePool(
        num_heads=1,
        per_head_channels=4,
        attention_activation="relu")

    # Build weights, then initialize analogous to testConvolutionReceivers,
    # with "value_edge" instead of "value_node".
    _ = layer(gt_input, edge_set_name="edges", receiver_tag=const.CONTEXT)
    weights = {v.name: v for v in layer.trainable_weights}
    self.assertLen(weights, 5)
    weights["gat_v2_edge_pool/query/kernel:0"].assign(
        [[0., 1., 0., 0.],
         [0., 0., 1., 0.],
         [1., 0., 0., 0.],
         [0., 0., 0., 0.]])
    weights["gat_v2_edge_pool/value_edge/kernel:0"].assign(
        [[0., -1., -1., 0.],
         [-1., 0., -1., 0.],
         [-1., -1., 0., 0.],
         [0., 0., 0., 1.1]])
    log10 = tf.math.log(10.).numpy()
    weights["gat_v2_edge_pool/attn_logits/kernel:0"].assign(
        [[log10], [log10], [log10], [0.]])
    weights["gat_v2_edge_pool/query/bias:0"].assign([0., 0., 0., 0.])
    # NOTE: There is a value_edge/bias but not value_node/bias.
    weights["gat_v2_edge_pool/value_edge/bias:0"].assign([0., 0., 0., 0.])

    # The EdgePool object can be called interchangeably for attention-pooling
    # the "edges" to context or to each component's unique node in "targets".
    got_context = layer(gt_input, edge_set_name="edges",
                        receiver_tag=const.CONTEXT)
    got_targets = layer(gt_input, edge_set_name="edges",
                        receiver_tag=const.TARGET)
    want = tf.constant([[0., 0., 0., 1.2],
                        [0., 0., 0., 2.1]])
    self.assertAllClose(got_context, want, atol=.0001)
    self.assertAllClose(got_targets, want, atol=.0001)

  @parameterized.named_parameters(
      ("", ReloadModel.SKIP),
      ("Restored", ReloadModel.SAVED_MODEL),
      ("RestoredKeras", ReloadModel.KERAS))
  def testEdgeDropout(self, reload_model):
    """Tests dropout, esp. the switch between training and inference modes."""
    # Avoid flakiness.
    tf.random.set_seed(42)

    # This test graph has many source nodes feeding into one target node.
    # The node features are a one-hot encoding of node ids.
    num_sources = 32
    gt_input = gt.GraphTensor.from_pieces(
        node_sets={
            "sources": gt.NodeSet.from_fields(
                sizes=[num_sources],
                features={const.DEFAULT_STATE_NAME: tf.eye(num_sources)}),
            "target": gt.NodeSet.from_fields(
                sizes=[1],
                features={const.DEFAULT_STATE_NAME: tf.constant([[1.]])}),
        },
        edge_sets={
            "edges": gt.EdgeSet.from_fields(
                sizes=[num_sources],
                adjacency=adj.Adjacency.from_indices(
                    ("sources", tf.constant(list(range(num_sources)))),
                    ("target", tf.constant([0] * num_sources))))
        })

    # On purpose, this test is not for GATv2Convolution directly, but for its
    # common usage in a GraphUpdate, to make sure the training/inference mode
    # is propagated correctly.
    layer = gat_v2.GATv2GraphUpdate(
        num_heads=1,
        per_head_channels=num_sources,
        edge_set_name="edges",
        edge_dropout=1./3.,  # Note here.
        activation="linear",
        attention_activation="linear",
        use_bias=False)

    _ = layer(gt_input)  # Build weights.
    weights = {v.name: v for v in layer.trainable_weights}
    self.assertLen(weights, 3)
    # Set up equal attention to all inputs.
    weights["gat_v2/node_set_update/gat_v2_convolution/query/kernel:0"].assign(
        [[0.] * num_sources])
    weights[
        "gat_v2/node_set_update/gat_v2_convolution/attn_logits/kernel:0"
    ].assign([[0.]] * num_sources)
    # Values are one-hot node ids, scaled up to undo the softmax normalization.
    weights[
        "gat_v2/node_set_update/gat_v2_convolution/value_node/kernel:0"
    ].assign(num_sources * tf.eye(num_sources))

    # Build a Model around the Layer, possibly saved and restored.
    inputs = tf.keras.layers.Input(type_spec=gt_input.spec)
    outputs = layer(inputs)
    model = tf.keras.Model(inputs, outputs)
    if reload_model:
      export_dir = os.path.join(self.get_temp_dir(), "dropout-model")
      model.save(export_dir, include_optimizer=False)
      if reload_model == ReloadModel.KERAS:
        model = tf.keras.models.load_model(export_dir)
      else:
        model = tf.saved_model.load(export_dir)

    # The output is a one-hot encoding of the nodes that have been attended to.
    # For inference without dropout, it's an all-ones vector, so min = max = 1.
    # For training with dropout rate 1/3, there are some zeros (for dropped-out
    # edges) and some entries with value 3/2 (for kept edges, such that the
    # expected value remains at (1-1/3) * 3/2 == 1), so min = 0 and max = 1.5.
    def min_max(**kwargs):
      got_gt = model(gt_input, **kwargs)
      got = got_gt.node_sets["target"][const.DEFAULT_STATE_NAME]
      return [tf.reduce_min(got), tf.reduce_max(got)]
    self.assertAllEqual(min_max(), [1., 1.])  # Inference is the default.
    self.assertAllEqual(min_max(training=False), [1., 1.])
    self.assertAllClose(min_max(training=True), [0., 1.5])


def _get_test_bidi_cycle_graph(node_state, edge_state=None):
  return gt.GraphTensor.from_pieces(
      node_sets={
          "nodes": gt.NodeSet.from_fields(
              sizes=[3],
              features={const.DEFAULT_STATE_NAME: node_state}),
      },
      edge_sets={
          "edges": gt.EdgeSet.from_fields(
              sizes=[6],
              adjacency=adj.Adjacency.from_indices(
                  ("nodes", tf.constant([0, 1, 2, 0, 2, 1])),
                  ("nodes", tf.constant([1, 2, 0, 2, 1, 0]))),
              features=(None if edge_state is None else
                        {const.DEFAULT_STATE_NAME: edge_state})),
      })


if __name__ == "__main__":
  tf.test.main()
