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

defmodule GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingLocalHotelType do
  @moduledoc """
  Hotel Type used by the hotels team to differentiate sub classes of accommodations. For any questions please contact hotel-search-quality@. Next ID: 48

  ## Attributes

  *   `hotel` (*type:* `boolean()`, *default:* `nil`) - Basic accommodation types.
  *   `seasideResort` (*type:* `boolean()`, *default:* `nil`) - 
  *   `extendedStayHotel` (*type:* `boolean()`, *default:* `nil`) - 
  *   `suite` (*type:* `boolean()`, *default:* `nil`) - 
  *   `vacationApartment` (*type:* `boolean()`, *default:* `nil`) - 
  *   `resort` (*type:* `boolean()`, *default:* `nil`) - 
  *   `guesthouse` (*type:* `boolean()`, *default:* `nil`) - 
  *   `villa` (*type:* `boolean()`, *default:* `nil`) - 
  *   `vacationHouse` (*type:* `boolean()`, *default:* `nil`) - 
  *   `beachResort` (*type:* `boolean()`, *default:* `nil`) - 
  *   `campsite` (*type:* `boolean()`, *default:* `nil`) - 
  *   `other` (*type:* `boolean()`, *default:* `nil`) - Any other lodging related type.
  *   `japaneseInnWithHotSpring` (*type:* `boolean()`, *default:* `nil`) - 
  *   `cabin` (*type:* `boolean()`, *default:* `nil`) - Other accommodation types.
  *   `ecoHotel` (*type:* `boolean()`, *default:* `nil`) - 
  *   `inn` (*type:* `boolean()`, *default:* `nil`) - 
  *   `skiResort` (*type:* `boolean()`, *default:* `nil`) - 
  *   `commonLodgingHouse` (*type:* `boolean()`, *default:* `nil`) - 
  *   `golfResort` (*type:* `boolean()`, *default:* `nil`) - 
  *   `loveHotel` (*type:* `boolean()`, *default:* `nil`) - 
  *   `capsuleHotel` (*type:* `boolean()`, *default:* `nil`) - 
  *   `chalet` (*type:* `boolean()`, *default:* `nil`) - 
  *   `hostel` (*type:* `boolean()`, *default:* `nil`) - 
  *   `castleHotel` (*type:* `boolean()`, *default:* `nil`) - 
  *   `bedAndBreakfast` (*type:* `boolean()`, *default:* `nil`) - 
  *   `motel` (*type:* `boolean()`, *default:* `nil`) - 
  *   `guestRanch` (*type:* `boolean()`, *default:* `nil`) - 
  *   `wellnessAndSpaAccommodation` (*type:* `boolean()`, *default:* `nil`) - 
  *   `vacationRental` (*type:* `boolean()`, *default:* `nil`) - Vacation rental accommodation types.
  *   `safariLodge` (*type:* `boolean()`, *default:* `nil`) - 
  *   `houseboat` (*type:* `boolean()`, *default:* `nil`) - 
  *   `youthHostel` (*type:* `boolean()`, *default:* `nil`) - 
  *   `japaneseInn` (*type:* `boolean()`, *default:* `nil`) - Japanese accommodation types.
  *   `lodging` (*type:* `boolean()`, *default:* `nil`) - 
  *   `businessHotel` (*type:* `boolean()`, *default:* `nil`) - 
  *   `cottage` (*type:* `boolean()`, *default:* `nil`) - 
  *   `servicedApartment` (*type:* `boolean()`, *default:* `nil`) - 
  *   `pension` (*type:* `boolean()`, *default:* `nil`) - 
  *   `gite` (*type:* `boolean()`, *default:* `nil`) - 
  *   `boutiqueHotel` (*type:* `boolean()`, *default:* `nil`) - 
  *   `condoHotel` (*type:* `boolean()`, *default:* `nil`) - 
  *   `conventionHotel` (*type:* `boolean()`, *default:* `nil`) - 
  *   `casinoAccommodation` (*type:* `boolean()`, *default:* `nil`) - 
  *   `lodge` (*type:* `boolean()`, *default:* `nil`) - 
  *   `allInclusiveResort` (*type:* `boolean()`, *default:* `nil`) - Basic accommodation types variations.
  *   `farmstay` (*type:* `boolean()`, *default:* `nil`) - 
  *   `mountainHut` (*type:* `boolean()`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :hotel => boolean() | nil,
          :seasideResort => boolean() | nil,
          :extendedStayHotel => boolean() | nil,
          :suite => boolean() | nil,
          :vacationApartment => boolean() | nil,
          :resort => boolean() | nil,
          :guesthouse => boolean() | nil,
          :villa => boolean() | nil,
          :vacationHouse => boolean() | nil,
          :beachResort => boolean() | nil,
          :campsite => boolean() | nil,
          :other => boolean() | nil,
          :japaneseInnWithHotSpring => boolean() | nil,
          :cabin => boolean() | nil,
          :ecoHotel => boolean() | nil,
          :inn => boolean() | nil,
          :skiResort => boolean() | nil,
          :commonLodgingHouse => boolean() | nil,
          :golfResort => boolean() | nil,
          :loveHotel => boolean() | nil,
          :capsuleHotel => boolean() | nil,
          :chalet => boolean() | nil,
          :hostel => boolean() | nil,
          :castleHotel => boolean() | nil,
          :bedAndBreakfast => boolean() | nil,
          :motel => boolean() | nil,
          :guestRanch => boolean() | nil,
          :wellnessAndSpaAccommodation => boolean() | nil,
          :vacationRental => boolean() | nil,
          :safariLodge => boolean() | nil,
          :houseboat => boolean() | nil,
          :youthHostel => boolean() | nil,
          :japaneseInn => boolean() | nil,
          :lodging => boolean() | nil,
          :businessHotel => boolean() | nil,
          :cottage => boolean() | nil,
          :servicedApartment => boolean() | nil,
          :pension => boolean() | nil,
          :gite => boolean() | nil,
          :boutiqueHotel => boolean() | nil,
          :condoHotel => boolean() | nil,
          :conventionHotel => boolean() | nil,
          :casinoAccommodation => boolean() | nil,
          :lodge => boolean() | nil,
          :allInclusiveResort => boolean() | nil,
          :farmstay => boolean() | nil,
          :mountainHut => boolean() | nil
        }

  field(:hotel)
  field(:seasideResort)
  field(:extendedStayHotel)
  field(:suite)
  field(:vacationApartment)
  field(:resort)
  field(:guesthouse)
  field(:villa)
  field(:vacationHouse)
  field(:beachResort)
  field(:campsite)
  field(:other)
  field(:japaneseInnWithHotSpring)
  field(:cabin)
  field(:ecoHotel)
  field(:inn)
  field(:skiResort)
  field(:commonLodgingHouse)
  field(:golfResort)
  field(:loveHotel)
  field(:capsuleHotel)
  field(:chalet)
  field(:hostel)
  field(:castleHotel)
  field(:bedAndBreakfast)
  field(:motel)
  field(:guestRanch)
  field(:wellnessAndSpaAccommodation)
  field(:vacationRental)
  field(:safariLodge)
  field(:houseboat)
  field(:youthHostel)
  field(:japaneseInn)
  field(:lodging)
  field(:businessHotel)
  field(:cottage)
  field(:servicedApartment)
  field(:pension)
  field(:gite)
  field(:boutiqueHotel)
  field(:condoHotel)
  field(:conventionHotel)
  field(:casinoAccommodation)
  field(:lodge)
  field(:allInclusiveResort)
  field(:farmstay)
  field(:mountainHut)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingLocalHotelType do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingLocalHotelType.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingLocalHotelType do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
