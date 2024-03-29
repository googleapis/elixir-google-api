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

defmodule GoogleApi.Testing.V1.Model.SessionStateEvent do
  @moduledoc """
  A message encapsulating a series of Session states and the time that the DeviceSession first entered those states.

  ## Attributes

  *   `eventTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time that the session_state first encountered that state.
  *   `sessionState` (*type:* `String.t`, *default:* `nil`) - Output only. The session_state tracked by this event
  *   `stateMessage` (*type:* `String.t`, *default:* `nil`) - Output only. A human-readable message to explain the state.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :eventTime => DateTime.t() | nil,
          :sessionState => String.t() | nil,
          :stateMessage => String.t() | nil
        }

  field(:eventTime, as: DateTime)
  field(:sessionState)
  field(:stateMessage)
end

defimpl Poison.Decoder, for: GoogleApi.Testing.V1.Model.SessionStateEvent do
  def decode(value, options) do
    GoogleApi.Testing.V1.Model.SessionStateEvent.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Testing.V1.Model.SessionStateEvent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
