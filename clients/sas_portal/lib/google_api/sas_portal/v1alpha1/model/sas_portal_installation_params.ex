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

defmodule GoogleApi.SASPortal.V1alpha1.Model.SasPortalInstallationParams do
  @moduledoc """
  Information about the device installation parameters.

  ## Attributes

  *   `antennaAzimuth` (*type:* `integer()`, *default:* `nil`) - Boresight direction of the horizontal plane of the antenna in degrees with respect to true north. The value of this parameter is an integer with a value between 0 and 359 inclusive. A value of 0 degrees means true north; a value of 90 degrees means east. This parameter is optional for Category A devices and conditional for Category B devices.
  *   `antennaBeamwidth` (*type:* `integer()`, *default:* `nil`) - 3-dB antenna beamwidth of the antenna in the horizontal-plane in degrees. This parameter is an unsigned integer having a value between 0 and 360 (degrees) inclusive; it is optional for Category A devices and conditional for Category B devices.
  *   `antennaDowntilt` (*type:* `integer()`, *default:* `nil`) - Antenna downtilt in degrees and is an integer with a value between -90 and +90 inclusive; a negative value means the antenna is tilted up (above horizontal). This parameter is optional for Category A devices and conditional for Category B devices.
  *   `antennaGain` (*type:* `float()`, *default:* `nil`) - Peak antenna gain in dBi. This parameter is a double with a value between -127 and +128 (dBi) inclusive. Part of Release 2 to support floating-point value
  *   `antennaModel` (*type:* `String.t`, *default:* `nil`) - If an external antenna is used, the antenna model is optionally provided in this field. The string has a maximum length of 128 octets.
  *   `cpeCbsdIndication` (*type:* `boolean()`, *default:* `nil`) - If present, this parameter specifies whether the CBSD is a CPE-CBSD or not.
  *   `eirpCapability` (*type:* `integer()`, *default:* `nil`) - This parameter is the maximum device EIRP in units of dBm/10MHz and is an integer with a value between -127 and +47 (dBm/10 MHz) inclusive. If not included, SAS interprets it as maximum allowable EIRP in units of dBm/10MHz for device category.
  *   `height` (*type:* `float()`, *default:* `nil`) - Device antenna height in meters. When the `heightType` parameter value is "AGL", the antenna height should be given relative to ground level. When the `heightType` parameter value is "AMSL", it is given with respect to WGS84 datum.
  *   `heightType` (*type:* `String.t`, *default:* `nil`) - Specifies how the height is measured.
  *   `horizontalAccuracy` (*type:* `float()`, *default:* `nil`) - A positive number in meters to indicate accuracy of the device antenna horizontal location. This optional parameter should only be present if its value is less than the FCC requirement of 50 meters.
  *   `indoorDeployment` (*type:* `boolean()`, *default:* `nil`) - Whether the device antenna is indoor or not. `true`: indoor. `false`: outdoor.
  *   `latitude` (*type:* `float()`, *default:* `nil`) - Latitude of the device antenna location in degrees relative to the WGS 84 datum. The allowed range is from -90.000000 to +90.000000. Positive values represent latitudes north of the equator; negative values south of the equator.
  *   `longitude` (*type:* `float()`, *default:* `nil`) - Longitude of the device antenna location in degrees relative to the WGS 84 datum. The allowed range is from -180.000000 to +180.000000. Positive values represent longitudes east of the prime meridian; negative values west of the prime meridian.
  *   `verticalAccuracy` (*type:* `float()`, *default:* `nil`) - A positive number in meters to indicate accuracy of the device antenna vertical location. This optional parameter should only be present if its value is less than the FCC requirement of 3 meters.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :antennaAzimuth => integer() | nil,
          :antennaBeamwidth => integer() | nil,
          :antennaDowntilt => integer() | nil,
          :antennaGain => float() | nil,
          :antennaModel => String.t() | nil,
          :cpeCbsdIndication => boolean() | nil,
          :eirpCapability => integer() | nil,
          :height => float() | nil,
          :heightType => String.t() | nil,
          :horizontalAccuracy => float() | nil,
          :indoorDeployment => boolean() | nil,
          :latitude => float() | nil,
          :longitude => float() | nil,
          :verticalAccuracy => float() | nil
        }

  field(:antennaAzimuth)
  field(:antennaBeamwidth)
  field(:antennaDowntilt)
  field(:antennaGain)
  field(:antennaModel)
  field(:cpeCbsdIndication)
  field(:eirpCapability)
  field(:height)
  field(:heightType)
  field(:horizontalAccuracy)
  field(:indoorDeployment)
  field(:latitude)
  field(:longitude)
  field(:verticalAccuracy)
end

defimpl Poison.Decoder, for: GoogleApi.SASPortal.V1alpha1.Model.SasPortalInstallationParams do
  def decode(value, options) do
    GoogleApi.SASPortal.V1alpha1.Model.SasPortalInstallationParams.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SASPortal.V1alpha1.Model.SasPortalInstallationParams do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
