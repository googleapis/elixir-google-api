# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.DFAReporting.V28.Model.InventoryItem do
  @moduledoc """
  Represents a buy from the Planning inventory store.

  ## Attributes

  - accountId (String.t): Account ID of this inventory item. Defaults to: `null`.
  - adSlots ([AdSlot]): Ad slots of this inventory item. If this inventory item represents a standalone placement, there will be exactly one ad slot. If this inventory item represents a placement group, there will be more than one ad slot, each representing one child placement in that placement group. Defaults to: `null`.
  - advertiserId (String.t): Advertiser ID of this inventory item. Defaults to: `null`.
  - contentCategoryId (String.t): Content category ID of this inventory item. Defaults to: `null`.
  - estimatedClickThroughRate (String.t): Estimated click-through rate of this inventory item. Defaults to: `null`.
  - estimatedConversionRate (String.t): Estimated conversion rate of this inventory item. Defaults to: `null`.
  - id (String.t): ID of this inventory item. Defaults to: `null`.
  - inPlan (boolean()): Whether this inventory item is in plan. Defaults to: `null`.
  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string \&quot;dfareporting#inventoryItem\&quot;. Defaults to: `null`.
  - lastModifiedInfo (LastModifiedInfo): Information about the most recent modification of this inventory item. Defaults to: `null`.
  - name (String.t): Name of this inventory item. For standalone inventory items, this is the same name as that of its only ad slot. For group inventory items, this can differ from the name of any of its ad slots. Defaults to: `null`.
  - negotiationChannelId (String.t): Negotiation channel ID of this inventory item. Defaults to: `null`.
  - orderId (String.t): Order ID of this inventory item. Defaults to: `null`.
  - placementStrategyId (String.t): Placement strategy ID of this inventory item. Defaults to: `null`.
  - pricing (Pricing): Pricing of this inventory item. Defaults to: `null`.
  - projectId (String.t): Project ID of this inventory item. Defaults to: `null`.
  - rfpId (String.t): RFP ID of this inventory item. Defaults to: `null`.
  - siteId (String.t): ID of the site this inventory item is associated with. Defaults to: `null`.
  - subaccountId (String.t): Subaccount ID of this inventory item. Defaults to: `null`.
  - type (String.t): Type of inventory item. Defaults to: `null`.
    - Enum - one of [PLANNING_PLACEMENT_TYPE_CREDIT, PLANNING_PLACEMENT_TYPE_REGULAR]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => any(),
          :adSlots => list(GoogleApi.DFAReporting.V28.Model.AdSlot.t()),
          :advertiserId => any(),
          :contentCategoryId => any(),
          :estimatedClickThroughRate => any(),
          :estimatedConversionRate => any(),
          :id => any(),
          :inPlan => any(),
          :kind => any(),
          :lastModifiedInfo => GoogleApi.DFAReporting.V28.Model.LastModifiedInfo.t(),
          :name => any(),
          :negotiationChannelId => any(),
          :orderId => any(),
          :placementStrategyId => any(),
          :pricing => GoogleApi.DFAReporting.V28.Model.Pricing.t(),
          :projectId => any(),
          :rfpId => any(),
          :siteId => any(),
          :subaccountId => any(),
          :type => any()
        }

  field(:accountId)
  field(:adSlots, as: GoogleApi.DFAReporting.V28.Model.AdSlot, type: :list)
  field(:advertiserId)
  field(:contentCategoryId)
  field(:estimatedClickThroughRate)
  field(:estimatedConversionRate)
  field(:id)
  field(:inPlan)
  field(:kind)
  field(:lastModifiedInfo, as: GoogleApi.DFAReporting.V28.Model.LastModifiedInfo)
  field(:name)
  field(:negotiationChannelId)
  field(:orderId)
  field(:placementStrategyId)
  field(:pricing, as: GoogleApi.DFAReporting.V28.Model.Pricing)
  field(:projectId)
  field(:rfpId)
  field(:siteId)
  field(:subaccountId)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V28.Model.InventoryItem do
  def decode(value, options) do
    GoogleApi.DFAReporting.V28.Model.InventoryItem.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V28.Model.InventoryItem do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
