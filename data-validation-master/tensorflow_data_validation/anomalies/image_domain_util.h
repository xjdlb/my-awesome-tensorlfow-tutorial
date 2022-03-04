/* Copyright 2020 Google LLC

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    https://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
==============================================================================*/

#ifndef TENSORFLOW_DATA_VALIDATION_ANOMALIES_IMAGE_DOMAIN_UTIL_H_
#define TENSORFLOW_DATA_VALIDATION_ANOMALIES_IMAGE_DOMAIN_UTIL_H_

#include <vector>

#include "tensorflow_data_validation/anomalies/internal_types.h"
#include "tensorflow_data_validation/anomalies/statistics_view.h"
#include "tensorflow_metadata/proto/v0/schema.pb.h"

namespace tensorflow {
namespace data_validation {

// This updates image_domain. Should only be called if image_domain is set.
std::vector<Description> UpdateImageDomain(
    const FeatureStatsView& feature_stats,
    tensorflow::metadata::v0::Feature* feature);

}  // namespace data_validation
}  // namespace tensorflow

#endif  // TENSORFLOW_DATA_VALIDATION_ANOMALIES_IMAGE_DOMAIN_UTIL_H_
