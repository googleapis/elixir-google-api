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

defmodule GoogleApi.DisplayVideo.V1.Model.InventorySource do
  @moduledoc """
  An inventory source.

  ## Attributes

  *   `commitment` (*type:* `String.t`, *default:* `nil`) - Whether the inventory source has a guaranteed or non-guaranteed delivery.
  *   `creativeConfigs` (*type:* `list(GoogleApi.DisplayVideo.V1.Model.CreativeConfig.t)`, *default:* `nil`) - The creative requirements of the inventory source. Not applicable for auction packages.
  *   `dealId` (*type:* `String.t`, *default:* `nil`) - The ID in the exchange space that uniquely identifies the inventory source. Must be unique across buyers within each exchange but not necessarily unique across exchanges.
  *   `deliveryMethod` (*type:* `String.t`, *default:* `nil`) - The delivery method of the inventory source. * For non-guaranteed inventory sources, the only acceptable value is `INVENTORY_SOURCE_DELIVERY_METHOD_PROGRAMMATIC`. * For guaranteed inventory sources, acceptable values are `INVENTORY_SOURCE_DELIVERY_METHOD_TAG` and `INVENTORY_SOURCE_DELIVERY_METHOD_PROGRAMMATIC`.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The display name of the inventory source. Must be UTF-8 encoded with a maximum size of 240 bytes.
  *   `exchange` (*type:* `String.t`, *default:* `nil`) - The exchange to which the inventory source belongs.
  *   `inventorySourceId` (*type:* `String.t`, *default:* `nil`) - Output only. The unique ID of the inventory source. Assigned by the system.
  *   `inventorySourceType` (*type:* `String.t`, *default:* `nil`) - Denotes the type of the inventory source.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the inventory source.
  *   `publisherName` (*type:* `String.t`, *default:* `nil`) - The publisher/seller name of the inventory source.
  *   `rateDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.RateDetails.t`, *default:* `nil`) - Required. The rate details of the inventory source.
  *   `status` (*type:* `GoogleApi.DisplayVideo.V1.Model.InventorySourceStatus.t`, *default:* `nil`) - The status settings of the inventory source.
  *   `timeRange` (*type:* `GoogleApi.DisplayVideo.V1.Model.TimeRange.t`, *default:* `nil`) - The time range when this inventory source starts and stops serving.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp when the inventory source was last updated. Assigned by the system.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :commitment => String.t(),
          :creativeConfigs => list(GoogleApi.DisplayVideo.V1.Model.CreativeConfig.t()),
          :dealId => String.t(),
          :deliveryMethod => String.t(),
          :displayName => String.t(),
          :exchange => String.t(),
          :inventorySourceId => String.t(),
          :inventorySourceType => String.t(),
          :name => String.t(),
          :publisherName => String.t(),
          :rateDetails => GoogleApi.DisplayVideo.V1.Model.RateDetails.t(),
          :status => GoogleApi.DisplayVideo.V1.Model.InventorySourceStatus.t(),
          :timeRange => GoogleApi.DisplayVideo.V1.Model.TimeRange.t(),
          :updateTime => DateTime.t()
        }

  field(:commitment)
  field(:creativeConfigs, as: GoogleApi.DisplayVideo.V1.Model.CreativeConfig, type: :list)
  field(:dealId)
  field(:deliveryMethod)
  field(:displayName)
  field(:exchange)
  field(:inventorySourceId)
  field(:inventorySourceType)
  field(:name)
  field(:publisherName)
  field(:rateDetails, as: GoogleApi.DisplayVideo.V1.Model.RateDetails)
  field(:status, as: GoogleApi.DisplayVideo.V1.Model.InventorySourceStatus)
  field(:timeRange, as: GoogleApi.DisplayVideo.V1.Model.TimeRange)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V1.Model.InventorySource do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V1.Model.InventorySource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V1.Model.InventorySource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
