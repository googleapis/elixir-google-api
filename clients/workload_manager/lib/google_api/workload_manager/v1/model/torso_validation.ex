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

defmodule GoogleApi.WorkloadManager.V1.Model.TorsoValidation do
  @moduledoc """
  The schema of torso workload validation data.

  ## Attributes

  *   `agentVersion` (*type:* `String.t`, *default:* `nil`) - Required. agent_version lists the version of the agent that collected this data.
  *   `instanceName` (*type:* `String.t`, *default:* `nil`) - Required. instance_name lists the human readable name of the instance that the data comes from.
  *   `projectId` (*type:* `String.t`, *default:* `nil`) - Required. project_id lists the human readable cloud project that the data comes from.
  *   `validationDetails` (*type:* `map()`, *default:* `nil`) - Required. validation_details contains the pairs of validation data: field name & field value.
  *   `workloadType` (*type:* `String.t`, *default:* `nil`) - Required. workload_type specifies the type of torso workload.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :agentVersion => String.t() | nil,
          :instanceName => String.t() | nil,
          :projectId => String.t() | nil,
          :validationDetails => map() | nil,
          :workloadType => String.t() | nil
        }

  field(:agentVersion)
  field(:instanceName)
  field(:projectId)
  field(:validationDetails, type: :map)
  field(:workloadType)
end

defimpl Poison.Decoder, for: GoogleApi.WorkloadManager.V1.Model.TorsoValidation do
  def decode(value, options) do
    GoogleApi.WorkloadManager.V1.Model.TorsoValidation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WorkloadManager.V1.Model.TorsoValidation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
