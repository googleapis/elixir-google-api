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

defmodule GoogleApi.Webmaster.V3.Api.Urlcrawlerrorscounts do
  @moduledoc """
  API calls for all endpoints tagged `Urlcrawlerrorscounts`.
  """

  alias GoogleApi.Webmaster.V3.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Retrieves a time series of the number of URL crawl errors per error category and platform.

  ## Parameters

  - connection (GoogleApi.Webmaster.V3.Connection): Connection to server
  - site_url (String.t): The site&#39;s URL, including protocol. For example: http://www.example.com/
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :category (String.t): The crawl error category. For example: serverError. If not specified, returns results for all categories.
    - :latestCountsOnly (boolean()): If true, returns only the latest crawl error counts.
    - :platform (String.t): The user agent type (platform) that made the request. For example: web. If not specified, returns results for all platforms.

  ## Returns

  {:ok, %GoogleApi.Webmaster.V3.Model.UrlCrawlErrorsCountsQueryResponse{}} on success
  {:error, info} on failure
  """
  @spec webmasters_urlcrawlerrorscounts_query(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Webmaster.V3.Model.UrlCrawlErrorsCountsQueryResponse.t()}
          | {:error, Tesla.Env.t()}
  def webmasters_urlcrawlerrorscounts_query(connection, site_url, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :category => :query,
      :latestCountsOnly => :query,
      :platform => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/sites/{siteUrl}/urlCrawlErrorsCounts/query", %{
        "siteUrl" => URI.encode_www_form(site_url)
      })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.Webmaster.V3.Model.UrlCrawlErrorsCountsQueryResponse{})
  end
end
