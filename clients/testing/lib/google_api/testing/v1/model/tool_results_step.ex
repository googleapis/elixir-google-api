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

defmodule GoogleApi.Testing.V1.Model.ToolResultsStep do
  @moduledoc """
  Represents a tool results step resource. This has the results of a TestExecution.

  ## Attributes

  *   `executionId` (*type:* `String.t`, *default:* `nil`) - Output only. A tool results execution ID.
  *   `historyId` (*type:* `String.t`, *default:* `nil`) - Output only. A tool results history ID.
  *   `projectId` (*type:* `String.t`, *default:* `nil`) - Output only. The cloud project that owns the tool results step.
  *   `stepId` (*type:* `String.t`, *default:* `nil`) - Output only. A tool results step ID.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :executionId => String.t() | nil,
          :historyId => String.t() | nil,
          :projectId => String.t() | nil,
          :stepId => String.t() | nil
        }

  field(:executionId)
  field(:historyId)
  field(:projectId)
  field(:stepId)
end

defimpl Poison.Decoder, for: GoogleApi.Testing.V1.Model.ToolResultsStep do
  def decode(value, options) do
    GoogleApi.Testing.V1.Model.ToolResultsStep.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Testing.V1.Model.ToolResultsStep do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
