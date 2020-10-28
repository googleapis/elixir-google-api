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

defmodule GoogleApi.Content.V2.Model.OrdersRejectReturnLineItemRequest do
  @moduledoc """


  ## Attributes

  *   `lineItemId` (*type:* `String.t`, *default:* `nil`) - The ID of the line item to return. Either lineItemId or productId is required.
  *   `operationId` (*type:* `String.t`, *default:* `nil`) - The ID of the operation. Unique across all operations for a given order.
  *   `productId` (*type:* `String.t`, *default:* `nil`) - The ID of the product to return. This is the REST ID used in the products service. Either lineItemId or productId is required.
  *   `quantity` (*type:* `integer()`, *default:* `nil`) - The quantity to return and refund.
  *   `reason` (*type:* `String.t`, *default:* `nil`) - The reason for the return. Acceptable values are: - "`damagedOrUsed`" - "`missingComponent`" - "`notEligible`" - "`other`" - "`outOfReturnWindow`" 
  *   `reasonText` (*type:* `String.t`, *default:* `nil`) - The explanation of the reason.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :lineItemId => String.t(),
          :operationId => String.t(),
          :productId => String.t(),
          :quantity => integer(),
          :reason => String.t(),
          :reasonText => String.t()
        }

  field(:lineItemId)
  field(:operationId)
  field(:productId)
  field(:quantity)
  field(:reason)
  field(:reasonText)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.OrdersRejectReturnLineItemRequest do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.OrdersRejectReturnLineItemRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.OrdersRejectReturnLineItemRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
