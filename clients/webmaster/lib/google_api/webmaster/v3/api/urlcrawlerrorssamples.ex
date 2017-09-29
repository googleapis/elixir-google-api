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

defmodule GoogleApi.Webmaster.V3.Api.Urlcrawlerrorssamples do
  @moduledoc """
  API calls for all endpoints tagged `Urlcrawlerrorssamples`.
  """

  alias GoogleApi.Webmaster.V3.Connection
  import GoogleApi.Webmaster.V3.RequestBuilder


  @doc """
  Retrieves details about crawl errors for a site&#39;s sample URL.

  ## Parameters

  - connection (GoogleApi.Webmaster.V3.Connection): Connection to server
  - site_url (String): The site&#39;s URL, including protocol. For example: http://www.example.com/
  - url (String): The relative path (without the site) of the sample URL. It must be one of the URLs returned by list(). For example, for the URL https://www.example.com/pagename on the site https://www.example.com/, the url value is pagename
  - category (String): The crawl error category. For example: authPermissions
  - platform (String): The user agent type (platform) that made the request. For example: web
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.Webmaster.V3.Model.UrlCrawlErrorsSample{}} on success
  {:error, info} on failure
  """
  @spec webmasters_urlcrawlerrorssamples_get(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, GoogleApi.Webmaster.V3.Model.UrlCrawlErrorsSample.t} | {:error, Tesla.Env.t}
  def webmasters_urlcrawlerrorssamples_get(connection, site_url, url, category, platform, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query
    }
    %{}
    |> method(:get)
    |> url("/sites/{siteUrl}/urlCrawlErrorsSamples/{url}", %{
         "siteUrl" => URI.encode_www_form(site_url),
         "url" => URI.encode_www_form(url)
       })
    |> add_param(:query, :"category", category)
    |> add_param(:query, :"platform", platform)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Webmaster.V3.Model.UrlCrawlErrorsSample{})
  end

  @doc """
  Lists a site&#39;s sample URLs for the specified crawl error category and platform.

  ## Parameters

  - connection (GoogleApi.Webmaster.V3.Connection): Connection to server
  - site_url (String): The site&#39;s URL, including protocol. For example: http://www.example.com/
  - category (String): The crawl error category. For example: authPermissions
  - platform (String): The user agent type (platform) that made the request. For example: web
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.Webmaster.V3.Model.UrlCrawlErrorsSamplesListResponse{}} on success
  {:error, info} on failure
  """
  @spec webmasters_urlcrawlerrorssamples_list(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, GoogleApi.Webmaster.V3.Model.UrlCrawlErrorsSamplesListResponse.t} | {:error, Tesla.Env.t}
  def webmasters_urlcrawlerrorssamples_list(connection, site_url, category, platform, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query
    }
    %{}
    |> method(:get)
    |> url("/sites/{siteUrl}/urlCrawlErrorsSamples", %{
         "siteUrl" => URI.encode_www_form(site_url)
       })
    |> add_param(:query, :"category", category)
    |> add_param(:query, :"platform", platform)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Webmaster.V3.Model.UrlCrawlErrorsSamplesListResponse{})
  end

  @doc """
  Marks the provided site&#39;s sample URL as fixed, and removes it from the samples list.

  ## Parameters

  - connection (GoogleApi.Webmaster.V3.Connection): Connection to server
  - site_url (String): The site&#39;s URL, including protocol. For example: http://www.example.com/
  - url (String): The relative path (without the site) of the sample URL. It must be one of the URLs returned by list(). For example, for the URL https://www.example.com/pagename on the site https://www.example.com/, the url value is pagename
  - category (String): The crawl error category. For example: authPermissions
  - platform (String): The user agent type (platform) that made the request. For example: web
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec webmasters_urlcrawlerrorssamples_mark_as_fixed(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def webmasters_urlcrawlerrorssamples_mark_as_fixed(connection, site_url, url, category, platform, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query
    }
    %{}
    |> method(:delete)
    |> url("/sites/{siteUrl}/urlCrawlErrorsSamples/{url}", %{
         "siteUrl" => URI.encode_www_form(site_url),
         "url" => URI.encode_www_form(url)
       })
    |> add_param(:query, :"category", category)
    |> add_param(:query, :"platform", platform)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end
end
