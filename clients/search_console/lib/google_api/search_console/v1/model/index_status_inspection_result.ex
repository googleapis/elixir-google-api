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

defmodule GoogleApi.SearchConsole.V1.Model.IndexStatusInspectionResult do
  @moduledoc """
  Results of index status inspection for either the live page or the version in Google's index, depending on whether you requested a live inspection or not. For more information, see the [Index coverage report documentation](https://support.google.com/webmasters/answer/7440203).

  ## Attributes

  *   `coverageState` (*type:* `String.t`, *default:* `nil`) - Could Google find and index the page. More details about page indexing appear in 'indexing_state'.
  *   `crawledAs` (*type:* `String.t`, *default:* `nil`) - Primary crawler that was used by Google to crawl your site.
  *   `googleCanonical` (*type:* `String.t`, *default:* `nil`) - The URL of the page that Google selected as canonical. If the page was not indexed, this field is absent.
  *   `indexingState` (*type:* `String.t`, *default:* `nil`) - Whether or not the page blocks indexing through a noindex rule.
  *   `lastCrawlTime` (*type:* `DateTime.t`, *default:* `nil`) - Last time this URL was crawled by Google using the [primary crawler](https://support.google.com/webmasters/answer/7440203#primary_crawler). Absent if the URL was never crawled successfully.
  *   `pageFetchState` (*type:* `String.t`, *default:* `nil`) - Whether or not Google could retrieve the page from your server. Equivalent to ["page fetch"](https://support.google.com/webmasters/answer/9012289#index_coverage) in the URL inspection report.
  *   `referringUrls` (*type:* `list(String.t)`, *default:* `nil`) - URLs that link to the inspected URL, directly and indirectly.
  *   `robotsTxtState` (*type:* `String.t`, *default:* `nil`) - Whether or not the page is blocked to Google by a robots.txt rule.
  *   `sitemap` (*type:* `list(String.t)`, *default:* `nil`) - Any sitemaps that this URL was listed in, as known by Google. Not guaranteed to be an exhaustive list, especially if Google did not discover this URL through a sitemap. Absent if no sitemaps were found.
  *   `userCanonical` (*type:* `String.t`, *default:* `nil`) - The URL that your page or site [declares as canonical](https://developers.google.com/search/docs/advanced/crawling/consolidate-duplicate-urls?#define-canonical). If you did not declare a canonical URL, this field is absent.
  *   `verdict` (*type:* `String.t`, *default:* `nil`) - High level verdict about whether the URL *is* indexed (indexed status), or *can be* indexed (live inspection).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :coverageState => String.t() | nil,
          :crawledAs => String.t() | nil,
          :googleCanonical => String.t() | nil,
          :indexingState => String.t() | nil,
          :lastCrawlTime => DateTime.t() | nil,
          :pageFetchState => String.t() | nil,
          :referringUrls => list(String.t()) | nil,
          :robotsTxtState => String.t() | nil,
          :sitemap => list(String.t()) | nil,
          :userCanonical => String.t() | nil,
          :verdict => String.t() | nil
        }

  field(:coverageState)
  field(:crawledAs)
  field(:googleCanonical)
  field(:indexingState)
  field(:lastCrawlTime, as: DateTime)
  field(:pageFetchState)
  field(:referringUrls, type: :list)
  field(:robotsTxtState)
  field(:sitemap, type: :list)
  field(:userCanonical)
  field(:verdict)
end

defimpl Poison.Decoder, for: GoogleApi.SearchConsole.V1.Model.IndexStatusInspectionResult do
  def decode(value, options) do
    GoogleApi.SearchConsole.V1.Model.IndexStatusInspectionResult.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SearchConsole.V1.Model.IndexStatusInspectionResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
