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

defmodule GoogleApi.ContentWarehouse.V1.Model.TrawlerHostBucketDataUrlList do
  @moduledoc """
  Per each list that wishes to schedule url we return one of these:

  ## Attributes

  *   `ClientCanCrawl` (*type:* `boolean()`, *default:* `nil`) - Is this client/requestorid allowed to crawl now? (based on resource use)
  *   `IsDefaultNode` (*type:* `boolean()`, *default:* `nil`) - Is this the 'default' user's list
  *   `IsListForUrl` (*type:* `boolean()`, *default:* `nil`) - Was this the list that a given request landed in?
  *   `NumCurrentFetches` (*type:* `integer()`, *default:* `nil`) - # of current active fetches
  *   `NumUrls` (*type:* `integer()`, *default:* `nil`) - # of urls currently in the queue
  *   `PartnerTotalCapacityQps` (*type:* `number()`, *default:* `nil`) - Total qps for this partner dedicated hostload, for non partner it will be -1.0.
  *   `PartnerTotalUsedQps` (*type:* `number()`, *default:* `nil`) - Currently used qps for this partner dedicated hostlaod, for non partner it will be -1.0.
  *   `RequestType` (*type:* `String.t`, *default:* `nil`) - The type of the request (low latency vs. high throughput)
  *   `RequestorFp` (*type:* `String.t`, *default:* `nil`) - The fp64 of the requestor string
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ClientCanCrawl => boolean() | nil,
          :IsDefaultNode => boolean() | nil,
          :IsListForUrl => boolean() | nil,
          :NumCurrentFetches => integer() | nil,
          :NumUrls => integer() | nil,
          :PartnerTotalCapacityQps => number() | nil,
          :PartnerTotalUsedQps => number() | nil,
          :RequestType => String.t() | nil,
          :RequestorFp => String.t() | nil
        }

  field(:ClientCanCrawl)
  field(:IsDefaultNode)
  field(:IsListForUrl)
  field(:NumCurrentFetches)
  field(:NumUrls)
  field(:PartnerTotalCapacityQps)
  field(:PartnerTotalUsedQps)
  field(:RequestType)
  field(:RequestorFp)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.TrawlerHostBucketDataUrlList do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.TrawlerHostBucketDataUrlList.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.TrawlerHostBucketDataUrlList do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
