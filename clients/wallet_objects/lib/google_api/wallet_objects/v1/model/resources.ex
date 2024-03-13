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

defmodule GoogleApi.WalletObjects.V1.Model.Resources do
  @moduledoc """


  ## Attributes

  *   `eventTicketClasses` (*type:* `list(GoogleApi.WalletObjects.V1.Model.EventTicketClass.t)`, *default:* `nil`) - 
  *   `eventTicketObjects` (*type:* `list(GoogleApi.WalletObjects.V1.Model.EventTicketObject.t)`, *default:* `nil`) - 
  *   `flightClasses` (*type:* `list(GoogleApi.WalletObjects.V1.Model.FlightClass.t)`, *default:* `nil`) - 
  *   `flightObjects` (*type:* `list(GoogleApi.WalletObjects.V1.Model.FlightObject.t)`, *default:* `nil`) - 
  *   `giftCardClasses` (*type:* `list(GoogleApi.WalletObjects.V1.Model.GiftCardClass.t)`, *default:* `nil`) - 
  *   `giftCardObjects` (*type:* `list(GoogleApi.WalletObjects.V1.Model.GiftCardObject.t)`, *default:* `nil`) - 
  *   `loyaltyClasses` (*type:* `list(GoogleApi.WalletObjects.V1.Model.LoyaltyClass.t)`, *default:* `nil`) - 
  *   `loyaltyObjects` (*type:* `list(GoogleApi.WalletObjects.V1.Model.LoyaltyObject.t)`, *default:* `nil`) - 
  *   `offerClasses` (*type:* `list(GoogleApi.WalletObjects.V1.Model.OfferClass.t)`, *default:* `nil`) - 
  *   `offerObjects` (*type:* `list(GoogleApi.WalletObjects.V1.Model.OfferObject.t)`, *default:* `nil`) - 
  *   `transitClasses` (*type:* `list(GoogleApi.WalletObjects.V1.Model.TransitClass.t)`, *default:* `nil`) - 
  *   `transitObjects` (*type:* `list(GoogleApi.WalletObjects.V1.Model.TransitObject.t)`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :eventTicketClasses =>
            list(GoogleApi.WalletObjects.V1.Model.EventTicketClass.t()) | nil,
          :eventTicketObjects =>
            list(GoogleApi.WalletObjects.V1.Model.EventTicketObject.t()) | nil,
          :flightClasses => list(GoogleApi.WalletObjects.V1.Model.FlightClass.t()) | nil,
          :flightObjects => list(GoogleApi.WalletObjects.V1.Model.FlightObject.t()) | nil,
          :giftCardClasses => list(GoogleApi.WalletObjects.V1.Model.GiftCardClass.t()) | nil,
          :giftCardObjects => list(GoogleApi.WalletObjects.V1.Model.GiftCardObject.t()) | nil,
          :loyaltyClasses => list(GoogleApi.WalletObjects.V1.Model.LoyaltyClass.t()) | nil,
          :loyaltyObjects => list(GoogleApi.WalletObjects.V1.Model.LoyaltyObject.t()) | nil,
          :offerClasses => list(GoogleApi.WalletObjects.V1.Model.OfferClass.t()) | nil,
          :offerObjects => list(GoogleApi.WalletObjects.V1.Model.OfferObject.t()) | nil,
          :transitClasses => list(GoogleApi.WalletObjects.V1.Model.TransitClass.t()) | nil,
          :transitObjects => list(GoogleApi.WalletObjects.V1.Model.TransitObject.t()) | nil
        }

  field(:eventTicketClasses, as: GoogleApi.WalletObjects.V1.Model.EventTicketClass, type: :list)
  field(:eventTicketObjects, as: GoogleApi.WalletObjects.V1.Model.EventTicketObject, type: :list)
  field(:flightClasses, as: GoogleApi.WalletObjects.V1.Model.FlightClass, type: :list)
  field(:flightObjects, as: GoogleApi.WalletObjects.V1.Model.FlightObject, type: :list)
  field(:giftCardClasses, as: GoogleApi.WalletObjects.V1.Model.GiftCardClass, type: :list)
  field(:giftCardObjects, as: GoogleApi.WalletObjects.V1.Model.GiftCardObject, type: :list)
  field(:loyaltyClasses, as: GoogleApi.WalletObjects.V1.Model.LoyaltyClass, type: :list)
  field(:loyaltyObjects, as: GoogleApi.WalletObjects.V1.Model.LoyaltyObject, type: :list)
  field(:offerClasses, as: GoogleApi.WalletObjects.V1.Model.OfferClass, type: :list)
  field(:offerObjects, as: GoogleApi.WalletObjects.V1.Model.OfferObject, type: :list)
  field(:transitClasses, as: GoogleApi.WalletObjects.V1.Model.TransitClass, type: :list)
  field(:transitObjects, as: GoogleApi.WalletObjects.V1.Model.TransitObject, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.WalletObjects.V1.Model.Resources do
  def decode(value, options) do
    GoogleApi.WalletObjects.V1.Model.Resources.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WalletObjects.V1.Model.Resources do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end