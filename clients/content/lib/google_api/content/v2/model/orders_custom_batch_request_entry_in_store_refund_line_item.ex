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

defmodule GoogleApi.Content.V2.Model.OrdersCustomBatchRequestEntryInStoreRefundLineItem do
  @moduledoc """


  ## Attributes

  *   `amountPretax` (*type:* `GoogleApi.Content.V2.Model.Price.t`, *default:* `nil`) - The amount that is refunded. Required.
  *   `amountTax` (*type:* `GoogleApi.Content.V2.Model.Price.t`, *default:* `nil`) - Tax amount that correspond to refund amount in amountPretax. Required.
  *   `lineItemId` (*type:* `String.t`, *default:* `nil`) - The ID of the line item to return. Either lineItemId or productId is required.
  *   `productId` (*type:* `String.t`, *default:* `nil`) - The ID of the product to return. This is the REST ID used in the products service. Either lineItemId or productId is required.
  *   `quantity` (*type:* `integer()`, *default:* `nil`) - The quantity to return and refund.
  *   `reason` (*type:* `String.t`, *default:* `nil`) - The reason for the return.
  *   `reasonText` (*type:* `String.t`, *default:* `nil`) - The explanation of the reason.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :amountPretax => GoogleApi.Content.V2.Model.Price.t(),
          :amountTax => GoogleApi.Content.V2.Model.Price.t(),
          :lineItemId => String.t(),
          :productId => String.t(),
          :quantity => integer(),
          :reason => String.t(),
          :reasonText => String.t()
        }

  field(:amountPretax, as: GoogleApi.Content.V2.Model.Price)
  field(:amountTax, as: GoogleApi.Content.V2.Model.Price)
  field(:lineItemId)
  field(:productId)
  field(:quantity)
  field(:reason)
  field(:reasonText)
end

defimpl Poison.Decoder,
  for: GoogleApi.Content.V2.Model.OrdersCustomBatchRequestEntryInStoreRefundLineItem do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.OrdersCustomBatchRequestEntryInStoreRefundLineItem.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Content.V2.Model.OrdersCustomBatchRequestEntryInStoreRefundLineItem do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
