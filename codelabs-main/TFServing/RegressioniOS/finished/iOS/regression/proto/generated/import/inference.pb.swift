// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: tensorflow_serving/apis/inference.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// This file contains messages for various machine learning inferences
// such as regression and classification.
//
// In many applications more than one type of inference is desired for a single
// input.  For example, given meteorologic data an application may want to
// perform a classification to determine if we should expect rain, snow or sun
// and also perform a regression to predict the temperature.
// Sharing the single input data between two inference tasks can be accomplished
// using MultiInferenceRequest and MultiInferenceResponse.

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

/// Inference request such as classification, regression, etc...
public struct Tensorflow_Serving_InferenceTask {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Model Specification. If version is not specified, will use the latest
  /// (numerical) version.
  /// All ModelSpecs in a MultiInferenceRequest must access the same model name.
  public var modelSpec: Tensorflow_Serving_ModelSpec {
    get {return _modelSpec ?? Tensorflow_Serving_ModelSpec()}
    set {_modelSpec = newValue}
  }
  /// Returns true if `modelSpec` has been explicitly set.
  public var hasModelSpec: Bool {return self._modelSpec != nil}
  /// Clears the value of `modelSpec`. Subsequent reads from it will return its default value.
  public mutating func clearModelSpec() {self._modelSpec = nil}

  /// Signature's method_name. Should be one of the method names defined in
  /// third_party/tensorflow/python/saved_model/signature_constants.py.
  /// e.g. "tensorflow/serving/classify".
  public var methodName: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _modelSpec: Tensorflow_Serving_ModelSpec? = nil
}

/// Inference result, matches the type of request or is an error.
public struct Tensorflow_Serving_InferenceResult {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var modelSpec: Tensorflow_Serving_ModelSpec {
    get {return _modelSpec ?? Tensorflow_Serving_ModelSpec()}
    set {_modelSpec = newValue}
  }
  /// Returns true if `modelSpec` has been explicitly set.
  public var hasModelSpec: Bool {return self._modelSpec != nil}
  /// Clears the value of `modelSpec`. Subsequent reads from it will return its default value.
  public mutating func clearModelSpec() {self._modelSpec = nil}

  public var result: Tensorflow_Serving_InferenceResult.OneOf_Result? = nil

  public var classificationResult: Tensorflow_Serving_ClassificationResult {
    get {
      if case .classificationResult(let v)? = result {return v}
      return Tensorflow_Serving_ClassificationResult()
    }
    set {result = .classificationResult(newValue)}
  }

  public var regressionResult: Tensorflow_Serving_RegressionResult {
    get {
      if case .regressionResult(let v)? = result {return v}
      return Tensorflow_Serving_RegressionResult()
    }
    set {result = .regressionResult(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_Result: Equatable {
    case classificationResult(Tensorflow_Serving_ClassificationResult)
    case regressionResult(Tensorflow_Serving_RegressionResult)

  #if !swift(>=4.1)
    public static func ==(lhs: Tensorflow_Serving_InferenceResult.OneOf_Result, rhs: Tensorflow_Serving_InferenceResult.OneOf_Result) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.classificationResult, .classificationResult): return {
        guard case .classificationResult(let l) = lhs, case .classificationResult(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.regressionResult, .regressionResult): return {
        guard case .regressionResult(let l) = lhs, case .regressionResult(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public init() {}

  fileprivate var _modelSpec: Tensorflow_Serving_ModelSpec? = nil
}

/// Inference request containing one or more requests.
public struct Tensorflow_Serving_MultiInferenceRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Inference tasks.
  public var tasks: [Tensorflow_Serving_InferenceTask] = []

  /// Input data.
  public var input: Tensorflow_Serving_Input {
    get {return _input ?? Tensorflow_Serving_Input()}
    set {_input = newValue}
  }
  /// Returns true if `input` has been explicitly set.
  public var hasInput: Bool {return self._input != nil}
  /// Clears the value of `input`. Subsequent reads from it will return its default value.
  public mutating func clearInput() {self._input = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _input: Tensorflow_Serving_Input? = nil
}

/// Inference request containing one or more responses.
public struct Tensorflow_Serving_MultiInferenceResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// List of results; one for each InferenceTask in the request, returned in the
  /// same order as the request.
  public var results: [Tensorflow_Serving_InferenceResult] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "tensorflow.serving"

extension Tensorflow_Serving_InferenceTask: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".InferenceTask"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "model_spec"),
    2: .standard(proto: "method_name"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._modelSpec) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.methodName) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._modelSpec {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    if !self.methodName.isEmpty {
      try visitor.visitSingularStringField(value: self.methodName, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tensorflow_Serving_InferenceTask, rhs: Tensorflow_Serving_InferenceTask) -> Bool {
    if lhs._modelSpec != rhs._modelSpec {return false}
    if lhs.methodName != rhs.methodName {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Tensorflow_Serving_InferenceResult: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".InferenceResult"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "model_spec"),
    2: .standard(proto: "classification_result"),
    3: .standard(proto: "regression_result"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._modelSpec) }()
      case 2: try {
        var v: Tensorflow_Serving_ClassificationResult?
        var hadOneofValue = false
        if let current = self.result {
          hadOneofValue = true
          if case .classificationResult(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.result = .classificationResult(v)
        }
      }()
      case 3: try {
        var v: Tensorflow_Serving_RegressionResult?
        var hadOneofValue = false
        if let current = self.result {
          hadOneofValue = true
          if case .regressionResult(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.result = .regressionResult(v)
        }
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._modelSpec {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    switch self.result {
    case .classificationResult?: try {
      guard case .classificationResult(let v)? = self.result else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case .regressionResult?: try {
      guard case .regressionResult(let v)? = self.result else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tensorflow_Serving_InferenceResult, rhs: Tensorflow_Serving_InferenceResult) -> Bool {
    if lhs._modelSpec != rhs._modelSpec {return false}
    if lhs.result != rhs.result {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Tensorflow_Serving_MultiInferenceRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MultiInferenceRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "tasks"),
    2: .same(proto: "input"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.tasks) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._input) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.tasks.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.tasks, fieldNumber: 1)
    }
    try { if let v = self._input {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tensorflow_Serving_MultiInferenceRequest, rhs: Tensorflow_Serving_MultiInferenceRequest) -> Bool {
    if lhs.tasks != rhs.tasks {return false}
    if lhs._input != rhs._input {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Tensorflow_Serving_MultiInferenceResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MultiInferenceResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "results"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.results) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.results.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.results, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tensorflow_Serving_MultiInferenceResponse, rhs: Tensorflow_Serving_MultiInferenceResponse) -> Bool {
    if lhs.results != rhs.results {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
