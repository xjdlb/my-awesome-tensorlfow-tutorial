# coding=utf-8
# Copyright 2022 The TensorFlow Datasets Authors.
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

"""Corrupted ImageNet2012 dataset.

Apply common corruptions to the images in ImageNet2012 dataset.
"""
from absl import logging
import numpy as np
import tensorflow as tf
from tensorflow_datasets.image_classification import corruptions
from tensorflow_datasets.image_classification.imagenet import Imagenet2012
import tensorflow_datasets.public_api as tfds

_DESCRIPTION = """\
Imagenet2012Corrupted is a dataset generated by adding common corruptions to the
images in the ImageNet dataset. In the original paper, there are 15 + 4
different corruptions, and each has 5 levels of severity. We also implement the 4 extra
corruptions gaussian blur, saturate, spatter, and speckle noise. The randomness
is fixed so that regeneration is deterministic.
"""

_CITATION = """\
@inproceedings{
  hendrycks2018benchmarking,
  title={Benchmarking Neural Network Robustness to Common Corruptions and Perturbations},
  author={Dan Hendrycks and Thomas Dietterich},
  booktitle={International Conference on Learning Representations},
  year={2019},
  url={https://openreview.net/forum?id=HJz6tiCqYm},
}
"""

_LABELS_FNAME = 'image_classification/imagenet2012_labels.txt'

# This file contains the validation labels, in the alphabetic order of
# corresponding image names (and not in the order they have been added to the
# tar file).
_VALIDATION_LABELS_FNAME = 'image_classification/imagenet2012_validation_labels.txt'

_FROST_FILEBASE = 'https://raw.githubusercontent.com/hendrycks/robustness/master/ImageNet-C/imagenet_c/imagenet_c/frost/'
_FROST_FILENAMES = [
    _FROST_FILEBASE + f for f in [
        'frost1.png', 'frost2.png', 'frost3.png', 'frost4.jpg', 'frost5.jpg',
        'frost6.jpg'
    ]
]

BENCHMARK_CORRUPTIONS = [
    'gaussian_noise',
    'shot_noise',
    'impulse_noise',
    'defocus_blur',
    'glass_blur',
    'motion_blur',
    'zoom_blur',
    'snow',
    'frost',
    'fog',
    'brightness',
    'contrast',
    'elastic_transform',
    'pixelate',
    'jpeg_compression',
]

EXTRA_CORRUPTIONS = ['gaussian_blur', 'saturate', 'spatter', 'speckle_noise']

_IMAGE_SIZE = 224
_CROP_PADDING = 32


class Imagenet2012CorruptedConfig(tfds.core.BuilderConfig):
  """BuilderConfig for Imagenet2012Corrupted."""

  def __init__(self, *, corruption_type=None, severity=1, **kwargs):
    """BuilderConfig for Imagenet2012Corrupted.

    Args:
      corruption_type: string, must be one of the items in BENCHMARK_CORRUPTIONS
        + EXTRA_CORRUPTIONS.
      severity: integer, bewteen 1 and 5.
      **kwargs: keyword arguments forwarded to super.
    """
    super(Imagenet2012CorruptedConfig, self).__init__(**kwargs)
    self.corruption_type = corruption_type
    self.severity = severity


_VERSION = tfds.core.Version('3.1.0')
_RELEASE_NOTES = {
    '0.0.1':
        'Initial dataset',
    '3.1.0':
        'Implement missing corruptions. Fix crop/resize ordering, file encoding',
}


def _make_builder_configs():
  """Construct a list of BuilderConfigs.

  Construct a list of 95 Imagenet2012CorruptedConfig objects, corresponding to
  the 15 + 4 corruption types, with each type having 5 severities.

  Returns:
    A list of 95 Imagenet2012CorruptedConfig objects.
  """
  config_list = []
  for each_corruption in BENCHMARK_CORRUPTIONS + EXTRA_CORRUPTIONS:
    for each_severity in range(1, 6):
      name_str = each_corruption + '_' + str(each_severity)
      description_str = 'corruption type = ' + each_corruption + ', severity = '
      description_str += str(each_severity)
      config_list.append(
          Imagenet2012CorruptedConfig(
              name=name_str,
              version=_VERSION,
              release_notes=_RELEASE_NOTES,
              description=description_str,
              corruption_type=each_corruption,
              severity=each_severity,
          ))
  return config_list


def _decode_and_center_crop(image_bytes):
  """Crops to center of image with padding then scales image size."""
  shape = tf.image.extract_jpeg_shape(image_bytes)
  image_height = shape[0]
  image_width = shape[1]

  padded_center_crop_size = tf.cast(
      ((_IMAGE_SIZE / (_IMAGE_SIZE + _CROP_PADDING)) *
       tf.cast(tf.minimum(image_height, image_width), tf.float32)), tf.int32)

  offset_height = ((image_height - padded_center_crop_size) + 1) // 2
  offset_width = ((image_width - padded_center_crop_size) + 1) // 2
  crop_window = tf.stack([
      offset_height, offset_width, padded_center_crop_size,
      padded_center_crop_size
  ])
  image = tf.image.decode_and_crop_jpeg(image_bytes, crop_window, channels=3)
  image = tf.image.resize([image], [_IMAGE_SIZE, _IMAGE_SIZE],
                          method=tf.image.ResizeMethod.BICUBIC)[0]
  image = tf.cast(image, tf.int32)

  return image


class Imagenet2012Corrupted(Imagenet2012):
  """Corrupted ImageNet2012 dataset."""
  BUILDER_CONFIGS = _make_builder_configs()

  def _info(self):
    """Basic information of the dataset.

    Returns:
      tfds.core.DatasetInfo.
    """
    names_file = tfds.core.tfds_path(_LABELS_FNAME)
    return tfds.core.DatasetInfo(
        builder=self,
        description=_DESCRIPTION,
        features=tfds.features.FeaturesDict({
            'image':
                tfds.features.Image(
                    shape=(_IMAGE_SIZE, _IMAGE_SIZE, 3),
                    encoding_format='jpeg'),
            'label':
                tfds.features.ClassLabel(names_file=names_file),
            'file_name':
                tfds.features.Text(),  # Eg: 'n15075141_54.JPEG'
        }),
        supervised_keys=('image', 'label'),
        homepage='https://openreview.net/forum?id=HJz6tiCqYm',
        citation=_CITATION,
    )

  def _split_generators(self, dl_manager):
    """Filter out training split as ImageNet-C is a testing benchmark."""
    splits = super(Imagenet2012Corrupted, self)._split_generators(dl_manager)

    corruptions.FROST_FILENAMES = dl_manager.download(_FROST_FILENAMES)
    return [s for s in splits if s.name != tfds.Split.TRAIN]

  def _generate_examples(self, archive, validation_labels=None):
    """Generate corrupted imagenet validation data.

    Apply corruptions to the raw images according to self.corruption_type.

    Args:
      archive: an iterator for the raw dataset.
      validation_labels: a dict that maps the file names to imagenet labels.

    Yields:
      dictionary with the file name, an image file objective, and label of each
      imagenet validation data.
    """
    # Get the current random seeds.
    numpy_st0 = np.random.get_state()
    # Set new random seeds.
    np.random.seed(135)
    logging.warning('Overwriting cv2 RNG seed.')
    tfds.core.lazy_imports.cv2.setRNGSeed(357)

    gen_fn = super(Imagenet2012Corrupted, self)._generate_examples
    for key, example in gen_fn(archive, validation_labels):
      with tf.Graph().as_default():
        tf_img = _decode_and_center_crop(example['image'].read())
        image_np = tfds.as_numpy(tf_img)
      example['image'] = self._get_corrupted_example(image_np)

      yield key, example
    # Reset the seeds back to their original values.
    np.random.set_state(numpy_st0)

  def _get_corrupted_example(self, x):
    """Return corrupted images.

    Args:
      x: numpy array, uncorrupted image.

    Returns:
      numpy array, corrupted images.
    """
    corruption_type = self.builder_config.corruption_type
    severity = self.builder_config.severity
    x = np.clip(x, 0, 255)

    return {
        'gaussian_noise': corruptions.gaussian_noise,
        'shot_noise': corruptions.shot_noise,
        'impulse_noise': corruptions.impulse_noise,
        'defocus_blur': corruptions.defocus_blur,
        'glass_blur': corruptions.glass_blur,
        'motion_blur': corruptions.motion_blur,
        'zoom_blur': corruptions.zoom_blur,
        'snow': corruptions.snow,
        'frost': corruptions.frost,
        'fog': corruptions.fog,
        'brightness': corruptions.brightness,
        'contrast': corruptions.contrast,
        'elastic_transform': corruptions.elastic_transform,
        'pixelate': corruptions.pixelate,
        'jpeg_compression': corruptions.jpeg_compression,
        'gaussian_blur': corruptions.gaussian_blur,
        'saturate': corruptions.saturate,
        'spatter': corruptions.spatter,
        'speckle_noise': corruptions.speckle_noise,
    }[corruption_type](x, severity)
