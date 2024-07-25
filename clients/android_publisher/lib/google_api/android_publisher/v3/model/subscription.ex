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

defmodule GoogleApi.AndroidPublisher.V3.Model.Subscription do
  @moduledoc """
  A single subscription for an app.

  ## Attributes

  *   `archived` (*type:* `boolean()`, *default:* `nil`) - Output only. Deprecated: subscription archiving is not supported.
  *   `basePlans` (*type:* `list(GoogleApi.AndroidPublisher.V3.Model.BasePlan.t)`, *default:* `nil`) - The set of base plans for this subscription. Represents the prices and duration of the subscription if no other offers apply.
  *   `listings` (*type:* `list(GoogleApi.AndroidPublisher.V3.Model.SubscriptionListing.t)`, *default:* `nil`) - Required. List of localized listings for this subscription. Must contain at least an entry for the default language of the parent app.
  *   `packageName` (*type:* `String.t`, *default:* `nil`) - Immutable. Package name of the parent app.
  *   `productId` (*type:* `String.t`, *default:* `nil`) - Immutable. Unique product ID of the product. Unique within the parent app. Product IDs must be composed of lower-case letters (a-z), numbers (0-9), underscores (_) and dots (.). It must start with a lower-case letter or number, and be between 1 and 40 (inclusive) characters in length.
  *   `restrictedPaymentCountries` (*type:* `GoogleApi.AndroidPublisher.V3.Model.RestrictedPaymentCountries.t`, *default:* `nil`) - Optional. Countries where the purchase of this subscription is restricted to payment methods registered in the same country. If empty, no payment location restrictions are imposed.
  *   `taxAndComplianceSettings` (*type:* `GoogleApi.AndroidPublisher.V3.Model.SubscriptionTaxAndComplianceSettings.t`, *default:* `nil`) - Details about taxes and legal compliance.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :archived => boolean() | nil,
          :basePlans => list(GoogleApi.AndroidPublisher.V3.Model.BasePlan.t()) | nil,
          :listings => list(GoogleApi.AndroidPublisher.V3.Model.SubscriptionListing.t()) | nil,
          :packageName => String.t() | nil,
          :productId => String.t() | nil,
          :restrictedPaymentCountries =>
            GoogleApi.AndroidPublisher.V3.Model.RestrictedPaymentCountries.t() | nil,
          :taxAndComplianceSettings =>
            GoogleApi.AndroidPublisher.V3.Model.SubscriptionTaxAndComplianceSettings.t() | nil
        }

  field(:archived)
  field(:basePlans, as: GoogleApi.AndroidPublisher.V3.Model.BasePlan, type: :list)
  field(:listings, as: GoogleApi.AndroidPublisher.V3.Model.SubscriptionListing, type: :list)
  field(:packageName)
  field(:productId)

  field(:restrictedPaymentCountries,
    as: GoogleApi.AndroidPublisher.V3.Model.RestrictedPaymentCountries
  )

  field(:taxAndComplianceSettings,
    as: GoogleApi.AndroidPublisher.V3.Model.SubscriptionTaxAndComplianceSettings
  )
end

defimpl Poison.Decoder, for: GoogleApi.AndroidPublisher.V3.Model.Subscription do
  def decode(value, options) do
    GoogleApi.AndroidPublisher.V3.Model.Subscription.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidPublisher.V3.Model.Subscription do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
