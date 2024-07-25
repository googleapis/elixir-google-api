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

defmodule GoogleApi.AndroidPublisher.V3.Model.SubscriptionPurchaseV2 do
  @moduledoc """
  Indicates the status of a user's subscription purchase.

  ## Attributes

  *   `acknowledgementState` (*type:* `String.t`, *default:* `nil`) - The acknowledgement state of the subscription.
  *   `canceledStateContext` (*type:* `GoogleApi.AndroidPublisher.V3.Model.CanceledStateContext.t`, *default:* `nil`) - Additional context around canceled subscriptions. Only present if the subscription currently has subscription_state SUBSCRIPTION_STATE_CANCELED or SUBSCRIPTION_STATE_EXPIRED.
  *   `externalAccountIdentifiers` (*type:* `GoogleApi.AndroidPublisher.V3.Model.ExternalAccountIdentifiers.t`, *default:* `nil`) - User account identifier in the third-party service.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - This kind represents a SubscriptionPurchaseV2 object in the androidpublisher service.
  *   `latestOrderId` (*type:* `String.t`, *default:* `nil`) - The order id of the latest order associated with the purchase of the subscription. For autoRenewing subscription, this is the order id of signup order if it is not renewed yet, or the last recurring order id (success, pending, or declined order). For prepaid subscription, this is the order id associated with the queried purchase token.
  *   `lineItems` (*type:* `list(GoogleApi.AndroidPublisher.V3.Model.SubscriptionPurchaseLineItem.t)`, *default:* `nil`) - Item-level info for a subscription purchase. The items in the same purchase should be either all with AutoRenewingPlan or all with PrepaidPlan.
  *   `linkedPurchaseToken` (*type:* `String.t`, *default:* `nil`) - The purchase token of the old subscription if this subscription is one of the following: * Re-signup of a canceled but non-lapsed subscription * Upgrade/downgrade from a previous subscription. * Convert from prepaid to auto renewing subscription. * Convert from an auto renewing subscription to prepaid. * Topup a prepaid subscription.
  *   `pausedStateContext` (*type:* `GoogleApi.AndroidPublisher.V3.Model.PausedStateContext.t`, *default:* `nil`) - Additional context around paused subscriptions. Only present if the subscription currently has subscription_state SUBSCRIPTION_STATE_PAUSED.
  *   `regionCode` (*type:* `String.t`, *default:* `nil`) - ISO 3166-1 alpha-2 billing country/region code of the user at the time the subscription was granted.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - Time at which the subscription was granted. Not set for pending subscriptions (subscription was created but awaiting payment during signup).
  *   `subscribeWithGoogleInfo` (*type:* `GoogleApi.AndroidPublisher.V3.Model.SubscribeWithGoogleInfo.t`, *default:* `nil`) - User profile associated with purchases made with 'Subscribe with Google'.
  *   `subscriptionState` (*type:* `String.t`, *default:* `nil`) - The current state of the subscription.
  *   `testPurchase` (*type:* `GoogleApi.AndroidPublisher.V3.Model.TestPurchase.t`, *default:* `nil`) - Only present if this subscription purchase is a test purchase.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :acknowledgementState => String.t() | nil,
          :canceledStateContext =>
            GoogleApi.AndroidPublisher.V3.Model.CanceledStateContext.t() | nil,
          :externalAccountIdentifiers =>
            GoogleApi.AndroidPublisher.V3.Model.ExternalAccountIdentifiers.t() | nil,
          :kind => String.t() | nil,
          :latestOrderId => String.t() | nil,
          :lineItems =>
            list(GoogleApi.AndroidPublisher.V3.Model.SubscriptionPurchaseLineItem.t()) | nil,
          :linkedPurchaseToken => String.t() | nil,
          :pausedStateContext => GoogleApi.AndroidPublisher.V3.Model.PausedStateContext.t() | nil,
          :regionCode => String.t() | nil,
          :startTime => DateTime.t() | nil,
          :subscribeWithGoogleInfo =>
            GoogleApi.AndroidPublisher.V3.Model.SubscribeWithGoogleInfo.t() | nil,
          :subscriptionState => String.t() | nil,
          :testPurchase => GoogleApi.AndroidPublisher.V3.Model.TestPurchase.t() | nil
        }

  field(:acknowledgementState)
  field(:canceledStateContext, as: GoogleApi.AndroidPublisher.V3.Model.CanceledStateContext)

  field(:externalAccountIdentifiers,
    as: GoogleApi.AndroidPublisher.V3.Model.ExternalAccountIdentifiers
  )

  field(:kind)
  field(:latestOrderId)

  field(:lineItems,
    as: GoogleApi.AndroidPublisher.V3.Model.SubscriptionPurchaseLineItem,
    type: :list
  )

  field(:linkedPurchaseToken)
  field(:pausedStateContext, as: GoogleApi.AndroidPublisher.V3.Model.PausedStateContext)
  field(:regionCode)
  field(:startTime, as: DateTime)
  field(:subscribeWithGoogleInfo, as: GoogleApi.AndroidPublisher.V3.Model.SubscribeWithGoogleInfo)
  field(:subscriptionState)
  field(:testPurchase, as: GoogleApi.AndroidPublisher.V3.Model.TestPurchase)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidPublisher.V3.Model.SubscriptionPurchaseV2 do
  def decode(value, options) do
    GoogleApi.AndroidPublisher.V3.Model.SubscriptionPurchaseV2.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidPublisher.V3.Model.SubscriptionPurchaseV2 do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
