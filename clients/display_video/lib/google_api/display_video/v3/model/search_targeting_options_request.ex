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

defmodule GoogleApi.DisplayVideo.V3.Model.SearchTargetingOptionsRequest do
  @moduledoc """
  Request message for SearchTargetingOptions.

  ## Attributes

  *   `advertiserId` (*type:* `String.t`, *default:* `nil`) - Required. The Advertiser this request is being made in the context of.
  *   `businessChainSearchTerms` (*type:* `GoogleApi.DisplayVideo.V3.Model.BusinessChainSearchTerms.t`, *default:* `nil`) - Search terms for Business Chain targeting options. Can only be used when targeting_type is `TARGETING_TYPE_BUSINESS_CHAIN`.
  *   `geoRegionSearchTerms` (*type:* `GoogleApi.DisplayVideo.V3.Model.GeoRegionSearchTerms.t`, *default:* `nil`) - Search terms for geo region targeting options. Can only be used when targeting_type is `TARGETING_TYPE_GEO_REGION`.
  *   `pageSize` (*type:* `integer()`, *default:* `nil`) - Requested page size. Must be between `1` and `200`. If unspecified will default to `100`. Returns error code `INVALID_ARGUMENT` if an invalid value is specified.
  *   `pageToken` (*type:* `String.t`, *default:* `nil`) - A token identifying a page of results the server should return. Typically, this is the value of next_page_token returned from the previous call to `SearchTargetingOptions` method. If not specified, the first page of results will be returned.
  *   `poiSearchTerms` (*type:* `GoogleApi.DisplayVideo.V3.Model.PoiSearchTerms.t`, *default:* `nil`) - Search terms for POI targeting options. Can only be used when targeting_type is `TARGETING_TYPE_POI`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :advertiserId => String.t() | nil,
          :businessChainSearchTerms =>
            GoogleApi.DisplayVideo.V3.Model.BusinessChainSearchTerms.t() | nil,
          :geoRegionSearchTerms => GoogleApi.DisplayVideo.V3.Model.GeoRegionSearchTerms.t() | nil,
          :pageSize => integer() | nil,
          :pageToken => String.t() | nil,
          :poiSearchTerms => GoogleApi.DisplayVideo.V3.Model.PoiSearchTerms.t() | nil
        }

  field(:advertiserId)
  field(:businessChainSearchTerms, as: GoogleApi.DisplayVideo.V3.Model.BusinessChainSearchTerms)
  field(:geoRegionSearchTerms, as: GoogleApi.DisplayVideo.V3.Model.GeoRegionSearchTerms)
  field(:pageSize)
  field(:pageToken)
  field(:poiSearchTerms, as: GoogleApi.DisplayVideo.V3.Model.PoiSearchTerms)
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V3.Model.SearchTargetingOptionsRequest do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V3.Model.SearchTargetingOptionsRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V3.Model.SearchTargetingOptionsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end