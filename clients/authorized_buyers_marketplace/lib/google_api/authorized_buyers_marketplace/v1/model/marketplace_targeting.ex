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

defmodule GoogleApi.AuthorizedBuyersMarketplace.V1.Model.MarketplaceTargeting do
  @moduledoc """
  Targeting represents different criteria that can be used to target inventory. For example, they can choose to target inventory only if the user is in the US. Multiple types of targeting are always applied as a logical AND, unless noted otherwise.

  ## Attributes

  *   `daypartTargeting` (*type:* `GoogleApi.AuthorizedBuyersMarketplace.V1.Model.DayPartTargeting.t`, *default:* `nil`) - Daypart targeting information.
  *   `geoTargeting` (*type:* `GoogleApi.AuthorizedBuyersMarketplace.V1.Model.CriteriaTargeting.t`, *default:* `nil`) - Output only. Geo criteria IDs to be included/excluded.
  *   `inventorySizeTargeting` (*type:* `GoogleApi.AuthorizedBuyersMarketplace.V1.Model.InventorySizeTargeting.t`, *default:* `nil`) - Output only. Inventory sizes to be included/excluded.
  *   `placementTargeting` (*type:* `GoogleApi.AuthorizedBuyersMarketplace.V1.Model.PlacementTargeting.t`, *default:* `nil`) - Output only. Placement targeting information, for example, URL, mobile applications.
  *   `technologyTargeting` (*type:* `GoogleApi.AuthorizedBuyersMarketplace.V1.Model.TechnologyTargeting.t`, *default:* `nil`) - Output only. Technology targeting information, for example, operating system, device category.
  *   `userListTargeting` (*type:* `GoogleApi.AuthorizedBuyersMarketplace.V1.Model.CriteriaTargeting.t`, *default:* `nil`) - Buyer user list targeting information. User lists can be uploaded using https://developers.google.com/authorized-buyers/rtb/bulk-uploader.
  *   `videoTargeting` (*type:* `GoogleApi.AuthorizedBuyersMarketplace.V1.Model.VideoTargeting.t`, *default:* `nil`) - Output only. Video targeting information.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :daypartTargeting =>
            GoogleApi.AuthorizedBuyersMarketplace.V1.Model.DayPartTargeting.t() | nil,
          :geoTargeting =>
            GoogleApi.AuthorizedBuyersMarketplace.V1.Model.CriteriaTargeting.t() | nil,
          :inventorySizeTargeting =>
            GoogleApi.AuthorizedBuyersMarketplace.V1.Model.InventorySizeTargeting.t() | nil,
          :placementTargeting =>
            GoogleApi.AuthorizedBuyersMarketplace.V1.Model.PlacementTargeting.t() | nil,
          :technologyTargeting =>
            GoogleApi.AuthorizedBuyersMarketplace.V1.Model.TechnologyTargeting.t() | nil,
          :userListTargeting =>
            GoogleApi.AuthorizedBuyersMarketplace.V1.Model.CriteriaTargeting.t() | nil,
          :videoTargeting =>
            GoogleApi.AuthorizedBuyersMarketplace.V1.Model.VideoTargeting.t() | nil
        }

  field(:daypartTargeting, as: GoogleApi.AuthorizedBuyersMarketplace.V1.Model.DayPartTargeting)
  field(:geoTargeting, as: GoogleApi.AuthorizedBuyersMarketplace.V1.Model.CriteriaTargeting)

  field(:inventorySizeTargeting,
    as: GoogleApi.AuthorizedBuyersMarketplace.V1.Model.InventorySizeTargeting
  )

  field(:placementTargeting, as: GoogleApi.AuthorizedBuyersMarketplace.V1.Model.PlacementTargeting)

  field(:technologyTargeting,
    as: GoogleApi.AuthorizedBuyersMarketplace.V1.Model.TechnologyTargeting
  )

  field(:userListTargeting, as: GoogleApi.AuthorizedBuyersMarketplace.V1.Model.CriteriaTargeting)
  field(:videoTargeting, as: GoogleApi.AuthorizedBuyersMarketplace.V1.Model.VideoTargeting)
end

defimpl Poison.Decoder, for: GoogleApi.AuthorizedBuyersMarketplace.V1.Model.MarketplaceTargeting do
  def decode(value, options) do
    GoogleApi.AuthorizedBuyersMarketplace.V1.Model.MarketplaceTargeting.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AuthorizedBuyersMarketplace.V1.Model.MarketplaceTargeting do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
