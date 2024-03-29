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

defmodule GoogleApi.Places.V1.Model.GoogleMapsPlacesV1SearchTextRequest do
  @moduledoc """
  Request proto for SearchText. 

  ## Attributes

  *   `evOptions` (*type:* `GoogleApi.Places.V1.Model.GoogleMapsPlacesV1SearchTextRequestEVOptions.t`, *default:* `nil`) - Optional. Set the searchable EV options of a place search request.
  *   `includedType` (*type:* `String.t`, *default:* `nil`) - The requested place type. Full list of types supported: https://developers.google.com/maps/documentation/places/web-service/place-types. Only support one included type.
  *   `languageCode` (*type:* `String.t`, *default:* `nil`) - Place details will be displayed with the preferred language if available. If the language code is unspecified or unrecognized, place details of any language may be returned, with a preference for English if such details exist. Current list of supported languages: https://developers.google.com/maps/faq#languagesupport.
  *   `locationBias` (*type:* `GoogleApi.Places.V1.Model.GoogleMapsPlacesV1SearchTextRequestLocationBias.t`, *default:* `nil`) - The region to search. This location serves as a bias which means results around given location might be returned. Cannot be set along with location_restriction.
  *   `locationRestriction` (*type:* `GoogleApi.Places.V1.Model.GoogleMapsPlacesV1SearchTextRequestLocationRestriction.t`, *default:* `nil`) - The region to search. This location serves as a restriction which means results outside given location will not be returned. Cannot be set along with location_bias.
  *   `maxResultCount` (*type:* `integer()`, *default:* `nil`) - Maximum number of results to return. It must be between 1 and 20, inclusively. The default is 20. If the number is unset, it falls back to the upper limit. If the number is set to negative or exceeds the upper limit, an INVALID_ARGUMENT error is returned.
  *   `minRating` (*type:* `float()`, *default:* `nil`) - Filter out results whose average user rating is strictly less than this limit. A valid value must be a float between 0 and 5 (inclusively) at a 0.5 cadence i.e. [0, 0.5, 1.0, ... , 5.0] inclusively. The input rating will round up to the nearest 0.5(ceiling). For instance, a rating of 0.6 will eliminate all results with a less than 1.0 rating.
  *   `openNow` (*type:* `boolean()`, *default:* `nil`) - Used to restrict the search to places that are currently open. The default is false.
  *   `priceLevels` (*type:* `list(String.t)`, *default:* `nil`) - Used to restrict the search to places that are marked as certain price levels. Users can choose any combinations of price levels. Default to select all price levels.
  *   `rankPreference` (*type:* `String.t`, *default:* `nil`) - How results will be ranked in the response.
  *   `regionCode` (*type:* `String.t`, *default:* `nil`) - The Unicode country/region code (CLDR) of the location where the request is coming from. This parameter is used to display the place details, like region-specific place name, if available. The parameter can affect results based on applicable law. For more information, see https://www.unicode.org/cldr/charts/latest/supplemental/territory_language_information.html. Note that 3-digit region codes are not currently supported.
  *   `strictTypeFiltering` (*type:* `boolean()`, *default:* `nil`) - Used to set strict type filtering for included_type. If set to true, only results of the same type will be returned. Default to false.
  *   `textQuery` (*type:* `String.t`, *default:* `nil`) - Required. The text query for textual search.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :evOptions =>
            GoogleApi.Places.V1.Model.GoogleMapsPlacesV1SearchTextRequestEVOptions.t() | nil,
          :includedType => String.t() | nil,
          :languageCode => String.t() | nil,
          :locationBias =>
            GoogleApi.Places.V1.Model.GoogleMapsPlacesV1SearchTextRequestLocationBias.t() | nil,
          :locationRestriction =>
            GoogleApi.Places.V1.Model.GoogleMapsPlacesV1SearchTextRequestLocationRestriction.t()
            | nil,
          :maxResultCount => integer() | nil,
          :minRating => float() | nil,
          :openNow => boolean() | nil,
          :priceLevels => list(String.t()) | nil,
          :rankPreference => String.t() | nil,
          :regionCode => String.t() | nil,
          :strictTypeFiltering => boolean() | nil,
          :textQuery => String.t() | nil
        }

  field(:evOptions, as: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1SearchTextRequestEVOptions)
  field(:includedType)
  field(:languageCode)

  field(:locationBias,
    as: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1SearchTextRequestLocationBias
  )

  field(:locationRestriction,
    as: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1SearchTextRequestLocationRestriction
  )

  field(:maxResultCount)
  field(:minRating)
  field(:openNow)
  field(:priceLevels, type: :list)
  field(:rankPreference)
  field(:regionCode)
  field(:strictTypeFiltering)
  field(:textQuery)
end

defimpl Poison.Decoder, for: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1SearchTextRequest do
  def decode(value, options) do
    GoogleApi.Places.V1.Model.GoogleMapsPlacesV1SearchTextRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1SearchTextRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
