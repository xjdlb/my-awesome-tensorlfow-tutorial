/*
 * Copyright 2020 The TensorFlow Runtime Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

// This file declares the translation functon to be used with mlir-translate for
// BEF to MLIR conversion.

#ifndef TFRT_BEF_CONVERTER_BEF_TO_MLIR_TRANSLATE_H_
#define TFRT_BEF_CONVERTER_BEF_TO_MLIR_TRANSLATE_H_

#include "tfrt/support/forward_decls.h"

namespace llvm {
class SourceMgr;
}

namespace mlir {
class MLIRContext;
class ModuleOp;
template <typename OpTy>
class OwningOpRef;
}  // namespace mlir

namespace tfrt {

mlir::OwningOpRef<mlir::ModuleOp> BEFToMLIRTranslate(
    llvm::SourceMgr &source_mgr, mlir::MLIRContext *context);

}  // namespace tfrt

#endif  // TFRT_BEF_CONVERTER_BEF_TO_MLIR_TRANSLATE_H_
