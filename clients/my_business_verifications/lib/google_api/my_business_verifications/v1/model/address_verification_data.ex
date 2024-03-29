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

defmodule GoogleApi.MyBusinessVerifications.V1.Model.AddressVerificationData do
  @moduledoc """
  Display data for verifications through postcard.

  ## Attributes

  *   `address` (*type:* `GoogleApi.MyBusinessVerifications.V1.Model.PostalAddress.t`, *default:* `nil`) - Address that a postcard can be sent to.
  *   `business` (*type:* `String.t`, *default:* `nil`) - Merchant's business name.
  *   `expectedDeliveryDaysRegion` (*type:* `integer()`, *default:* `nil`) - Expected number of days it takes to deliver a postcard to the address's region.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :address => GoogleApi.MyBusinessVerifications.V1.Model.PostalAddress.t() | nil,
          :business => String.t() | nil,
          :expectedDeliveryDaysRegion => integer() | nil
        }

  field(:address, as: GoogleApi.MyBusinessVerifications.V1.Model.PostalAddress)
  field(:business)
  field(:expectedDeliveryDaysRegion)
end

defimpl Poison.Decoder, for: GoogleApi.MyBusinessVerifications.V1.Model.AddressVerificationData do
  def decode(value, options) do
    GoogleApi.MyBusinessVerifications.V1.Model.AddressVerificationData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MyBusinessVerifications.V1.Model.AddressVerificationData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
