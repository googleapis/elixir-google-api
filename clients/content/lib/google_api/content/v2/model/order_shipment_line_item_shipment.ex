# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Content.V2.Model.OrderShipmentLineItemShipment do
  @moduledoc """


  ## Attributes

  *   `lineItemId` (*type:* `String.t`, *default:* `nil`) - The ID of the line item that is shipped. Either lineItemId or productId is required.
  *   `productId` (*type:* `String.t`, *default:* `nil`) - The ID of the product to ship. This is the REST ID used in the products service. Either lineItemId or productId is required.
  *   `quantity` (*type:* `integer()`, *default:* `nil`) - The quantity that is shipped.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :lineItemId => String.t(),
          :productId => String.t(),
          :quantity => integer()
        }

  field(:lineItemId)
  field(:productId)
  field(:quantity)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.OrderShipmentLineItemShipment do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.OrderShipmentLineItemShipment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.OrderShipmentLineItemShipment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
