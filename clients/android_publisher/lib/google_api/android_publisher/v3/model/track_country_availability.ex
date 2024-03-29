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

defmodule GoogleApi.AndroidPublisher.V3.Model.TrackCountryAvailability do
  @moduledoc """
  Resource for per-track country availability information.

  ## Attributes

  *   `countries` (*type:* `list(GoogleApi.AndroidPublisher.V3.Model.TrackTargetedCountry.t)`, *default:* `nil`) - A list of one or more countries where artifacts in this track are available. This list includes all countries that are targeted by the track, even if only specific carriers are targeted in that country.
  *   `restOfWorld` (*type:* `boolean()`, *default:* `nil`) - Whether artifacts in this track are available to "rest of the world" countries.
  *   `syncWithProduction` (*type:* `boolean()`, *default:* `nil`) - Whether this track's availability is synced with the default production track. See https://support.google.com/googleplay/android-developer/answer/7550024 for more information on syncing country availability with production. Note that if this is true, the returned "countries" and "rest_of_world" fields will reflect the values for the default production track.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :countries => list(GoogleApi.AndroidPublisher.V3.Model.TrackTargetedCountry.t()) | nil,
          :restOfWorld => boolean() | nil,
          :syncWithProduction => boolean() | nil
        }

  field(:countries, as: GoogleApi.AndroidPublisher.V3.Model.TrackTargetedCountry, type: :list)
  field(:restOfWorld)
  field(:syncWithProduction)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidPublisher.V3.Model.TrackCountryAvailability do
  def decode(value, options) do
    GoogleApi.AndroidPublisher.V3.Model.TrackCountryAvailability.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidPublisher.V3.Model.TrackCountryAvailability do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
