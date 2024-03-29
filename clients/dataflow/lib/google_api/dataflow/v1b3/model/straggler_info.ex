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

defmodule GoogleApi.Dataflow.V1b3.Model.StragglerInfo do
  @moduledoc """
  Information useful for straggler identification and debugging.

  ## Attributes

  *   `causes` (*type:* `%{optional(String.t) => GoogleApi.Dataflow.V1b3.Model.StragglerDebuggingInfo.t}`, *default:* `nil`) - The straggler causes, keyed by the string representation of the StragglerCause enum and contains specialized debugging information for each straggler cause.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - The time when the work item attempt became a straggler.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :causes =>
            %{optional(String.t()) => GoogleApi.Dataflow.V1b3.Model.StragglerDebuggingInfo.t()}
            | nil,
          :startTime => DateTime.t() | nil
        }

  field(:causes, as: GoogleApi.Dataflow.V1b3.Model.StragglerDebuggingInfo, type: :map)
  field(:startTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.StragglerInfo do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.StragglerInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.StragglerInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
