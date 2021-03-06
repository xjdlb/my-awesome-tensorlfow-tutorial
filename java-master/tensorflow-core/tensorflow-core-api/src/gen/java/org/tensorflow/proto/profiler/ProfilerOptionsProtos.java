// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: tensorflow/core/profiler/profiler_options.proto

package org.tensorflow.proto.profiler;

public final class ProfilerOptionsProtos {
  private ProfilerOptionsProtos() {}
  public static void registerAllExtensions(
      com.google.protobuf.ExtensionRegistryLite registry) {
  }

  public static void registerAllExtensions(
      com.google.protobuf.ExtensionRegistry registry) {
    registerAllExtensions(
        (com.google.protobuf.ExtensionRegistryLite) registry);
  }
  static final com.google.protobuf.Descriptors.Descriptor
    internal_static_tensorflow_ProfileOptions_descriptor;
  static final 
    com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internal_static_tensorflow_ProfileOptions_fieldAccessorTable;
  static final com.google.protobuf.Descriptors.Descriptor
    internal_static_tensorflow_RemoteProfilerSessionManagerOptions_descriptor;
  static final 
    com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internal_static_tensorflow_RemoteProfilerSessionManagerOptions_fieldAccessorTable;

  public static com.google.protobuf.Descriptors.FileDescriptor
      getDescriptor() {
    return descriptor;
  }
  private static  com.google.protobuf.Descriptors.FileDescriptor
      descriptor;
  static {
    java.lang.String[] descriptorData = {
      "\n/tensorflow/core/profiler/profiler_opti" +
      "ons.proto\022\ntensorflow\"\203\003\n\016ProfileOptions" +
      "\022\017\n\007version\030\005 \001(\r\022:\n\013device_type\030\006 \001(\0162%" +
      ".tensorflow.ProfileOptions.DeviceType\022\033\n" +
      "\023include_dataset_ops\030\001 \001(\010\022\031\n\021host_trace" +
      "r_level\030\002 \001(\r\022\033\n\023device_tracer_level\030\003 \001" +
      "(\r\022\033\n\023python_tracer_level\030\004 \001(\r\022\030\n\020enabl" +
      "e_hlo_proto\030\007 \001(\010\022\032\n\022start_timestamp_ns\030" +
      "\010 \001(\004\022\023\n\013duration_ms\030\t \001(\004\022\027\n\017repository" +
      "_path\030\n \001(\t\"N\n\nDeviceType\022\017\n\013UNSPECIFIED" +
      "\020\000\022\007\n\003CPU\020\001\022\007\n\003GPU\020\002\022\007\n\003TPU\020\003\022\024\n\020PLUGGAB" +
      "LE_DEVICE\020\004\"\320\001\n#RemoteProfilerSessionMan" +
      "agerOptions\0224\n\020profiler_options\030\001 \001(\0132\032." +
      "tensorflow.ProfileOptions\022\031\n\021service_add" +
      "resses\030\002 \003(\t\022%\n\035session_creation_timesta" +
      "mp_ns\030\003 \001(\004\022\037\n\027max_session_duration_ms\030\004" +
      " \001(\004\022\020\n\010delay_ms\030\005 \001(\004B8\n\035org.tensorflow" +
      ".proto.profilerB\025ProfilerOptionsProtosP\001" +
      "b\006proto3"
    };
    descriptor = com.google.protobuf.Descriptors.FileDescriptor
      .internalBuildGeneratedFileFrom(descriptorData,
        new com.google.protobuf.Descriptors.FileDescriptor[] {
        });
    internal_static_tensorflow_ProfileOptions_descriptor =
      getDescriptor().getMessageTypes().get(0);
    internal_static_tensorflow_ProfileOptions_fieldAccessorTable = new
      com.google.protobuf.GeneratedMessageV3.FieldAccessorTable(
        internal_static_tensorflow_ProfileOptions_descriptor,
        new java.lang.String[] { "Version", "DeviceType", "IncludeDatasetOps", "HostTracerLevel", "DeviceTracerLevel", "PythonTracerLevel", "EnableHloProto", "StartTimestampNs", "DurationMs", "RepositoryPath", });
    internal_static_tensorflow_RemoteProfilerSessionManagerOptions_descriptor =
      getDescriptor().getMessageTypes().get(1);
    internal_static_tensorflow_RemoteProfilerSessionManagerOptions_fieldAccessorTable = new
      com.google.protobuf.GeneratedMessageV3.FieldAccessorTable(
        internal_static_tensorflow_RemoteProfilerSessionManagerOptions_descriptor,
        new java.lang.String[] { "ProfilerOptions", "ServiceAddresses", "SessionCreationTimestampNs", "MaxSessionDurationMs", "DelayMs", });
  }

  // @@protoc_insertion_point(outer_class_scope)
}
