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

defmodule GoogleApi.AirQuality.V1.Model.LookupCurrentConditionsResponse do
  @moduledoc """


  ## Attributes

  *   `dateTime` (*type:* `DateTime.t`, *default:* `nil`) - A rounded down timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. For example: "2014-10-02T15:00:00Z".
  *   `healthRecommendations` (*type:* `GoogleApi.AirQuality.V1.Model.HealthRecommendations.t`, *default:* `nil`) - Health advice and recommended actions related to the reported air quality conditions. Recommendations are tailored differently for populations at risk, groups with greater sensitivities to pollutants, and the general population.
  *   `indexes` (*type:* `list(GoogleApi.AirQuality.V1.Model.AirQualityIndex.t)`, *default:* `nil`) - Based on the request parameters, this list will include (up to) two air quality indexes: - Universal AQI. Will be returned if the universalAqi boolean is set to true. - Local AQI. Will be returned if the LOCAL_AQI extra computation is specified.
  *   `pollutants` (*type:* `list(GoogleApi.AirQuality.V1.Model.Pollutant.t)`, *default:* `nil`) - A list of pollutants affecting the location specified in the request. Note: This field will be returned only for requests that specified one or more of the following extra computations: POLLUTANT_ADDITIONAL_INFO, DOMINANT_POLLUTANT_CONCENTRATION, POLLUTANT_CONCENTRATION.
  *   `regionCode` (*type:* `String.t`, *default:* `nil`) - The ISO_3166-1 alpha-2 code of the country/region corresponding to the location provided in the request. This field might be omitted from the response if the location provided in the request resides in a disputed territory.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dateTime => DateTime.t() | nil,
          :healthRecommendations => GoogleApi.AirQuality.V1.Model.HealthRecommendations.t() | nil,
          :indexes => list(GoogleApi.AirQuality.V1.Model.AirQualityIndex.t()) | nil,
          :pollutants => list(GoogleApi.AirQuality.V1.Model.Pollutant.t()) | nil,
          :regionCode => String.t() | nil
        }

  field(:dateTime, as: DateTime)
  field(:healthRecommendations, as: GoogleApi.AirQuality.V1.Model.HealthRecommendations)
  field(:indexes, as: GoogleApi.AirQuality.V1.Model.AirQualityIndex, type: :list)
  field(:pollutants, as: GoogleApi.AirQuality.V1.Model.Pollutant, type: :list)
  field(:regionCode)
end

defimpl Poison.Decoder, for: GoogleApi.AirQuality.V1.Model.LookupCurrentConditionsResponse do
  def decode(value, options) do
    GoogleApi.AirQuality.V1.Model.LookupCurrentConditionsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AirQuality.V1.Model.LookupCurrentConditionsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
