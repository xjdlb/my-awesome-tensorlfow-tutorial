// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: tensorflow/core/protobuf/saved_object_graph.proto

package org.tensorflow.proto.framework;

public interface SavedBareConcreteFunctionOrBuilder extends
    // @@protoc_insertion_point(interface_extends:tensorflow.SavedBareConcreteFunction)
    com.google.protobuf.MessageOrBuilder {

  /**
   * <pre>
   * Identifies a SavedConcreteFunction.
   * </pre>
   *
   * <code>string concrete_function_name = 1;</code>
   */
  java.lang.String getConcreteFunctionName();
  /**
   * <pre>
   * Identifies a SavedConcreteFunction.
   * </pre>
   *
   * <code>string concrete_function_name = 1;</code>
   */
  com.google.protobuf.ByteString
      getConcreteFunctionNameBytes();

  /**
   * <pre>
   * A sequence of unique strings, one per Tensor argument.
   * </pre>
   *
   * <code>repeated string argument_keywords = 2;</code>
   */
  java.util.List<java.lang.String>
      getArgumentKeywordsList();
  /**
   * <pre>
   * A sequence of unique strings, one per Tensor argument.
   * </pre>
   *
   * <code>repeated string argument_keywords = 2;</code>
   */
  int getArgumentKeywordsCount();
  /**
   * <pre>
   * A sequence of unique strings, one per Tensor argument.
   * </pre>
   *
   * <code>repeated string argument_keywords = 2;</code>
   */
  java.lang.String getArgumentKeywords(int index);
  /**
   * <pre>
   * A sequence of unique strings, one per Tensor argument.
   * </pre>
   *
   * <code>repeated string argument_keywords = 2;</code>
   */
  com.google.protobuf.ByteString
      getArgumentKeywordsBytes(int index);

  /**
   * <pre>
   * The prefix of `argument_keywords` which may be identified by position.
   * </pre>
   *
   * <code>int64 allowed_positional_arguments = 3;</code>
   */
  long getAllowedPositionalArguments();

  /**
   * <pre>
   * The spec of the function that this ConcreteFunction is traced from. This
   * allows the ConcreteFunction to be called with nest structure inputs. This
   * field may not be populated. If this field is absent, the concrete function
   * can only be called with flat inputs.
   * TODO(b/169361281): support calling saved ConcreteFunction with structured
   * inputs in C++ SavedModel API.
   * </pre>
   *
   * <code>.tensorflow.FunctionSpec function_spec = 4;</code>
   */
  boolean hasFunctionSpec();
  /**
   * <pre>
   * The spec of the function that this ConcreteFunction is traced from. This
   * allows the ConcreteFunction to be called with nest structure inputs. This
   * field may not be populated. If this field is absent, the concrete function
   * can only be called with flat inputs.
   * TODO(b/169361281): support calling saved ConcreteFunction with structured
   * inputs in C++ SavedModel API.
   * </pre>
   *
   * <code>.tensorflow.FunctionSpec function_spec = 4;</code>
   */
  org.tensorflow.proto.framework.FunctionSpec getFunctionSpec();
  /**
   * <pre>
   * The spec of the function that this ConcreteFunction is traced from. This
   * allows the ConcreteFunction to be called with nest structure inputs. This
   * field may not be populated. If this field is absent, the concrete function
   * can only be called with flat inputs.
   * TODO(b/169361281): support calling saved ConcreteFunction with structured
   * inputs in C++ SavedModel API.
   * </pre>
   *
   * <code>.tensorflow.FunctionSpec function_spec = 4;</code>
   */
  org.tensorflow.proto.framework.FunctionSpecOrBuilder getFunctionSpecOrBuilder();
}
