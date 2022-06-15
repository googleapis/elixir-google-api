# Copyright 2019 Google LLC
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

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Run.V2.Model.GoogleCloudRunV2Task do
  @moduledoc """
  Task represents a single run of a container to completion.

  ## Attributes

  *   `annotations` (*type:* `map()`, *default:* `nil`) - KRM-style annotations for the resource.
  *   `completionTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Represents time when the Task was completed. It is not guaranteed to be set in happens-before order across separate operations.
  *   `conditions` (*type:* `list(GoogleApi.Run.V2.Model.GoogleCloudRunV2Condition.t)`, *default:* `nil`) - Output only. The Condition of this Task, containing its readiness status, and detailed error information in case it did not reach the desired state.
  *   `containers` (*type:* `list(GoogleApi.Run.V2.Model.GoogleCloudRunV2Container.t)`, *default:* `nil`) - Holds the single container that defines the unit of execution for this task.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Represents time when the task was created by the job controller. It is not guaranteed to be set in happens-before order across separate operations.
  *   `deleteTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. For a deleted resource, the deletion time. It is only populated as a response to a Delete request.
  *   `encryptionKey` (*type:* `String.t`, *default:* `nil`) - Output only. A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Output only. A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.
  *   `execution` (*type:* `String.t`, *default:* `nil`) - Output only. The name of the parent Execution.
  *   `executionEnvironment` (*type:* `String.t`, *default:* `nil`) - The execution environment being used to host this Task.
  *   `expireTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. For a deleted resource, the time after which it will be permamently deleted. It is only populated as a response to a Delete request.
  *   `generation` (*type:* `String.t`, *default:* `nil`) - Output only. A number that monotonically increases every time the user modifies the desired state.
  *   `index` (*type:* `integer()`, *default:* `nil`) - Output only. Index of the Task, unique per execution, and beginning at 0.
  *   `job` (*type:* `String.t`, *default:* `nil`) - Output only. The name of the parent Job.
  *   `labels` (*type:* `map()`, *default:* `nil`) - KRM-style labels for the resource. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels Cloud Run will populate some labels with 'run.googleapis.com' or 'serving.knative.dev' namespaces. Those labels are read-only, and user changes will not be preserved.
  *   `lastAttemptResult` (*type:* `GoogleApi.Run.V2.Model.GoogleCloudRunV2TaskAttemptResult.t`, *default:* `nil`) - Output only. Result of the last attempt of this Task.
  *   `launchStage` (*type:* `String.t`, *default:* `nil`) - Set the launch stage to a preview stage on write to allow use of preview features in that stage. On read, describes whether the resource uses preview features. Launch Stages are defined at [Google Cloud Platform Launch Stages](https://cloud.google.com/terms/launch-stages).
  *   `maxRetries` (*type:* `integer()`, *default:* `nil`) - Number of retries allowed per Task, before marking this Task failed.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The unique name of this Task.
  *   `observedGeneration` (*type:* `String.t`, *default:* `nil`) - Output only. The generation of this Task. See comments in `Job.reconciling` for additional information on reconciliation process in Cloud Run.
  *   `reconciling` (*type:* `boolean()`, *default:* `nil`) - Output only. Indicates whether the resource's reconciliation is still in progress. See comments in `Job.reconciling` for additional information on reconciliation process in Cloud Run.
  *   `retried` (*type:* `integer()`, *default:* `nil`) - Output only. The number of times this Task was retried. Tasks are retried when they fail up to the maxRetries limit.
  *   `serviceAccount` (*type:* `String.t`, *default:* `nil`) - Email address of the IAM service account associated with the Task of a Job. The service account represents the identity of the running task, and determines what permissions the task has. If not provided, the task will use the project's default service account.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Represents time when the task started to run. It is not guaranteed to be set in happens-before order across separate operations.
  *   `timeout` (*type:* `String.t`, *default:* `nil`) - Max allowed time duration the Task may be active before the system will actively try to mark it failed and kill associated containers. This applies per attempt of a task, meaning each retry can run for the full timeout.
  *   `uid` (*type:* `String.t`, *default:* `nil`) - Output only. Server assigned unique identifier for the Task. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The last-modified time.
  *   `volumes` (*type:* `list(GoogleApi.Run.V2.Model.GoogleCloudRunV2Volume.t)`, *default:* `nil`) - A list of Volumes to make available to containers.
  *   `vpcAccess` (*type:* `GoogleApi.Run.V2.Model.GoogleCloudRunV2VpcAccess.t`, *default:* `nil`) - Output only. VPC Access configuration to use for this Task. For more information, visit https://cloud.google.com/run/docs/configuring/connecting-vpc.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :annotations => map() | nil,
          :completionTime => DateTime.t() | nil,
          :conditions => list(GoogleApi.Run.V2.Model.GoogleCloudRunV2Condition.t()) | nil,
          :containers => list(GoogleApi.Run.V2.Model.GoogleCloudRunV2Container.t()) | nil,
          :createTime => DateTime.t() | nil,
          :deleteTime => DateTime.t() | nil,
          :encryptionKey => String.t() | nil,
          :etag => String.t() | nil,
          :execution => String.t() | nil,
          :executionEnvironment => String.t() | nil,
          :expireTime => DateTime.t() | nil,
          :generation => String.t() | nil,
          :index => integer() | nil,
          :job => String.t() | nil,
          :labels => map() | nil,
          :lastAttemptResult =>
            GoogleApi.Run.V2.Model.GoogleCloudRunV2TaskAttemptResult.t() | nil,
          :launchStage => String.t() | nil,
          :maxRetries => integer() | nil,
          :name => String.t() | nil,
          :observedGeneration => String.t() | nil,
          :reconciling => boolean() | nil,
          :retried => integer() | nil,
          :serviceAccount => String.t() | nil,
          :startTime => DateTime.t() | nil,
          :timeout => String.t() | nil,
          :uid => String.t() | nil,
          :updateTime => DateTime.t() | nil,
          :volumes => list(GoogleApi.Run.V2.Model.GoogleCloudRunV2Volume.t()) | nil,
          :vpcAccess => GoogleApi.Run.V2.Model.GoogleCloudRunV2VpcAccess.t() | nil
        }

  field(:annotations, type: :map)
  field(:completionTime, as: DateTime)
  field(:conditions, as: GoogleApi.Run.V2.Model.GoogleCloudRunV2Condition, type: :list)
  field(:containers, as: GoogleApi.Run.V2.Model.GoogleCloudRunV2Container, type: :list)
  field(:createTime, as: DateTime)
  field(:deleteTime, as: DateTime)
  field(:encryptionKey)
  field(:etag)
  field(:execution)
  field(:executionEnvironment)
  field(:expireTime, as: DateTime)
  field(:generation)
  field(:index)
  field(:job)
  field(:labels, type: :map)
  field(:lastAttemptResult, as: GoogleApi.Run.V2.Model.GoogleCloudRunV2TaskAttemptResult)
  field(:launchStage)
  field(:maxRetries)
  field(:name)
  field(:observedGeneration)
  field(:reconciling)
  field(:retried)
  field(:serviceAccount)
  field(:startTime, as: DateTime)
  field(:timeout)
  field(:uid)
  field(:updateTime, as: DateTime)
  field(:volumes, as: GoogleApi.Run.V2.Model.GoogleCloudRunV2Volume, type: :list)
  field(:vpcAccess, as: GoogleApi.Run.V2.Model.GoogleCloudRunV2VpcAccess)
end

defimpl Poison.Decoder, for: GoogleApi.Run.V2.Model.GoogleCloudRunV2Task do
  def decode(value, options) do
    GoogleApi.Run.V2.Model.GoogleCloudRunV2Task.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Run.V2.Model.GoogleCloudRunV2Task do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
