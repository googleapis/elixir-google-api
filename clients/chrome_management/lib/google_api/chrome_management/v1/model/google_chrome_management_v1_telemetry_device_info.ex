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

defmodule GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryDeviceInfo do
  @moduledoc """
  Information about a device associated with telemetry data. * Granular Permission needed: TELEMETRY_API_DEVICE

  ## Attributes

  *   `deviceId` (*type:* `String.t`, *default:* `nil`) - Output only. The unique Directory API ID of the device. This value is the same as the Admin Console's Directory API ID in the ChromeOS Devices tab.
  *   `orgUnitId` (*type:* `String.t`, *default:* `nil`) - Output only. Organization unit ID of the device.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deviceId => String.t() | nil,
          :orgUnitId => String.t() | nil
        }

  field(:deviceId)
  field(:orgUnitId)
end

defimpl Poison.Decoder,
  for: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryDeviceInfo do
  def decode(value, options) do
    GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryDeviceInfo.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryDeviceInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
