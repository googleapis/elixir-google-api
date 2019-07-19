# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Jobs.V2.Model.CommutePreference do
  @moduledoc """
  Input only.

  Parameters needed for commute search.

  ## Attributes

  *   `allowNonStreetLevelAddress` (*type:* `boolean()`, *default:* `nil`) - Optional. If `true`, jobs without street level addresses may also be returned.
      For city level addresses, the city center is used. For state and coarser
      level addresses, text matching is used.
      If this field is set to `false` or is not specified, only jobs that include
      street level addresses will be returned by commute search.
  *   `departureHourLocal` (*type:* `integer()`, *default:* `nil`) - Optional. The departure hour to use to calculate traffic impact. Accepts an
      integer between 0 and 23, representing the hour in the time zone of the
      start_location. Must not be present if road_traffic is specified.
  *   `method` (*type:* `String.t`, *default:* `nil`) - Required. The method of transportation for which to calculate the commute time.
  *   `roadTraffic` (*type:* `String.t`, *default:* `nil`) - Optional. Specifies the traffic density to use when calculating commute time.
      Must not be present if departure_hour_local is specified.
  *   `startLocation` (*type:* `GoogleApi.Jobs.V2.Model.LatLng.t`, *default:* `nil`) - Required. The latitude and longitude of the location from which to calculate the
      commute time.
  *   `travelTime` (*type:* `String.t`, *default:* `nil`) - Required. The maximum travel time in seconds. The maximum allowed value is `3600s`
      (one hour). Format is `123s`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowNonStreetLevelAddress => boolean(),
          :departureHourLocal => integer(),
          :method => String.t(),
          :roadTraffic => String.t(),
          :startLocation => GoogleApi.Jobs.V2.Model.LatLng.t(),
          :travelTime => String.t()
        }

  field(:allowNonStreetLevelAddress)
  field(:departureHourLocal)
  field(:method)
  field(:roadTraffic)
  field(:startLocation, as: GoogleApi.Jobs.V2.Model.LatLng)
  field(:travelTime)
end

defimpl Poison.Decoder, for: GoogleApi.Jobs.V2.Model.CommutePreference do
  def decode(value, options) do
    GoogleApi.Jobs.V2.Model.CommutePreference.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Jobs.V2.Model.CommutePreference do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
