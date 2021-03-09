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

defmodule GoogleApi.Content.V2.Model.OrderLegacyPromotion do
  @moduledoc """


  ## Attributes

  *   `benefits` (*type:* `list(GoogleApi.Content.V2.Model.OrderLegacyPromotionBenefit.t)`, *default:* `nil`) - 
  *   `effectiveDates` (*type:* `String.t`, *default:* `nil`) - The date and time frame when the promotion is active and ready for validation review. Note that the promotion live time may be delayed for a few hours due to the validation review. Start date and end date are separated by a forward slash (/). The start date is specified by the format (YYYY-MM-DD), followed by the letter ?T?, the time of the day when the sale starts (in Greenwich Mean Time, GMT), followed by an expression of the time zone for the sale. The end date is in the same format.
  *   `genericRedemptionCode` (*type:* `String.t`, *default:* `nil`) - Optional. The text code that corresponds to the promotion when applied on the retailer?s website.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The unique ID of the promotion.
  *   `longTitle` (*type:* `String.t`, *default:* `nil`) - The full title of the promotion.
  *   `productApplicability` (*type:* `String.t`, *default:* `nil`) - Whether the promotion is applicable to all products or only specific products. Acceptable values are: - "`allProducts`" - "`specificProducts`" 
  *   `redemptionChannel` (*type:* `String.t`, *default:* `nil`) - Indicates that the promotion is valid online. Acceptable values are: - "`online`" 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :benefits => list(GoogleApi.Content.V2.Model.OrderLegacyPromotionBenefit.t()) | nil,
          :effectiveDates => String.t() | nil,
          :genericRedemptionCode => String.t() | nil,
          :id => String.t() | nil,
          :longTitle => String.t() | nil,
          :productApplicability => String.t() | nil,
          :redemptionChannel => String.t() | nil
        }

  field(:benefits, as: GoogleApi.Content.V2.Model.OrderLegacyPromotionBenefit, type: :list)
  field(:effectiveDates)
  field(:genericRedemptionCode)
  field(:id)
  field(:longTitle)
  field(:productApplicability)
  field(:redemptionChannel)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.OrderLegacyPromotion do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.OrderLegacyPromotion.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.OrderLegacyPromotion do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
