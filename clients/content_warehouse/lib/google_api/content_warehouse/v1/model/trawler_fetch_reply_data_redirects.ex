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

defmodule GoogleApi.ContentWarehouse.V1.Model.TrawlerFetchReplyDataRedirects do
  @moduledoc """
  The sequence of redirects fetched, if applicable. This includes url plus stats for each hop after the first hop. NOTE: This can be one redirect longer than the chain of redirects *followed*, in the case where there was a redirect at the end of the chain that the fetcher detected but did not follow.

  ## Attributes

  *   `BadSSLCertificate` (*type:* `String.t`, *default:* `nil`) - The server SSL certificate chain in SSLCertificateInfo protobuf format. See this field in FetchReplyData (i.e., the initial hop) for more description on when it will be populated.
  *   `CrawlTimes` (*type:* `GoogleApi.ContentWarehouse.V1.Model.TrawlerCrawlTimes.t`, *default:* `nil`) - Per redirect hop timestamps. This
  *   `DownloadTime` (*type:* `integer()`, *default:* `nil`) - Download time of this fetch (ms)
  *   `Endpoints` (*type:* `GoogleApi.ContentWarehouse.V1.Model.TrawlerTCPIPInfo.t`, *default:* `nil`) - ## stats If fetched, ip info.
  *   `HSTSInfo` (*type:* `String.t`, *default:* `nil`) - This specifies if the url in a redirect was rewritten to HTTPS because of an HSTS policy for the domain. See comments on FetchReplyData.HSTSInfo for how this field's values. A redirect that was rewritten with HSTS will have HSTS_STATUS_REWRITTEN ## here.
  *   `HTTPResponseCode` (*type:* `integer()`, *default:* `nil`) - The HTTP response code for this hop. We need this since multiple response codes may have the same redirect type (e.g., 302 and 307 are both REDIRECT_TEMPORARILY), but clients may want to know which one was received. Note this is set only for the hops that are followed (i.e., TargetUrl is present). If the last redirect hop was not followed the fetch status will be URL_NOT_FOLLOWED, and the response code will be in the top level ProtocolResponse field.
  *   `HopPageNoIndexInfo` (*type:* `integer()`, *default:* `nil`) - Extra trawler::PageNoIndexInfo for this hop. Integer: ORed together bits from trawler::PageNoIndexInfo. The information specified by this field comes from the http header or content of the source url, not the "TargetUrl" in this Redirects group.
  *   `HopReuseInfo` (*type:* `String.t`, *default:* `nil`) - trawler::ReuseInfo with status of IMS/IMF/cache query, for this hop.
  *   `HopRobotsInfo` (*type:* `integer()`, *default:* `nil`) - Extra trawler::RobotsInfo for this hop. Integer: ORed together bits from trawler::RobotsInfo
  *   `HostId` (*type:* `String.t`, *default:* `nil`) - If known, the hostid for this hop
  *   `HttpRequestHeaders` (*type:* `String.t`, *default:* `nil`) - The http headers we sent for fetching this redirect hop. Not normally filled in, unless FetchParams.WantSentHeaders is set.
  *   `HttpResponseHeaders` (*type:* `String.t`, *default:* `nil`) - The http headers we received from this redirect hop. Trawler does not fill this in; this is intended as a placeholder for crawls like webmirror that fill in and want to track this across redirect hops.
  *   `RawTargetUrl` (*type:* `String.t`, *default:* `nil`) - bytes: can contain bad encoding.
  *   `RefreshTime` (*type:* `integer()`, *default:* `nil`) - Refresh time in meta redirect tag
  *   `RobotsTxt` (*type:* `String.t`, *default:* `nil`) - The robots.txt we used for this fetch. Not normally filled in unless WantRobotsBody is set.
  *   `SourceBody` (*type:* `GoogleApi.ContentWarehouse.V1.Model.TrawlerFetchBodyData.t`, *default:* `nil`) - For meta-redirects, this field may contain the body of the source document. Currently only filled client side and not implemented (yet) for server-side redirects.
  *   `TargetUrl` (*type:* `String.t`, *default:* `nil`) - Difference between the following two fields: TargetUrl is set when we have followed the redirect target, and the url is canonicalized. RawTargetUrl is set in either of the following two cases: (1) The url has not be been followed. For example, the redirect is intended to be handled by the client. In the fetch reply response, you will see the url's status as URL_NOT_FOLLOWED-NOT_FOLLOWED*. (2) The extracted redirect url is different from its *canonicalized* form. For example, if the target url contains fragments, then this RawTargetUrl will have the fragments. Redirect target
  *   `Type` (*type:* `String.t`, *default:* `nil`) - URL and redirect type
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :BadSSLCertificate => String.t() | nil,
          :CrawlTimes => GoogleApi.ContentWarehouse.V1.Model.TrawlerCrawlTimes.t() | nil,
          :DownloadTime => integer() | nil,
          :Endpoints => GoogleApi.ContentWarehouse.V1.Model.TrawlerTCPIPInfo.t() | nil,
          :HSTSInfo => String.t() | nil,
          :HTTPResponseCode => integer() | nil,
          :HopPageNoIndexInfo => integer() | nil,
          :HopReuseInfo => String.t() | nil,
          :HopRobotsInfo => integer() | nil,
          :HostId => String.t() | nil,
          :HttpRequestHeaders => String.t() | nil,
          :HttpResponseHeaders => String.t() | nil,
          :RawTargetUrl => String.t() | nil,
          :RefreshTime => integer() | nil,
          :RobotsTxt => String.t() | nil,
          :SourceBody => GoogleApi.ContentWarehouse.V1.Model.TrawlerFetchBodyData.t() | nil,
          :TargetUrl => String.t() | nil,
          :Type => String.t() | nil
        }

  field(:BadSSLCertificate)
  field(:CrawlTimes, as: GoogleApi.ContentWarehouse.V1.Model.TrawlerCrawlTimes)
  field(:DownloadTime)
  field(:Endpoints, as: GoogleApi.ContentWarehouse.V1.Model.TrawlerTCPIPInfo)
  field(:HSTSInfo)
  field(:HTTPResponseCode)
  field(:HopPageNoIndexInfo)
  field(:HopReuseInfo)
  field(:HopRobotsInfo)
  field(:HostId)
  field(:HttpRequestHeaders)
  field(:HttpResponseHeaders)
  field(:RawTargetUrl)
  field(:RefreshTime)
  field(:RobotsTxt)
  field(:SourceBody, as: GoogleApi.ContentWarehouse.V1.Model.TrawlerFetchBodyData)
  field(:TargetUrl)
  field(:Type)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.TrawlerFetchReplyDataRedirects do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.TrawlerFetchReplyDataRedirects.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.TrawlerFetchReplyDataRedirects do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
