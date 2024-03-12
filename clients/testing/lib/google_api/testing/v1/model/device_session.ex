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

defmodule GoogleApi.Testing.V1.Model.DeviceSession do
  @moduledoc """
  Protobuf message describing the device message, used from several RPCs.

  ## Attributes

  *   `activeStartTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp that the session first became ACTIVE.
  *   `androidDevice` (*type:* `GoogleApi.Testing.V1.Model.AndroidDevice.t`, *default:* `nil`) - Required. The requested device
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time that the Session was created.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Output only. The title of the DeviceSession to be presented in the UI.
  *   `expireTime` (*type:* `DateTime.t`, *default:* `nil`) - Optional. If the device is still in use at this time, any connections will be ended and the SessionState will transition from ACTIVE to FINISHED.
  *   `inactivityTimeout` (*type:* `String.t`, *default:* `nil`) - Output only. The interval of time that this device must be interacted with before it transitions from ACTIVE to TIMEOUT_INACTIVITY.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Optional. Name of the DeviceSession, e.g. "projects/{project_id}/deviceSessions/{session_id}"
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. Current state of the DeviceSession.
  *   `stateHistories` (*type:* `list(GoogleApi.Testing.V1.Model.SessionStateEvent.t)`, *default:* `nil`) - Output only. The historical state transitions of the session_state message including the current session state.
  *   `ttl` (*type:* `String.t`, *default:* `nil`) - Optional. The amount of time that a device will be initially allocated for. This can eventually be extended with the UpdateDeviceSession RPC. Default: 30 minutes.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :activeStartTime => DateTime.t() | nil,
          :androidDevice => GoogleApi.Testing.V1.Model.AndroidDevice.t() | nil,
          :createTime => DateTime.t() | nil,
          :displayName => String.t() | nil,
          :expireTime => DateTime.t() | nil,
          :inactivityTimeout => String.t() | nil,
          :name => String.t() | nil,
          :state => String.t() | nil,
          :stateHistories => list(GoogleApi.Testing.V1.Model.SessionStateEvent.t()) | nil,
          :ttl => String.t() | nil
        }

  field(:activeStartTime, as: DateTime)
  field(:androidDevice, as: GoogleApi.Testing.V1.Model.AndroidDevice)
  field(:createTime, as: DateTime)
  field(:displayName)
  field(:expireTime, as: DateTime)
  field(:inactivityTimeout)
  field(:name)
  field(:state)
  field(:stateHistories, as: GoogleApi.Testing.V1.Model.SessionStateEvent, type: :list)
  field(:ttl)
end

defimpl Poison.Decoder, for: GoogleApi.Testing.V1.Model.DeviceSession do
  def decode(value, options) do
    GoogleApi.Testing.V1.Model.DeviceSession.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Testing.V1.Model.DeviceSession do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
