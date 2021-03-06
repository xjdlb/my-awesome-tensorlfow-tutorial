# =============================================================================
# Copyright 2018 The TensorFlow Authors. All Rights Reserved.
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
# =============================================================================
"""Tests for proto ops reading descriptors from other sources."""
# Python3 preparedness imports.
from tensorflow.python.kernel_tests.proto import descriptor_source_test_base as test_base
from tensorflow.python.ops import proto_ops
from tensorflow.python.platform import test


class DescriptorSourceTest(test_base.DescriptorSourceTestBase):

  def __init__(self, methodName='runTest'):  # pylint: disable=invalid-name
    super(DescriptorSourceTest, self).__init__(decode_module=proto_ops,
                                               encode_module=proto_ops,
                                               methodName=methodName)


if __name__ == '__main__':
  test.main()
