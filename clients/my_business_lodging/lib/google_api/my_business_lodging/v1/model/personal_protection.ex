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

defmodule GoogleApi.MyBusinessLodging.V1.Model.PersonalProtection do
  @moduledoc """
  Personal protection measures implemented by the hotel during COVID-19.

  ## Attributes

  *   `commonAreasOfferSanitizingItems` (*type:* `boolean()`, *default:* `nil`) - Hand-sanitizer and/or sanitizing wipes are offered in common areas.
  *   `commonAreasOfferSanitizingItemsException` (*type:* `String.t`, *default:* `nil`) - Common areas offer sanitizing items exception.
  *   `faceMaskRequired` (*type:* `boolean()`, *default:* `nil`) - Masks required on the property.
  *   `faceMaskRequiredException` (*type:* `String.t`, *default:* `nil`) - Face mask required exception.
  *   `guestRoomHygieneKitsAvailable` (*type:* `boolean()`, *default:* `nil`) - In-room hygiene kits with masks, hand sanitizer, and/or antibacterial wipes.
  *   `guestRoomHygieneKitsAvailableException` (*type:* `String.t`, *default:* `nil`) - Guest room hygiene kits available exception.
  *   `protectiveEquipmentAvailable` (*type:* `boolean()`, *default:* `nil`) - Masks and/or gloves available for guests.
  *   `protectiveEquipmentAvailableException` (*type:* `String.t`, *default:* `nil`) - Protective equipment available exception.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :commonAreasOfferSanitizingItems => boolean() | nil,
          :commonAreasOfferSanitizingItemsException => String.t() | nil,
          :faceMaskRequired => boolean() | nil,
          :faceMaskRequiredException => String.t() | nil,
          :guestRoomHygieneKitsAvailable => boolean() | nil,
          :guestRoomHygieneKitsAvailableException => String.t() | nil,
          :protectiveEquipmentAvailable => boolean() | nil,
          :protectiveEquipmentAvailableException => String.t() | nil
        }

  field(:commonAreasOfferSanitizingItems)
  field(:commonAreasOfferSanitizingItemsException)
  field(:faceMaskRequired)
  field(:faceMaskRequiredException)
  field(:guestRoomHygieneKitsAvailable)
  field(:guestRoomHygieneKitsAvailableException)
  field(:protectiveEquipmentAvailable)
  field(:protectiveEquipmentAvailableException)
end

defimpl Poison.Decoder, for: GoogleApi.MyBusinessLodging.V1.Model.PersonalProtection do
  def decode(value, options) do
    GoogleApi.MyBusinessLodging.V1.Model.PersonalProtection.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MyBusinessLodging.V1.Model.PersonalProtection do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
