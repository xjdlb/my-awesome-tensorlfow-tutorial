# Copyright 2021 The TensorFlow Authors. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"); you may not
# use this file except in compliance with the License.  You may obtain a copy of
# the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the
# License for the specific language governing permissions and limitations under
# the License.
# ==============================================================================
"""Test Wavefront OBJ"""

import os
import numpy as np
import pytest

import tensorflow as tf
import tensorflow_io as tfio


def test_decode_obj():
    """Test case for decode obj"""
    filename = os.path.join(
        os.path.dirname(os.path.abspath(__file__)),
        "test_obj",
        "sample.obj",
    )
    filename = "file://" + filename

    obj = tfio.experimental.image.decode_obj(tf.io.read_file(filename))
    expected = np.array(
        [[-0.5, 0.0, 0.4], [-0.5, 0.0, -0.8], [-0.5, 1.0, -0.8], [-0.5, 1.0, 0.4]],
        dtype=np.float32,
    )
    assert np.array_equal(obj, expected)
