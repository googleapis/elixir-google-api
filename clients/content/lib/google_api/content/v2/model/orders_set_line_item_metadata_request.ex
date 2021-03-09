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

defmodule GoogleApi.Content.V2.Model.OrdersSetLineItemMetadataRequest do
  @moduledoc """


  ## Attributes

  *   `annotations` (*type:* `list(GoogleApi.Content.V2.Model.OrderMerchantProvidedAnnotation.t)`, *default:* `nil`) - 
  *   `lineItemId` (*type:* `String.t`, *default:* `nil`) - The ID of the line item to set metadata. Either lineItemId or productId is required.
  *   `operationId` (*type:* `String.t`, *default:* `nil`) - The ID of the operation. Unique across all operations for a given order.
  *   `productId` (*type:* `String.t`, *default:* `nil`) - The ID of the product to set metadata. This is the REST ID used in the products service. Either lineItemId or productId is required.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :annotations =>
            list(GoogleApi.Content.V2.Model.OrderMerchantProvidedAnnotation.t()) | nil,
          :lineItemId => String.t() | nil,
          :operationId => String.t() | nil,
          :productId => String.t() | nil
        }

  field(:annotations, as: GoogleApi.Content.V2.Model.OrderMerchantProvidedAnnotation, type: :list)
  field(:lineItemId)
  field(:operationId)
  field(:productId)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.OrdersSetLineItemMetadataRequest do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.OrdersSetLineItemMetadataRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.OrdersSetLineItemMetadataRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
