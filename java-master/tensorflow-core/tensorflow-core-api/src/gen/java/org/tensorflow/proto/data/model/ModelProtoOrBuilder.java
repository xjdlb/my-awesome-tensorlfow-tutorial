// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: tensorflow/core/framework/model.proto

package org.tensorflow.proto.data.model;

public interface ModelProtoOrBuilder extends
    // @@protoc_insertion_point(interface_extends:tensorflow.data.model.ModelProto)
    com.google.protobuf.MessageOrBuilder {

  /**
   * <pre>
   * Map of node IDs to nodes of this model.
   * </pre>
   *
   * <code>map&lt;int64, .tensorflow.data.model.ModelProto.Node&gt; nodes = 1;</code>
   */
  int getNodesCount();
  /**
   * <pre>
   * Map of node IDs to nodes of this model.
   * </pre>
   *
   * <code>map&lt;int64, .tensorflow.data.model.ModelProto.Node&gt; nodes = 1;</code>
   */
  boolean containsNodes(
      long key);
  /**
   * Use {@link #getNodesMap()} instead.
   */
  @java.lang.Deprecated
  java.util.Map<java.lang.Long, org.tensorflow.proto.data.model.ModelProto.Node>
  getNodes();
  /**
   * <pre>
   * Map of node IDs to nodes of this model.
   * </pre>
   *
   * <code>map&lt;int64, .tensorflow.data.model.ModelProto.Node&gt; nodes = 1;</code>
   */
  java.util.Map<java.lang.Long, org.tensorflow.proto.data.model.ModelProto.Node>
  getNodesMap();
  /**
   * <pre>
   * Map of node IDs to nodes of this model.
   * </pre>
   *
   * <code>map&lt;int64, .tensorflow.data.model.ModelProto.Node&gt; nodes = 1;</code>
   */

  org.tensorflow.proto.data.model.ModelProto.Node getNodesOrDefault(
      long key,
      org.tensorflow.proto.data.model.ModelProto.Node defaultValue);
  /**
   * <pre>
   * Map of node IDs to nodes of this model.
   * </pre>
   *
   * <code>map&lt;int64, .tensorflow.data.model.ModelProto.Node&gt; nodes = 1;</code>
   */

  org.tensorflow.proto.data.model.ModelProto.Node getNodesOrThrow(
      long key);

  /**
   * <pre>
   * ID of the output node of this model.
   * </pre>
   *
   * <code>int64 output = 2;</code>
   */
  long getOutput();

  /**
   * <pre>
   * Counter for node IDs of this model.
   * </pre>
   *
   * <code>int64 id_counter = 3;</code>
   */
  long getIdCounter();

  /**
   * <code>.tensorflow.data.model.ModelProto.OptimizationParams optimization_params = 5;</code>
   */
  boolean hasOptimizationParams();
  /**
   * <code>.tensorflow.data.model.ModelProto.OptimizationParams optimization_params = 5;</code>
   */
  org.tensorflow.proto.data.model.ModelProto.OptimizationParams getOptimizationParams();
  /**
   * <code>.tensorflow.data.model.ModelProto.OptimizationParams optimization_params = 5;</code>
   */
  org.tensorflow.proto.data.model.ModelProto.OptimizationParamsOrBuilder getOptimizationParamsOrBuilder();
}
