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

defmodule GoogleApi.AndroidPublisher.V3.Model.AutoRenewingPlan do
  @moduledoc """
  Information related to an auto renewing plan.

  ## Attributes

  *   `autoRenewEnabled` (*type:* `boolean()`, *default:* `nil`) - If the subscription is currently set to auto-renew, e.g. the user has not canceled the subscription
  *   `installmentDetails` (*type:* `GoogleApi.AndroidPublisher.V3.Model.InstallmentPlan.t`, *default:* `nil`) - The installment plan commitment and state related info for the auto renewing plan.
  *   `priceChangeDetails` (*type:* `GoogleApi.AndroidPublisher.V3.Model.SubscriptionItemPriceChangeDetails.t`, *default:* `nil`) - The information of the last price change for the item since subscription signup.
  *   `recurringPrice` (*type:* `GoogleApi.AndroidPublisher.V3.Model.Money.t`, *default:* `nil`) - The current recurring price of the auto renewing plan.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoRenewEnabled => boolean() | nil,
          :installmentDetails => GoogleApi.AndroidPublisher.V3.Model.InstallmentPlan.t() | nil,
          :priceChangeDetails =>
            GoogleApi.AndroidPublisher.V3.Model.SubscriptionItemPriceChangeDetails.t() | nil,
          :recurringPrice => GoogleApi.AndroidPublisher.V3.Model.Money.t() | nil
        }

  field(:autoRenewEnabled)
  field(:installmentDetails, as: GoogleApi.AndroidPublisher.V3.Model.InstallmentPlan)

  field(:priceChangeDetails,
    as: GoogleApi.AndroidPublisher.V3.Model.SubscriptionItemPriceChangeDetails
  )

  field(:recurringPrice, as: GoogleApi.AndroidPublisher.V3.Model.Money)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidPublisher.V3.Model.AutoRenewingPlan do
  def decode(value, options) do
    GoogleApi.AndroidPublisher.V3.Model.AutoRenewingPlan.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidPublisher.V3.Model.AutoRenewingPlan do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
