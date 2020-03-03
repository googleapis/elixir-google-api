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

defmodule GoogleApi.Content.V21.Model.ReturnShipment do
  @moduledoc """


  ## Attributes

  *   `creationDate` (*type:* `String.t`, *default:* `nil`) - The date of creation of the shipment, in ISO 8601 format.
  *   `deliveryDate` (*type:* `String.t`, *default:* `nil`) - The date of delivery of the shipment, in ISO 8601 format.
  *   `returnMethodType` (*type:* `String.t`, *default:* `nil`) - Type of the return method.
  *   `shipmentId` (*type:* `String.t`, *default:* `nil`) - Shipment ID generated by Google.
  *   `shipmentTrackingInfos` (*type:* `list(GoogleApi.Content.V21.Model.ShipmentTrackingInfo.t)`, *default:* `nil`) - Tracking information of the shipment. One return shipment might be handled by several shipping carriers sequentially.
  *   `shippingDate` (*type:* `String.t`, *default:* `nil`) - The date of shipping of the shipment, in ISO 8601 format.
  *   `state` (*type:* `String.t`, *default:* `nil`) - State of the shipment.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creationDate => String.t(),
          :deliveryDate => String.t(),
          :returnMethodType => String.t(),
          :shipmentId => String.t(),
          :shipmentTrackingInfos => list(GoogleApi.Content.V21.Model.ShipmentTrackingInfo.t()),
          :shippingDate => String.t(),
          :state => String.t()
        }

  field(:creationDate)
  field(:deliveryDate)
  field(:returnMethodType)
  field(:shipmentId)
  field(:shipmentTrackingInfos, as: GoogleApi.Content.V21.Model.ShipmentTrackingInfo, type: :list)
  field(:shippingDate)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.ReturnShipment do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.ReturnShipment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.ReturnShipment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
