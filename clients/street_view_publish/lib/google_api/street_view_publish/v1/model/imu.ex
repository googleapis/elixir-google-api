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

defmodule GoogleApi.StreetViewPublish.V1.Model.Imu do
  @moduledoc """
  IMU data from the device sensors.

  ## Attributes

  *   `accelMpsps` (*type:* `list(GoogleApi.StreetViewPublish.V1.Model.Measurement3d.t)`, *default:* `nil`) - The accelerometer measurements in meters/sec^2 with increasing timestamps from devices.
  *   `gyroRps` (*type:* `list(GoogleApi.StreetViewPublish.V1.Model.Measurement3d.t)`, *default:* `nil`) - The gyroscope measurements in radians/sec with increasing timestamps from devices.
  *   `magUt` (*type:* `list(GoogleApi.StreetViewPublish.V1.Model.Measurement3d.t)`, *default:* `nil`) - The magnetometer measurements of the magnetic field in microtesla (uT) with increasing timestamps from devices.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accelMpsps => list(GoogleApi.StreetViewPublish.V1.Model.Measurement3d.t()) | nil,
          :gyroRps => list(GoogleApi.StreetViewPublish.V1.Model.Measurement3d.t()) | nil,
          :magUt => list(GoogleApi.StreetViewPublish.V1.Model.Measurement3d.t()) | nil
        }

  field(:accelMpsps, as: GoogleApi.StreetViewPublish.V1.Model.Measurement3d, type: :list)
  field(:gyroRps, as: GoogleApi.StreetViewPublish.V1.Model.Measurement3d, type: :list)
  field(:magUt, as: GoogleApi.StreetViewPublish.V1.Model.Measurement3d, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.StreetViewPublish.V1.Model.Imu do
  def decode(value, options) do
    GoogleApi.StreetViewPublish.V1.Model.Imu.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.StreetViewPublish.V1.Model.Imu do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
