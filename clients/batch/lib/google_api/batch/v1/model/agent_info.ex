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

defmodule GoogleApi.Batch.V1.Model.AgentInfo do
  @moduledoc """
  VM Agent Info.

  ## Attributes

  *   `jobId` (*type:* `String.t`, *default:* `nil`) - Optional. The assigned Job ID
  *   `reportTime` (*type:* `DateTime.t`, *default:* `nil`) - When the AgentInfo is generated.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Agent state.
  *   `taskGroupId` (*type:* `String.t`, *default:* `nil`) - The assigned task group ID.
  *   `tasks` (*type:* `list(GoogleApi.Batch.V1.Model.AgentTaskInfo.t)`, *default:* `nil`) - Task Info.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :jobId => String.t() | nil,
          :reportTime => DateTime.t() | nil,
          :state => String.t() | nil,
          :taskGroupId => String.t() | nil,
          :tasks => list(GoogleApi.Batch.V1.Model.AgentTaskInfo.t()) | nil
        }

  field(:jobId)
  field(:reportTime, as: DateTime)
  field(:state)
  field(:taskGroupId)
  field(:tasks, as: GoogleApi.Batch.V1.Model.AgentTaskInfo, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Batch.V1.Model.AgentInfo do
  def decode(value, options) do
    GoogleApi.Batch.V1.Model.AgentInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Batch.V1.Model.AgentInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
