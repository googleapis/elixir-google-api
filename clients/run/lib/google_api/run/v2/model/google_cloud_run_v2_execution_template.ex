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

defmodule GoogleApi.Run.V2.Model.GoogleCloudRunV2ExecutionTemplate do
  @moduledoc """
  ExecutionTemplate describes the data an execution should have when created from a template.

  ## Attributes

  *   `annotations` (*type:* `map()`, *default:* `nil`) - KRM-style annotations for the resource.
  *   `labels` (*type:* `map()`, *default:* `nil`) - KRM-style labels for the resource.
  *   `parallelism` (*type:* `integer()`, *default:* `nil`) - Specifies the maximum desired number of tasks the execution should run at given time. Must be <= task_count. When the job is run, if this field is 0 or unset, the maximum possible value will be used for that execution. The actual number of tasks running in steady state will be less than this number when there are fewer tasks waiting to be completed remaining, i.e. when the work left to do is less than max parallelism.
  *   `taskCount` (*type:* `integer()`, *default:* `nil`) - Specifies the desired number of tasks the execution should run. Setting to 1 means that parallelism is limited to 1 and the success of that task signals the success of the execution. More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/
  *   `template` (*type:* `GoogleApi.Run.V2.Model.GoogleCloudRunV2TaskTemplate.t`, *default:* `nil`) - Required. Describes the task(s) that will be created when executing an execution.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :annotations => map() | nil,
          :labels => map() | nil,
          :parallelism => integer() | nil,
          :taskCount => integer() | nil,
          :template => GoogleApi.Run.V2.Model.GoogleCloudRunV2TaskTemplate.t() | nil
        }

  field(:annotations, type: :map)
  field(:labels, type: :map)
  field(:parallelism)
  field(:taskCount)
  field(:template, as: GoogleApi.Run.V2.Model.GoogleCloudRunV2TaskTemplate)
end

defimpl Poison.Decoder, for: GoogleApi.Run.V2.Model.GoogleCloudRunV2ExecutionTemplate do
  def decode(value, options) do
    GoogleApi.Run.V2.Model.GoogleCloudRunV2ExecutionTemplate.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Run.V2.Model.GoogleCloudRunV2ExecutionTemplate do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
