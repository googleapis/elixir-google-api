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

defmodule GoogleApi.Places.V1.Model.GoogleMapsPlacesV1SearchTextRequestSearchAlongRouteParameters do
  @moduledoc """
  Specifies a precalculated polyline from the [Routes API](https://developers.google.com/maps/documentation/routes) defining the route to search. Searching along a route is similar to using the `locationBias` or `locationRestriction` request option to bias the search results. However, while the `locationBias` and `locationRestriction` options let you specify a region to bias the search results, this option lets you bias the results along a trip route. Results are not guaranteed to be along the route provided, but rather are ranked within the search area defined by the polyline and, optionally, by the `locationBias` or `locationRestriction` based on minimal detour times from origin to destination. The results might be along an alternate route, especially if the provided polyline does not define an optimal route from origin to destination.

  ## Attributes

  *   `polyline` (*type:* `GoogleApi.Places.V1.Model.GoogleMapsPlacesV1Polyline.t`, *default:* `nil`) - Required. The route polyline.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :polyline => GoogleApi.Places.V1.Model.GoogleMapsPlacesV1Polyline.t() | nil
        }

  field(:polyline, as: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1Polyline)
end

defimpl Poison.Decoder,
  for: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1SearchTextRequestSearchAlongRouteParameters do
  def decode(value, options) do
    GoogleApi.Places.V1.Model.GoogleMapsPlacesV1SearchTextRequestSearchAlongRouteParameters.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1SearchTextRequestSearchAlongRouteParameters do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
