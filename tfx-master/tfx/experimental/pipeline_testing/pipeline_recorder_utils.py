# Copyright 2020 Google LLC. All Rights Reserved.
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
"""Recording pipeline from MLMD metadata."""

import collections
import os
from typing import Iterable, List, Mapping, Optional, Tuple

from absl import logging
from tfx.dsl.compiler import constants as compiler_constants
from tfx.orchestration import metadata
from tfx.utils import io_utils

from ml_metadata.proto import metadata_store_pb2


def get_component_id_from_execution(
    metadata_connection: metadata.Metadata,
    execution: metadata_store_pb2.Execution) -> str:
  """Get component_id without pipeline_name from a node context of execution."""
  contexts = metadata_connection.store.get_contexts_by_execution(execution.id)

  node_context_type = metadata_connection.store.get_context_type(
      compiler_constants.NODE_CONTEXT_TYPE_NAME)
  node_contexts = [c for c in contexts if c.type_id == node_context_type.id]
  if len(node_contexts) != 1:
    raise ValueError(
        'Cannot find relevant context for execution:{}'.format(execution))
  node_context = node_contexts[0]
  if '.' not in node_context.name:
    raise ValueError(
        'Unexpected name of the node_context:{} for execution({})'.format(
            node_context, execution))
  return node_context.name.split('.', 1)[1]


def _get_paths(metadata_connection: metadata.Metadata,
               executions: List[metadata_store_pb2.Execution],
               output_dir: str) -> Iterable[Tuple[str, str]]:
  """Yields tuple with source and destination artifact uris.

  The destination artifact uris are located in the output_dir. The source
  artifact uris are retrieved using execution ids. Artifact index is used
  for saving multiple output artifacts with same key.

  Args:
    metadata_connection: Instance of metadata.Metadata for I/O to MLMD.
    executions: List of executions of a pipeline run.
    output_dir: Directory path where the pipeline outputs should be recorded.

  Yields:
    Iterable over tuples of source uri and destination uri.

  Raises:
    ValueError if artifact key and index are not recorded in MLMD event.
  """
  for execution in executions:
    component_id = get_component_id_from_execution(metadata_connection,
                                                   execution)
    if component_id.startswith('Resolver'):
      continue
    eid = [execution.id]
    events = metadata_connection.store.get_events_by_execution_ids(eid)
    output_events = [
        x for x in events if x.type == metadata_store_pb2.Event.OUTPUT
    ]
    for event in output_events:
      steps = event.path.steps
      if not steps or not steps[0].HasField('key'):
        raise ValueError('Artifact key is not recorded in the MLMD.')
      name = steps[0].key
      artifacts = metadata_connection.store.get_artifacts_by_id(
          [event.artifact_id])
      for artifact in artifacts:
        src_uri = artifact.uri
        if len(steps) < 2 or not steps[1].HasField('index'):
          raise ValueError('Artifact index is not recorded in the MLMD.')
        artifact_index = steps[1].index
        dest_uri = os.path.join(output_dir, component_id, name,
                                str(artifact_index))
        yield (src_uri, dest_uri)


def _get_execution_dict(
    metadata_connection: metadata.Metadata
) -> Mapping[str, List[metadata_store_pb2.Execution]]:
  """Returns a dictionary holding list of executions for all run_id in MLMD.

  Args:
    metadata_connection: Instance of metadata.Metadata for I/O to MLMD.

  Returns:
    A dictionary that holds list of executions for a run_id.
  """
  execution_dict = collections.defaultdict(list)
  for execution in metadata_connection.store.get_executions():
    execution_run_id = execution.properties['run_id'].string_value
    execution_dict[execution_run_id].append(execution)
  return execution_dict


def get_latest_executions(
    metadata_connection: metadata.Metadata,
    pipeline_name: str) -> List[metadata_store_pb2.Execution]:
  """Fetches executions associated with the latest context.

  Args:
    metadata_connection: Instance of metadata.Metadata for I/O to MLMD.
    pipeline_name: Name of the pipeline to rerieve the latest executions for.

  Returns:
    List of executions for the latest run of a pipeline with the given
    pipeline_name.
  """
  store = metadata_connection.store
  pipeline_context = store.get_context_by_type_and_name('pipeline',
                                                        pipeline_name)
  if pipeline_context is None:
    raise ValueError(f'Cannot find any execution for {pipeline_name}')

  # Sort all pipeline run contexts and find first pipeline run for the pipeline.
  pipeline_run_contexts = sorted(
      store.get_contexts_by_type('pipeline_run'),
      key=lambda c: c.last_update_time_since_epoch,
      reverse=True)

  executions_for_pipeline = store.get_executions_by_context(pipeline_context.id)
  execution_ids_for_pipeline = {e.id for e in executions_for_pipeline}
  for pipeline_run_context in pipeline_run_contexts:
    executions_for_pipelin_run = store.get_executions_by_context(
        pipeline_run_context.id)
    if executions_for_pipelin_run and executions_for_pipelin_run[
        0].id in execution_ids_for_pipeline:
      return executions_for_pipelin_run

  raise ValueError(f'Cannot find any execution for {pipeline_name}')


def record_pipeline(output_dir: str,
                    metadata_db_uri: Optional[str] = None,
                    host: Optional[str] = None,
                    port: Optional[int] = None,
                    pipeline_name: Optional[str] = None,
                    run_id: Optional[str] = None) -> None:
  """Record pipeline run with run_id to output_dir.

  For the beam pipeline, metadata_db_uri is required. For KFP pipeline,
  host and port should be specified. If run_id is not specified, then
  pipeline_name ought to be specified in order to fetch the latest execution
  for the specified pipeline.

  Args:
    output_dir: Directory path where the pipeline outputs should be recorded.
    metadata_db_uri: Uri to metadata db.
    host: Hostname of the metadata grpc server
    port: Port number of the metadata grpc server.
    pipeline_name: Pipeline name, which is required if run_id isn't specified.
    run_id: Pipeline execution run_id.

  Raises:
    ValueError: In cases of invalid arguments:
      - metadata_db_uri is None or host and/or port is None.
      - run_id is None and pipeline_name is None.
    FileNotFoundError: if the source artifact uri does not already exist.
  """
  if host is not None and port is not None:
    metadata_config = metadata_store_pb2.MetadataStoreClientConfig(
        host=host, port=port)
  elif metadata_db_uri is not None:
    metadata_config = metadata.sqlite_metadata_connection_config(
        metadata_db_uri)
  else:
    raise ValueError('For KFP, host and port are required. '
                     'For beam pipeline, metadata_db_uri is required.')

  with metadata.Metadata(metadata_config) as metadata_connection:
    if run_id is None:
      if pipeline_name is None:
        raise ValueError('If the run_id is not specified,'
                         ' pipeline_name should be specified')
      # fetch executions of the most recently updated execution context.
      executions = get_latest_executions(metadata_connection, pipeline_name)
    else:
      execution_dict = _get_execution_dict(metadata_connection)
      if run_id in execution_dict:
        executions = execution_dict[run_id]
      else:
        raise ValueError(
            'run_id {} is not recorded in the MLMD metadata'.format(run_id))

    for src_uri, dest_uri in _get_paths(metadata_connection, executions,
                                        output_dir):
      io_utils.copy_dir(src_uri, dest_uri)
    logging.info('Pipeline Recorded at %s', output_dir)
