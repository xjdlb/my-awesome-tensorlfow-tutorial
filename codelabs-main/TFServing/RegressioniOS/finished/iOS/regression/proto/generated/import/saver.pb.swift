// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: tensorflow/core/protobuf/saver.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

/// Protocol buffer representing the configuration of a Saver.
public struct Tensorflow_SaverDef {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The name of the tensor in which to specify the filename when saving or
  /// restoring a model checkpoint.
  public var filenameTensorName: String = String()

  /// The operation to run when saving a model checkpoint.
  public var saveTensorName: String = String()

  /// The operation to run when restoring a model checkpoint.
  public var restoreOpName: String = String()

  /// Maximum number of checkpoints to keep.  If 0, no checkpoints are deleted.
  public var maxToKeep: Int32 = 0

  /// Shard the save files, one per device that has Variable nodes.
  public var sharded: Bool = false

  /// How often to keep an additional checkpoint. If not specified, only the last
  /// "max_to_keep" checkpoints are kept; if specified, in addition to keeping
  /// the last "max_to_keep" checkpoints, an additional checkpoint will be kept
  /// for every n hours of training.
  public var keepCheckpointEveryNHours: Float = 0

  public var version: Tensorflow_SaverDef.CheckpointFormatVersion = .legacy

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// A version number that identifies a different on-disk checkpoint format.
  /// Usually, each subclass of BaseSaverBuilder works with a particular
  /// version/format.  However, it is possible that the same builder may be
  /// upgraded to support a newer checkpoint format in the future.
  public enum CheckpointFormatVersion: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Internal legacy format.
    case legacy // = 0

    /// Deprecated format: tf.Saver() which works with tensorflow::table::Table.
    case v1 // = 1

    /// Current format: more efficient.
    case v2 // = 2
    case UNRECOGNIZED(Int)

    public init() {
      self = .legacy
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .legacy
      case 1: self = .v1
      case 2: self = .v2
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .legacy: return 0
      case .v1: return 1
      case .v2: return 2
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}
}

#if swift(>=4.2)

extension Tensorflow_SaverDef.CheckpointFormatVersion: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Tensorflow_SaverDef.CheckpointFormatVersion] = [
    .legacy,
    .v1,
    .v2,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "tensorflow"

extension Tensorflow_SaverDef: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SaverDef"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "filename_tensor_name"),
    2: .standard(proto: "save_tensor_name"),
    3: .standard(proto: "restore_op_name"),
    4: .standard(proto: "max_to_keep"),
    5: .same(proto: "sharded"),
    6: .standard(proto: "keep_checkpoint_every_n_hours"),
    7: .same(proto: "version"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.filenameTensorName) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.saveTensorName) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.restoreOpName) }()
      case 4: try { try decoder.decodeSingularInt32Field(value: &self.maxToKeep) }()
      case 5: try { try decoder.decodeSingularBoolField(value: &self.sharded) }()
      case 6: try { try decoder.decodeSingularFloatField(value: &self.keepCheckpointEveryNHours) }()
      case 7: try { try decoder.decodeSingularEnumField(value: &self.version) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.filenameTensorName.isEmpty {
      try visitor.visitSingularStringField(value: self.filenameTensorName, fieldNumber: 1)
    }
    if !self.saveTensorName.isEmpty {
      try visitor.visitSingularStringField(value: self.saveTensorName, fieldNumber: 2)
    }
    if !self.restoreOpName.isEmpty {
      try visitor.visitSingularStringField(value: self.restoreOpName, fieldNumber: 3)
    }
    if self.maxToKeep != 0 {
      try visitor.visitSingularInt32Field(value: self.maxToKeep, fieldNumber: 4)
    }
    if self.sharded != false {
      try visitor.visitSingularBoolField(value: self.sharded, fieldNumber: 5)
    }
    if self.keepCheckpointEveryNHours != 0 {
      try visitor.visitSingularFloatField(value: self.keepCheckpointEveryNHours, fieldNumber: 6)
    }
    if self.version != .legacy {
      try visitor.visitSingularEnumField(value: self.version, fieldNumber: 7)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tensorflow_SaverDef, rhs: Tensorflow_SaverDef) -> Bool {
    if lhs.filenameTensorName != rhs.filenameTensorName {return false}
    if lhs.saveTensorName != rhs.saveTensorName {return false}
    if lhs.restoreOpName != rhs.restoreOpName {return false}
    if lhs.maxToKeep != rhs.maxToKeep {return false}
    if lhs.sharded != rhs.sharded {return false}
    if lhs.keepCheckpointEveryNHours != rhs.keepCheckpointEveryNHours {return false}
    if lhs.version != rhs.version {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Tensorflow_SaverDef.CheckpointFormatVersion: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "LEGACY"),
    1: .same(proto: "V1"),
    2: .same(proto: "V2"),
  ]
}
