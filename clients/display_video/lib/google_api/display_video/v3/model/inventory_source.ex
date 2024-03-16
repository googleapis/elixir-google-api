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

defmodule GoogleApi.DisplayVideo.V3.Model.InventorySource do
  @moduledoc """
  An inventory source.

  ## Attributes

  *   `commitment` (*type:* `String.t`, *default:* `nil`) - Whether the inventory source has a guaranteed or non-guaranteed delivery.
  *   `creativeConfigs` (*type:* `list(GoogleApi.DisplayVideo.V3.Model.CreativeConfig.t)`, *default:* `nil`) - The creative requirements of the inventory source. Not applicable for auction packages.
  *   `dealId` (*type:* `String.t`, *default:* `nil`) - The ID in the exchange space that uniquely identifies the inventory source. Must be unique across buyers within each exchange but not necessarily unique across exchanges.
  *   `deliveryMethod` (*type:* `String.t`, *default:* `nil`) - The delivery method of the inventory source. * For non-guaranteed inventory sources, the only acceptable value is `INVENTORY_SOURCE_DELIVERY_METHOD_PROGRAMMATIC`. * For guaranteed inventory sources, acceptable values are `INVENTORY_SOURCE_DELIVERY_METHOD_TAG` and `INVENTORY_SOURCE_DELIVERY_METHOD_PROGRAMMATIC`.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The display name of the inventory source. Must be UTF-8 encoded with a maximum size of 240 bytes.
  *   `exchange` (*type:* `String.t`, *default:* `nil`) - The exchange to which the inventory source belongs.
  *   `guaranteedOrderId` (*type:* `String.t`, *default:* `nil`) - Immutable. The ID of the guaranteed order that this inventory source belongs to. Only applicable when commitment is `INVENTORY_SOURCE_COMMITMENT_GUARANTEED`.
  *   `inventorySourceId` (*type:* `String.t`, *default:* `nil`) - Output only. The unique ID of the inventory source. Assigned by the system.
  *   `inventorySourceProductType` (*type:* `String.t`, *default:* `nil`) - Output only. The product type of the inventory source, denoting the way through which it sells inventory.
  *   `inventorySourceType` (*type:* `String.t`, *default:* `nil`) - Denotes the type of the inventory source.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the inventory source.
  *   `publisherName` (*type:* `String.t`, *default:* `nil`) - The publisher/seller name of the inventory source.
  *   `rateDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.RateDetails.t`, *default:* `nil`) - Required. The rate details of the inventory source.
  *   `readAdvertiserIds` (*type:* `list(String.t)`, *default:* `nil`) - Output only. The IDs of advertisers with read-only access to the inventory source.
  *   `readPartnerIds` (*type:* `list(String.t)`, *default:* `nil`) - Output only. The IDs of partners with read-only access to the inventory source. All advertisers of partners in this field inherit read-only access to the inventory source.
  *   `readWriteAccessors` (*type:* `GoogleApi.DisplayVideo.V3.Model.InventorySourceAccessors.t`, *default:* `nil`) - The partner or advertisers that have read/write access to the inventory source. Output only when commitment is `INVENTORY_SOURCE_COMMITMENT_GUARANTEED`, in which case the read/write accessors are inherited from the parent guaranteed order. Required when commitment is `INVENTORY_SOURCE_COMMITMENT_NON_GUARANTEED`. If commitment is `INVENTORY_SOURCE_COMMITMENT_NON_GUARANTEED` and a partner is set in this field, all advertisers under this partner will automatically have read-only access to the inventory source. These advertisers will not be included in read_advertiser_ids.
  *   `status` (*type:* `GoogleApi.DisplayVideo.V3.Model.InventorySourceStatus.t`, *default:* `nil`) - The status settings of the inventory source.
  *   `timeRange` (*type:* `GoogleApi.DisplayVideo.V3.Model.TimeRange.t`, *default:* `nil`) - The time range when this inventory source starts and stops serving.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp when the inventory source was last updated. Assigned by the system.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :commitment => String.t() | nil,
          :creativeConfigs => list(GoogleApi.DisplayVideo.V3.Model.CreativeConfig.t()) | nil,
          :dealId => String.t() | nil,
          :deliveryMethod => String.t() | nil,
          :displayName => String.t() | nil,
          :exchange => String.t() | nil,
          :guaranteedOrderId => String.t() | nil,
          :inventorySourceId => String.t() | nil,
          :inventorySourceProductType => String.t() | nil,
          :inventorySourceType => String.t() | nil,
          :name => String.t() | nil,
          :publisherName => String.t() | nil,
          :rateDetails => GoogleApi.DisplayVideo.V3.Model.RateDetails.t() | nil,
          :readAdvertiserIds => list(String.t()) | nil,
          :readPartnerIds => list(String.t()) | nil,
          :readWriteAccessors =>
            GoogleApi.DisplayVideo.V3.Model.InventorySourceAccessors.t() | nil,
          :status => GoogleApi.DisplayVideo.V3.Model.InventorySourceStatus.t() | nil,
          :timeRange => GoogleApi.DisplayVideo.V3.Model.TimeRange.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:commitment)
  field(:creativeConfigs, as: GoogleApi.DisplayVideo.V3.Model.CreativeConfig, type: :list)
  field(:dealId)
  field(:deliveryMethod)
  field(:displayName)
  field(:exchange)
  field(:guaranteedOrderId)
  field(:inventorySourceId)
  field(:inventorySourceProductType)
  field(:inventorySourceType)
  field(:name)
  field(:publisherName)
  field(:rateDetails, as: GoogleApi.DisplayVideo.V3.Model.RateDetails)
  field(:readAdvertiserIds, type: :list)
  field(:readPartnerIds, type: :list)
  field(:readWriteAccessors, as: GoogleApi.DisplayVideo.V3.Model.InventorySourceAccessors)
  field(:status, as: GoogleApi.DisplayVideo.V3.Model.InventorySourceStatus)
  field(:timeRange, as: GoogleApi.DisplayVideo.V3.Model.TimeRange)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V3.Model.InventorySource do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V3.Model.InventorySource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V3.Model.InventorySource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end