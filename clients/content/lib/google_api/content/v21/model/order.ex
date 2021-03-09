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

defmodule GoogleApi.Content.V21.Model.Order do
  @moduledoc """
  Order. Production access (all methods) requires the order manager role. Sandbox access does not.

  ## Attributes

  *   `acknowledged` (*type:* `boolean()`, *default:* `nil`) - Whether the order was acknowledged.
  *   `annotations` (*type:* `list(GoogleApi.Content.V21.Model.OrderOrderAnnotation.t)`, *default:* `nil`) - List of key-value pairs that are attached to a given order.
  *   `billingAddress` (*type:* `GoogleApi.Content.V21.Model.OrderAddress.t`, *default:* `nil`) - The billing address.
  *   `customer` (*type:* `GoogleApi.Content.V21.Model.OrderCustomer.t`, *default:* `nil`) - The details of the customer who placed the order.
  *   `deliveryDetails` (*type:* `GoogleApi.Content.V21.Model.OrderDeliveryDetails.t`, *default:* `nil`) - Delivery details for shipments of type `delivery`.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The REST ID of the order. Globally unique.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string "`content#order`"
  *   `lineItems` (*type:* `list(GoogleApi.Content.V21.Model.OrderLineItem.t)`, *default:* `nil`) - Line items that are ordered.
  *   `merchantId` (*type:* `String.t`, *default:* `nil`) - 
  *   `merchantOrderId` (*type:* `String.t`, *default:* `nil`) - Merchant-provided ID of the order.
  *   `netPriceAmount` (*type:* `GoogleApi.Content.V21.Model.Price.t`, *default:* `nil`) - The net amount for the order (price part). For example, if an order was originally for $100 and a refund was issued for $20, the net amount will be $80.
  *   `netTaxAmount` (*type:* `GoogleApi.Content.V21.Model.Price.t`, *default:* `nil`) - The net amount for the order (tax part). Note that in certain cases due to taxable base adjustment `netTaxAmount` might not match to a sum of tax field across all lineItems and refunds.
  *   `paymentStatus` (*type:* `String.t`, *default:* `nil`) - The status of the payment. Acceptable values are: - "`paymentCaptured`" - "`paymentRejected`" - "`paymentSecured`" - "`pendingAuthorization`" 
  *   `pickupDetails` (*type:* `GoogleApi.Content.V21.Model.OrderPickupDetails.t`, *default:* `nil`) - Pickup details for shipments of type `pickup`.
  *   `placedDate` (*type:* `String.t`, *default:* `nil`) - The date when the order was placed, in ISO 8601 format.
  *   `promotions` (*type:* `list(GoogleApi.Content.V21.Model.OrderPromotion.t)`, *default:* `nil`) - Promotions associated with the order. To determine which promotions apply to which products, check the `Promotions[].appliedItems[].lineItemId` field against the `LineItems[].id` field for each promotion. If a promotion is applied to more than 1 offerId, divide the discount value by the number of affected offers to determine how much discount to apply to each offerId. Examples: 1. To calculate price paid by the customer for a single line item including the discount: For each promotion, subtract the `LineItems[].adjustments[].priceAdjustment.value` amount from the `LineItems[].Price.value`. 2. To calculate price paid by the customer for a single line item including the discount in case of multiple quantity: For each promotion, divide the `LineItems[].adjustments[].priceAdjustment.value` by the quantity of products then subtract the resulting value from the `LineItems[].Product.Price.value` for each quantity item. Only 1 promotion can be applied to an offerId in a given order. To refund an item which had a promotion applied to it, make sure to refund the amount after first subtracting the promotion discount from the item price. More details about the program are here.
  *   `refunds` (*type:* `list(GoogleApi.Content.V21.Model.OrderRefund.t)`, *default:* `nil`) - Refunds for the order.
  *   `shipments` (*type:* `list(GoogleApi.Content.V21.Model.OrderShipment.t)`, *default:* `nil`) - Shipments of the order.
  *   `shippingCost` (*type:* `GoogleApi.Content.V21.Model.Price.t`, *default:* `nil`) - The total cost of shipping for all items.
  *   `shippingCostTax` (*type:* `GoogleApi.Content.V21.Model.Price.t`, *default:* `nil`) - The tax for the total shipping cost.
  *   `status` (*type:* `String.t`, *default:* `nil`) - The status of the order. Acceptable values are: - "`canceled`" - "`delivered`" - "`inProgress`" - "`partiallyDelivered`" - "`partiallyReturned`" - "`partiallyShipped`" - "`pendingShipment`" - "`returned`" - "`shipped`" 
  *   `taxCollector` (*type:* `String.t`, *default:* `nil`) - The party responsible for collecting and remitting taxes. Acceptable values are: - "`marketplaceFacilitator`" - "`merchant`" 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :acknowledged => boolean() | nil,
          :annotations => list(GoogleApi.Content.V21.Model.OrderOrderAnnotation.t()) | nil,
          :billingAddress => GoogleApi.Content.V21.Model.OrderAddress.t() | nil,
          :customer => GoogleApi.Content.V21.Model.OrderCustomer.t() | nil,
          :deliveryDetails => GoogleApi.Content.V21.Model.OrderDeliveryDetails.t() | nil,
          :id => String.t() | nil,
          :kind => String.t() | nil,
          :lineItems => list(GoogleApi.Content.V21.Model.OrderLineItem.t()) | nil,
          :merchantId => String.t() | nil,
          :merchantOrderId => String.t() | nil,
          :netPriceAmount => GoogleApi.Content.V21.Model.Price.t() | nil,
          :netTaxAmount => GoogleApi.Content.V21.Model.Price.t() | nil,
          :paymentStatus => String.t() | nil,
          :pickupDetails => GoogleApi.Content.V21.Model.OrderPickupDetails.t() | nil,
          :placedDate => String.t() | nil,
          :promotions => list(GoogleApi.Content.V21.Model.OrderPromotion.t()) | nil,
          :refunds => list(GoogleApi.Content.V21.Model.OrderRefund.t()) | nil,
          :shipments => list(GoogleApi.Content.V21.Model.OrderShipment.t()) | nil,
          :shippingCost => GoogleApi.Content.V21.Model.Price.t() | nil,
          :shippingCostTax => GoogleApi.Content.V21.Model.Price.t() | nil,
          :status => String.t() | nil,
          :taxCollector => String.t() | nil
        }

  field(:acknowledged)
  field(:annotations, as: GoogleApi.Content.V21.Model.OrderOrderAnnotation, type: :list)
  field(:billingAddress, as: GoogleApi.Content.V21.Model.OrderAddress)
  field(:customer, as: GoogleApi.Content.V21.Model.OrderCustomer)
  field(:deliveryDetails, as: GoogleApi.Content.V21.Model.OrderDeliveryDetails)
  field(:id)
  field(:kind)
  field(:lineItems, as: GoogleApi.Content.V21.Model.OrderLineItem, type: :list)
  field(:merchantId)
  field(:merchantOrderId)
  field(:netPriceAmount, as: GoogleApi.Content.V21.Model.Price)
  field(:netTaxAmount, as: GoogleApi.Content.V21.Model.Price)
  field(:paymentStatus)
  field(:pickupDetails, as: GoogleApi.Content.V21.Model.OrderPickupDetails)
  field(:placedDate)
  field(:promotions, as: GoogleApi.Content.V21.Model.OrderPromotion, type: :list)
  field(:refunds, as: GoogleApi.Content.V21.Model.OrderRefund, type: :list)
  field(:shipments, as: GoogleApi.Content.V21.Model.OrderShipment, type: :list)
  field(:shippingCost, as: GoogleApi.Content.V21.Model.Price)
  field(:shippingCostTax, as: GoogleApi.Content.V21.Model.Price)
  field(:status)
  field(:taxCollector)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.Order do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.Order.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.Order do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
