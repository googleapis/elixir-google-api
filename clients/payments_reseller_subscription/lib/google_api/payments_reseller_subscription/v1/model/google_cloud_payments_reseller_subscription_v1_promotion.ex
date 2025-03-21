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

defmodule GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1Promotion do
  @moduledoc """
  A Promotion resource that defines a promotion for a subscription that can be resold.

  ## Attributes

  *   `applicableProducts` (*type:* `list(String.t)`, *default:* `nil`) - Output only. The product ids this promotion can be applied to.
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - Optional. Specifies the end time (exclusive) of the period that the promotion is available in. If unset, the promotion is available indefinitely.
  *   `freeTrialDuration` (*type:* `GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1Duration.t`, *default:* `nil`) - Optional. Specifies the duration of the free trial of the subscription when promotion_type is PROMOTION_TYPE_FREE_TRIAL
  *   `introductoryPricingDetails` (*type:* `GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetails.t`, *default:* `nil`) - Optional. Specifies the introductory pricing details when the promotion_type is PROMOTION_TYPE_INTRODUCTORY_PRICING.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Identifier. Response only. Resource name of the subscription promotion. It will have the format of "partners/{partner_id}/promotion/{promotion_id}"
  *   `promotionType` (*type:* `String.t`, *default:* `nil`) - Output only. Specifies the type of the promotion.
  *   `regionCodes` (*type:* `list(String.t)`, *default:* `nil`) - Output only. 2-letter ISO region code where the promotion is available in. Ex. "US" Please refers to: https://en.wikipedia.org/wiki/ISO_3166-1
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - Optional. Specifies the start time (inclusive) of the period that the promotion is available in.
  *   `titles` (*type:* `list(GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleTypeLocalizedText.t)`, *default:* `nil`) - Output only. Localized human readable name of the promotion.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :applicableProducts => list(String.t()) | nil,
          :endTime => DateTime.t() | nil,
          :freeTrialDuration =>
            GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1Duration.t()
            | nil,
          :introductoryPricingDetails =>
            GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetails.t()
            | nil,
          :name => String.t() | nil,
          :promotionType => String.t() | nil,
          :regionCodes => list(String.t()) | nil,
          :startTime => DateTime.t() | nil,
          :titles =>
            list(GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleTypeLocalizedText.t())
            | nil
        }

  field(:applicableProducts, type: :list)
  field(:endTime, as: DateTime)

  field(:freeTrialDuration,
    as:
      GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1Duration
  )

  field(:introductoryPricingDetails,
    as:
      GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1PromotionIntroductoryPricingDetails
  )

  field(:name)
  field(:promotionType)
  field(:regionCodes, type: :list)
  field(:startTime, as: DateTime)

  field(:titles,
    as: GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleTypeLocalizedText,
    type: :list
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1Promotion do
  def decode(value, options) do
    GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1Promotion.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1Promotion do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
