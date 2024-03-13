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

defmodule GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryUser do
  @moduledoc """
  Telemetry data collected from a managed user. * Granular permission needed: TELEMETRY_API_USER

  ## Attributes

  *   `customer` (*type:* `String.t`, *default:* `nil`) - G Suite Customer whose enterprise enrolled the device.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Resource name of the user.
  *   `orgUnitId` (*type:* `String.t`, *default:* `nil`) - Organization unit of the user.
  *   `userDevice` (*type:* `list(GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryUserDevice.t)`, *default:* `nil`) - Telemetry data collected from a managed user and device.
  *   `userEmail` (*type:* `String.t`, *default:* `nil`) - Email address of the user.
  *   `userId` (*type:* `String.t`, *default:* `nil`) - Directory ID of the user.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :customer => String.t() | nil,
          :name => String.t() | nil,
          :orgUnitId => String.t() | nil,
          :userDevice =>
            list(
              GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryUserDevice.t()
            )
            | nil,
          :userEmail => String.t() | nil,
          :userId => String.t() | nil
        }

  field(:customer)
  field(:name)
  field(:orgUnitId)

  field(:userDevice,
    as: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryUserDevice,
    type: :list
  )

  field(:userEmail)
  field(:userId)
end

defimpl Poison.Decoder,
  for: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryUser do
  def decode(value, options) do
    GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryUser.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryUser do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end