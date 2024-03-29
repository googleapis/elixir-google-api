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

defmodule GoogleApi.StreetViewPublish.V1.Model.Place do
  @moduledoc """
  Place metadata for an entity.

  ## Attributes

  *   `languageCode` (*type:* `String.t`, *default:* `nil`) - Output only. The language_code that the name is localized with. This should be the language_code specified in the request, but may be a fallback.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The name of the place, localized to the language_code.
  *   `placeId` (*type:* `String.t`, *default:* `nil`) - Place identifier, as described in https://developers.google.com/places/place-id.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :languageCode => String.t() | nil,
          :name => String.t() | nil,
          :placeId => String.t() | nil
        }

  field(:languageCode)
  field(:name)
  field(:placeId)
end

defimpl Poison.Decoder, for: GoogleApi.StreetViewPublish.V1.Model.Place do
  def decode(value, options) do
    GoogleApi.StreetViewPublish.V1.Model.Place.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.StreetViewPublish.V1.Model.Place do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
