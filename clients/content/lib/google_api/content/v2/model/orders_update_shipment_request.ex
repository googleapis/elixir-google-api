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

defmodule GoogleApi.Content.V2.Model.OrdersUpdateShipmentRequest do
  @moduledoc """


  ## Attributes

  *   `carrier` (*type:* `String.t`, *default:* `nil`) - The carrier handling the shipment. Not updated if missing. See `shipments[].carrier` in the Orders resource representation for a list of acceptable values.
  *   `deliveryDate` (*type:* `String.t`, *default:* `nil`) - Date on which the shipment has been delivered, in ISO 8601 format. Optional and can be provided only if `status` is `delivered`.
  *   `operationId` (*type:* `String.t`, *default:* `nil`) - The ID of the operation. Unique across all operations for a given order.
  *   `shipmentId` (*type:* `String.t`, *default:* `nil`) - The ID of the shipment.
  *   `status` (*type:* `String.t`, *default:* `nil`) - New status for the shipment. Not updated if missing. Acceptable values are: - "`delivered`" - "`undeliverable`" - "`readyForPickup`" 
  *   `trackingId` (*type:* `String.t`, *default:* `nil`) - The tracking ID for the shipment. Not updated if missing.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :carrier => String.t(),
          :deliveryDate => String.t(),
          :operationId => String.t(),
          :shipmentId => String.t(),
          :status => String.t(),
          :trackingId => String.t()
        }

  field(:carrier)
  field(:deliveryDate)
  field(:operationId)
  field(:shipmentId)
  field(:status)
  field(:trackingId)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.OrdersUpdateShipmentRequest do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.OrdersUpdateShipmentRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.OrdersUpdateShipmentRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
