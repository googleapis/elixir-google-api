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

defmodule GoogleApi.Places.V1.Model.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat do
  @moduledoc """
  Contains a breakdown of a Place or query prediction into main text and secondary text. For Place predictions, the main text contains the specific name of the Place. For query predictions, the main text contains the query. The secondary text contains additional disambiguating features (such as a city or region) to further identify the Place or refine the query.

  ## Attributes

  *   `mainText` (*type:* `GoogleApi.Places.V1.Model.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText.t`, *default:* `nil`) - Represents the name of the Place or query.
  *   `secondaryText` (*type:* `GoogleApi.Places.V1.Model.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText.t`, *default:* `nil`) - Represents additional disambiguating features (such as a city or region) to further identify the Place or refine the query.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :mainText =>
            GoogleApi.Places.V1.Model.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText.t()
            | nil,
          :secondaryText =>
            GoogleApi.Places.V1.Model.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText.t()
            | nil
        }

  field(:mainText,
    as:
      GoogleApi.Places.V1.Model.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText
  )

  field(:secondaryText,
    as:
      GoogleApi.Places.V1.Model.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.Places.V1.Model.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat do
  def decode(value, options) do
    GoogleApi.Places.V1.Model.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.Places.V1.Model.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
