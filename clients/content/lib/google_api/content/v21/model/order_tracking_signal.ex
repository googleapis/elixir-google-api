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

defmodule GoogleApi.Content.V21.Model.OrderTrackingSignal do
  @moduledoc """
  Represents a merchant trade from which signals are extracted, e.g. shipping.

  ## Attributes

  *   `customerShippingFee` (*type:* `GoogleApi.Content.V21.Model.PriceAmount.t`, *default:* `nil`) - The shipping fee of the order; this value should be set to zero in the case of free shipping.
  *   `deliveryPostalCode` (*type:* `String.t`, *default:* `nil`) - Required. The delivery postal code, as a continuous string without spaces or dashes, e.g. "95016". This field will be anonymized in returned OrderTrackingSignal creation response.
  *   `deliveryRegionCode` (*type:* `String.t`, *default:* `nil`) - Required. The [CLDR territory code] (http://www.unicode.org/repos/cldr/tags/latest/common/main/en.xml) for the shipping destination.
  *   `lineItems` (*type:* `list(GoogleApi.Content.V21.Model.OrderTrackingSignalLineItemDetails.t)`, *default:* `nil`) - Information about line items in the order.
  *   `merchantId` (*type:* `String.t`, *default:* `nil`) - The Google merchant ID of this order tracking signal. This value is optional. If left unset, the caller's merchant ID is used. You must request access in order to provide data on behalf of another merchant. For more information, see [Submitting Order Tracking Signals](/shopping-content/guides/order-tracking-signals).
  *   `orderCreatedTime` (*type:* `GoogleApi.Content.V21.Model.DateTime.t`, *default:* `nil`) - Required. The time when the order was created on the merchant side. Include the year and timezone string, if available.
  *   `orderId` (*type:* `String.t`, *default:* `nil`) - Required. The ID of the order on the merchant side. This field will be hashed in returned OrderTrackingSignal creation response.
  *   `orderTrackingSignalId` (*type:* `String.t`, *default:* `nil`) - Output only. The ID that uniquely identifies this order tracking signal.
  *   `shipmentLineItemMapping` (*type:* `list(GoogleApi.Content.V21.Model.OrderTrackingSignalShipmentLineItemMapping.t)`, *default:* `nil`) - The mapping of the line items to the shipment information.
  *   `shippingInfo` (*type:* `list(GoogleApi.Content.V21.Model.OrderTrackingSignalShippingInfo.t)`, *default:* `nil`) - The shipping information for the order.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :customerShippingFee => GoogleApi.Content.V21.Model.PriceAmount.t() | nil,
          :deliveryPostalCode => String.t() | nil,
          :deliveryRegionCode => String.t() | nil,
          :lineItems =>
            list(GoogleApi.Content.V21.Model.OrderTrackingSignalLineItemDetails.t()) | nil,
          :merchantId => String.t() | nil,
          :orderCreatedTime => GoogleApi.Content.V21.Model.DateTime.t() | nil,
          :orderId => String.t() | nil,
          :orderTrackingSignalId => String.t() | nil,
          :shipmentLineItemMapping =>
            list(GoogleApi.Content.V21.Model.OrderTrackingSignalShipmentLineItemMapping.t()) | nil,
          :shippingInfo =>
            list(GoogleApi.Content.V21.Model.OrderTrackingSignalShippingInfo.t()) | nil
        }

  field(:customerShippingFee, as: GoogleApi.Content.V21.Model.PriceAmount)
  field(:deliveryPostalCode)
  field(:deliveryRegionCode)

  field(:lineItems,
    as: GoogleApi.Content.V21.Model.OrderTrackingSignalLineItemDetails,
    type: :list
  )

  field(:merchantId)
  field(:orderCreatedTime, as: GoogleApi.Content.V21.Model.DateTime)
  field(:orderId)
  field(:orderTrackingSignalId)

  field(:shipmentLineItemMapping,
    as: GoogleApi.Content.V21.Model.OrderTrackingSignalShipmentLineItemMapping,
    type: :list
  )

  field(:shippingInfo,
    as: GoogleApi.Content.V21.Model.OrderTrackingSignalShippingInfo,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.OrderTrackingSignal do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.OrderTrackingSignal.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.OrderTrackingSignal do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
