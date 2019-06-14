# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Dataflow.V1b3.Model.Job do
  @moduledoc """
  Defines a job to be run by the Cloud Dataflow service.

  ## Attributes

  - clientRequestId (String.t): The client's unique identifier of the job, re-used across retried attempts.
  If this field is set, the service will ensure its uniqueness.
  The request to create a job will fail if the service has knowledge of a
  previously submitted job with the same client's ID and job name.
  The caller may use this field to ensure idempotence of job
  creation across retried attempts to create a job.
  By default, the field is empty and, in that case, the service ignores it. Defaults to `nil`.
  - createTime (DateTime.t): The timestamp when the job was initially created. Immutable and set by the
  Cloud Dataflow service. Defaults to `nil`.
  - createdFromSnapshotId (String.t): If this is specified, the job's initial state is populated from the given
  snapshot. Defaults to `nil`.
  - currentState (String.t): The current state of the job.

  Jobs are created in the `JOB_STATE_STOPPED` state unless otherwise
  specified.

  A job in the `JOB_STATE_RUNNING` state may asynchronously enter a
  terminal state. After a job has reached a terminal state, no
  further state updates may be made.

  This field may be mutated by the Cloud Dataflow service;
  callers cannot mutate it. Defaults to `nil`.
  - currentStateTime (DateTime.t): The timestamp associated with the current state. Defaults to `nil`.
  - environment (GoogleApi.Dataflow.V1b3.Model.Environment.t): The environment for the job. Defaults to `nil`.
  - executionInfo (GoogleApi.Dataflow.V1b3.Model.JobExecutionInfo.t): Deprecated. Defaults to `nil`.
  - id (String.t): The unique ID of this job.

  This field is set by the Cloud Dataflow service when the Job is
  created, and is immutable for the life of the job. Defaults to `nil`.
  - jobMetadata (GoogleApi.Dataflow.V1b3.Model.JobMetadata.t): This field is populated by the Dataflow service to support filtering jobs
  by the metadata values provided here. Populated for ListJobs and all GetJob
  views SUMMARY and higher. Defaults to `nil`.
  - labels (map()): User-defined labels for this job.

  The labels map can contain no more than 64 entries.  Entries of the labels
  map are UTF8 strings that comply with the following restrictions:

  * Keys must conform to regexp:  \p{Ll}\p{Lo}{0,62}
  * Values must conform to regexp:  [\p{Ll}\p{Lo}\p{N}_-]{0,63}
  * Both keys and values are additionally constrained to be <= 128 bytes in
  size. Defaults to `nil`.
  - location (String.t): The [regional endpoint]
  (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that
  contains this job. Defaults to `nil`.
  - name (String.t): The user-specified Cloud Dataflow job name.

  Only one Job with a given name may exist in a project at any
  given time. If a caller attempts to create a Job with the same
  name as an already-existing Job, the attempt returns the
  existing Job.

  The name must match the regular expression
  `[a-z]([-a-z0-9]{0,38}[a-z0-9])?` Defaults to `nil`.
  - pipelineDescription (GoogleApi.Dataflow.V1b3.Model.PipelineDescription.t): Preliminary field: The format of this data may change at any time.
  A description of the user pipeline and stages through which it is executed.
  Created by Cloud Dataflow service.  Only retrieved with
  JOB_VIEW_DESCRIPTION or JOB_VIEW_ALL. Defaults to `nil`.
  - projectId (String.t): The ID of the Cloud Platform project that the job belongs to. Defaults to `nil`.
  - replaceJobId (String.t): If this job is an update of an existing job, this field is the job ID
  of the job it replaced.

  When sending a `CreateJobRequest`, you can update a job by specifying it
  here. The job named here is stopped, and its intermediate state is
  transferred to this job. Defaults to `nil`.
  - replacedByJobId (String.t): If another job is an update of this job (and thus, this job is in
  `JOB_STATE_UPDATED`), this field contains the ID of that job. Defaults to `nil`.
  - requestedState (String.t): The job's requested state.

  `UpdateJob` may be used to switch between the `JOB_STATE_STOPPED` and
  `JOB_STATE_RUNNING` states, by setting requested_state.  `UpdateJob` may
  also be used to directly set a job's requested state to
  `JOB_STATE_CANCELLED` or `JOB_STATE_DONE`, irrevocably terminating the
  job if it has not already reached a terminal state. Defaults to `nil`.
  - stageStates (list(GoogleApi.Dataflow.V1b3.Model.ExecutionStageState.t)): This field may be mutated by the Cloud Dataflow service;
  callers cannot mutate it. Defaults to `nil`.
  - startTime (DateTime.t): The timestamp when the job was started (transitioned to JOB_STATE_PENDING).
  Flexible resource scheduling jobs are started with some delay after job
  creation, so start_time is unset before start and is updated when the
  job is started by the Cloud Dataflow service. For other jobs, start_time
  always equals to create_time and is immutable and set by the Cloud Dataflow
  service. Defaults to `nil`.
  - steps (list(GoogleApi.Dataflow.V1b3.Model.Step.t)): Exactly one of step or steps_location should be specified.

  The top-level steps that constitute the entire job. Defaults to `nil`.
  - stepsLocation (String.t): The GCS location where the steps are stored. Defaults to `nil`.
  - tempFiles (list(String.t)): A set of files the system should be aware of that are used
  for temporary storage. These temporary files will be
  removed on job completion.
  No duplicates are allowed.
  No file patterns are supported.

  The supported files are:

  Google Cloud Storage:

   storage.googleapis.com/{bucket}/{object}
   bucket.storage.googleapis.com/{object} Defaults to `nil`.
  - transformNameMapping (map()): The map of transform name prefixes of the job to be replaced to the
  corresponding name prefixes of the new job. Defaults to `nil`.
  - type (String.t): The type of Cloud Dataflow job. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clientRequestId => String.t(),
          :createTime => DateTime.t(),
          :createdFromSnapshotId => String.t(),
          :currentState => String.t(),
          :currentStateTime => DateTime.t(),
          :environment => GoogleApi.Dataflow.V1b3.Model.Environment.t(),
          :executionInfo => GoogleApi.Dataflow.V1b3.Model.JobExecutionInfo.t(),
          :id => String.t(),
          :jobMetadata => GoogleApi.Dataflow.V1b3.Model.JobMetadata.t(),
          :labels => map(),
          :location => String.t(),
          :name => String.t(),
          :pipelineDescription => GoogleApi.Dataflow.V1b3.Model.PipelineDescription.t(),
          :projectId => String.t(),
          :replaceJobId => String.t(),
          :replacedByJobId => String.t(),
          :requestedState => String.t(),
          :stageStates => list(GoogleApi.Dataflow.V1b3.Model.ExecutionStageState.t()),
          :startTime => DateTime.t(),
          :steps => list(GoogleApi.Dataflow.V1b3.Model.Step.t()),
          :stepsLocation => String.t(),
          :tempFiles => list(String.t()),
          :transformNameMapping => map(),
          :type => String.t()
        }

  field(:clientRequestId)
  field(:createTime, as: DateTime)
  field(:createdFromSnapshotId)
  field(:currentState)
  field(:currentStateTime, as: DateTime)
  field(:environment, as: GoogleApi.Dataflow.V1b3.Model.Environment)
  field(:executionInfo, as: GoogleApi.Dataflow.V1b3.Model.JobExecutionInfo)
  field(:id)
  field(:jobMetadata, as: GoogleApi.Dataflow.V1b3.Model.JobMetadata)
  field(:labels, type: :map)
  field(:location)
  field(:name)
  field(:pipelineDescription, as: GoogleApi.Dataflow.V1b3.Model.PipelineDescription)
  field(:projectId)
  field(:replaceJobId)
  field(:replacedByJobId)
  field(:requestedState)
  field(:stageStates, as: GoogleApi.Dataflow.V1b3.Model.ExecutionStageState, type: :list)
  field(:startTime, as: DateTime)
  field(:steps, as: GoogleApi.Dataflow.V1b3.Model.Step, type: :list)
  field(:stepsLocation)
  field(:tempFiles, type: :list)
  field(:transformNameMapping, type: :map)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.Job do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.Job.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.Job do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
