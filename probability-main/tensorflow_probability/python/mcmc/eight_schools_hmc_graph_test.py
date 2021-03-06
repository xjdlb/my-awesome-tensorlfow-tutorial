# Copyright 2018 The TensorFlow Probability Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ============================================================================
import tensorflow.compat.v2 as tf
from tensorflow_probability.python.internal import test_util
from tensorflow_probability.python.mcmc.eight_schools_hmc import EightSchoolsHmcBenchmarkTestHarness


class GraphEightSchoolsHmcBenchmark(
    EightSchoolsHmcBenchmarkTestHarness, tf.test.Benchmark):
  pass


if __name__ == '__main__':
  test_util.main()
