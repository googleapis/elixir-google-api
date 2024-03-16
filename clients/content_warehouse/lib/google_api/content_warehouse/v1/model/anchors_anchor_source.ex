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

defmodule GoogleApi.ContentWarehouse.V1.Model.AnchorsAnchorSource do
  @moduledoc """
  attributes of the source document for the link

  ## Attributes

  *   `additionalInfo` (*type:* `GoogleApi.ContentWarehouse.V1.Model.Proto2BridgeMessageSet.t`, *default:* `nil`) - Additional information related to the source, such as news hub info.
  *   `cluster` (*type:* `integer()`, *default:* `nil`) - anchor++ cluster id
  *   `compressedUrl` (*type:* `String.t`, *default:* `nil`) - compressed source url
  *   `crawlTimestamp` (*type:* `String.t`, *default:* `nil`) - Source page crawl timestamp.
  *   `docid` (*type:* `String.t`, *default:* `nil`) - The docid field used to be "required", but it is now "optional" because it is not present when anchors are stored in webtable. When anchors are stored as part of docjoin files in the segment indexer, however, docid should be considered required.
  *   `doclength` (*type:* `integer()`, *default:* `nil`) - necessary for anything?
  *   `homePageInfo` (*type:* `integer()`, *default:* `nil`) - Information about if the source page is a home page. It can be one of the enum values defined in PerDocData::HomePageInfo (NOT_HOMEPAGE, NOT_TRUSTED, PARTIALLY_TRUSTED, and FULLY_TRUSTED).
  *   `indyrank` (*type:* `integer()`, *default:* `nil`) - uint16 scale
  *   `ipaddr` (*type:* `integer()`, *default:* `nil`) - DEPRECATED, use packed_ipaddress
  *   `language` (*type:* `integer()`, *default:* `nil`) - default -> English
  *   `linkhash` (*type:* `String.t`, *default:* `nil`) - 0 -> no hash
  *   `localCountryCodes` (*type:* `list(integer())`, *default:* `nil`) - Countries to which the source page is local/most relevant; stored as III identifiers for country/region codes (see http://go/iii).
  *   `nsr` (*type:* `integer()`, *default:* `nil`) - This NSR value has range [0,1000] and is the original value [0.0,1.0] multiplied by 1000 rounded to an integer.
  *   `outdegree` (*type:* `integer()`, *default:* `nil`) - 
  *   `outsites` (*type:* `integer()`, *default:* `nil`) - approx num of pointed-to sites
  *   `packedIpaddress` (*type:* `String.t`, *default:* `nil`) - string in IPAddress::ToPackedString() format.
  *   `pageTags` (*type:* `list(integer())`, *default:* `nil`) - Page tags are described by enum PageTag in PerDocData. Page tags are used in anchors to identify properties of the linking page. These are DEPRECATED: in the future, use link_tags instead. DEPRECATED
  *   `pagerank` (*type:* `integer()`, *default:* `nil`) - uint16 scale
  *   `pagerankNs` (*type:* `integer()`, *default:* `nil`) - unit16 scale
  *   `seglanguage` (*type:* `integer()`, *default:* `nil`) - DEPRECATED
  *   `site` (*type:* `String.t`, *default:* `nil`) - 
  *   `spamrank` (*type:* `integer()`, *default:* `nil`) - uint16 scale
  *   `spamscore1` (*type:* `integer()`, *default:* `nil`) - deprecated, to be removed after October 20. 0-127 scale
  *   `spamscore2` (*type:* `integer()`, *default:* `nil`) - 0-127 scale
  *   `webtableKey` (*type:* `String.t`, *default:* `nil`) - Webtable key of source
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :additionalInfo => GoogleApi.ContentWarehouse.V1.Model.Proto2BridgeMessageSet.t() | nil,
          :cluster => integer() | nil,
          :compressedUrl => String.t() | nil,
          :crawlTimestamp => String.t() | nil,
          :docid => String.t() | nil,
          :doclength => integer() | nil,
          :homePageInfo => integer() | nil,
          :indyrank => integer() | nil,
          :ipaddr => integer() | nil,
          :language => integer() | nil,
          :linkhash => String.t() | nil,
          :localCountryCodes => list(integer()) | nil,
          :nsr => integer() | nil,
          :outdegree => integer() | nil,
          :outsites => integer() | nil,
          :packedIpaddress => String.t() | nil,
          :pageTags => list(integer()) | nil,
          :pagerank => integer() | nil,
          :pagerankNs => integer() | nil,
          :seglanguage => integer() | nil,
          :site => String.t() | nil,
          :spamrank => integer() | nil,
          :spamscore1 => integer() | nil,
          :spamscore2 => integer() | nil,
          :webtableKey => String.t() | nil
        }

  field(:additionalInfo, as: GoogleApi.ContentWarehouse.V1.Model.Proto2BridgeMessageSet)
  field(:cluster)
  field(:compressedUrl)
  field(:crawlTimestamp)
  field(:docid)
  field(:doclength)
  field(:homePageInfo)
  field(:indyrank)
  field(:ipaddr)
  field(:language)
  field(:linkhash)
  field(:localCountryCodes, type: :list)
  field(:nsr)
  field(:outdegree)
  field(:outsites)
  field(:packedIpaddress)
  field(:pageTags, type: :list)
  field(:pagerank)
  field(:pagerankNs)
  field(:seglanguage)
  field(:site)
  field(:spamrank)
  field(:spamscore1)
  field(:spamscore2)
  field(:webtableKey)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.AnchorsAnchorSource do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AnchorsAnchorSource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.AnchorsAnchorSource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end