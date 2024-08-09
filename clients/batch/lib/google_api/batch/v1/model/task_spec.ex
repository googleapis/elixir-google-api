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

defmodule GoogleApi.Batch.V1.Model.TaskSpec do
  @moduledoc """
  Spec of a task

  ## Attributes

  *   `computeResource` (*type:* `GoogleApi.Batch.V1.Model.ComputeResource.t`, *default:* `nil`) - ComputeResource requirements.
  *   `environment` (*type:* `GoogleApi.Batch.V1.Model.Environment.t`, *default:* `nil`) - Environment variables to set before running the Task.
  *   `environments` (*type:* `map()`, *default:* `nil`) - Deprecated: please use environment(non-plural) instead.
  *   `lifecyclePolicies` (*type:* `list(GoogleApi.Batch.V1.Model.LifecyclePolicy.t)`, *default:* `nil`) - Lifecycle management schema when any task in a task group is failed. Currently we only support one lifecycle policy. When the lifecycle policy condition is met, the action in the policy will execute. If task execution result does not meet with the defined lifecycle policy, we consider it as the default policy. Default policy means if the exit code is 0, exit task. If task ends with non-zero exit code, retry the task with max_retry_count.
  *   `maxRetryCount` (*type:* `integer()`, *default:* `nil`) - Maximum number of retries on failures. The default, 0, which means never retry. The valid value range is [0, 10].
  *   `maxRunDuration` (*type:* `String.t`, *default:* `nil`) - Maximum duration the task should run before being automatically retried (if enabled) or automatically failed. Format the value of this field as a time limit in seconds followed by `s`—for example, `3600s` for 1 hour. The field accepts any value between 0 and the maximum listed for the `Duration` field type at https://protobuf.dev/reference/protobuf/google.protobuf/#duration; however, the actual maximum run time for a job will be limited to the maximum run time for a job listed at https://cloud.google.com/batch/quotas#max-job-duration.
  *   `runnables` (*type:* `list(GoogleApi.Batch.V1.Model.Runnable.t)`, *default:* `nil`) - Required. The sequence of one or more runnables (executable scripts, executable containers, and/or barriers) for each task in this task group to run. Each task runs this list of runnables in order. For a task to succeed, all of its script and container runnables each must meet at least one of the following conditions: + The runnable exited with a zero status. + The runnable didn't finish, but you enabled its `background` subfield. + The runnable exited with a non-zero status, but you enabled its `ignore_exit_status` subfield.
  *   `volumes` (*type:* `list(GoogleApi.Batch.V1.Model.Volume.t)`, *default:* `nil`) - Volumes to mount before running Tasks using this TaskSpec.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :computeResource => GoogleApi.Batch.V1.Model.ComputeResource.t() | nil,
          :environment => GoogleApi.Batch.V1.Model.Environment.t() | nil,
          :environments => map() | nil,
          :lifecyclePolicies => list(GoogleApi.Batch.V1.Model.LifecyclePolicy.t()) | nil,
          :maxRetryCount => integer() | nil,
          :maxRunDuration => String.t() | nil,
          :runnables => list(GoogleApi.Batch.V1.Model.Runnable.t()) | nil,
          :volumes => list(GoogleApi.Batch.V1.Model.Volume.t()) | nil
        }

  field(:computeResource, as: GoogleApi.Batch.V1.Model.ComputeResource)
  field(:environment, as: GoogleApi.Batch.V1.Model.Environment)
  field(:environments, type: :map)
  field(:lifecyclePolicies, as: GoogleApi.Batch.V1.Model.LifecyclePolicy, type: :list)
  field(:maxRetryCount)
  field(:maxRunDuration)
  field(:runnables, as: GoogleApi.Batch.V1.Model.Runnable, type: :list)
  field(:volumes, as: GoogleApi.Batch.V1.Model.Volume, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Batch.V1.Model.TaskSpec do
  def decode(value, options) do
    GoogleApi.Batch.V1.Model.TaskSpec.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Batch.V1.Model.TaskSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
