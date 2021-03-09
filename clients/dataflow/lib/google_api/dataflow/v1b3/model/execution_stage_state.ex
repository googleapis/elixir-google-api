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

defmodule GoogleApi.Dataflow.V1b3.Model.ExecutionStageState do
  @moduledoc """
  A message describing the state of a particular execution stage.

  ## Attributes

  *   `currentStateTime` (*type:* `DateTime.t`, *default:* `nil`) - The time at which the stage transitioned to this state.
  *   `executionStageName` (*type:* `String.t`, *default:* `nil`) - The name of the execution stage.
  *   `executionStageState` (*type:* `String.t`, *default:* `nil`) - Executions stage states allow the same set of values as JobState.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :currentStateTime => DateTime.t() | nil,
          :executionStageName => String.t() | nil,
          :executionStageState => String.t() | nil
        }

  field(:currentStateTime, as: DateTime)
  field(:executionStageName)
  field(:executionStageState)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.ExecutionStageState do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.ExecutionStageState.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.ExecutionStageState do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
