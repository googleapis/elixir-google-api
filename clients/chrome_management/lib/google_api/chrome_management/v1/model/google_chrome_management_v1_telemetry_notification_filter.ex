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

defmodule GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryNotificationFilter do
  @moduledoc """
  Configures how the telemetry data should be filtered.

  ## Attributes

  *   `deviceId` (*type:* `String.t`, *default:* `nil`) - If set, only sends notifications for telemetry data coming from this device.
  *   `deviceOrgUnitId` (*type:* `String.t`, *default:* `nil`) - If set, only sends notifications for telemetry data coming from devices in this org unit.
  *   `telemetryEventNotificationFilter` (*type:* `GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryEventNotificationFilter.t`, *default:* `nil`) - Only sends notifications for the telemetry events matching this filter.
  *   `userEmail` (*type:* `String.t`, *default:* `nil`) - If set, only sends notifications for telemetry data coming from devices owned by this user.
  *   `userOrgUnitId` (*type:* `String.t`, *default:* `nil`) - If set, only sends notifications for telemetry data coming from devices owned by users in this org unit.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deviceId => String.t() | nil,
          :deviceOrgUnitId => String.t() | nil,
          :telemetryEventNotificationFilter =>
            GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryEventNotificationFilter.t()
            | nil,
          :userEmail => String.t() | nil,
          :userOrgUnitId => String.t() | nil
        }

  field(:deviceId)
  field(:deviceOrgUnitId)

  field(:telemetryEventNotificationFilter,
    as:
      GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryEventNotificationFilter
  )

  field(:userEmail)
  field(:userOrgUnitId)
end

defimpl Poison.Decoder,
  for: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryNotificationFilter do
  def decode(value, options) do
    GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryNotificationFilter.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryNotificationFilter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
