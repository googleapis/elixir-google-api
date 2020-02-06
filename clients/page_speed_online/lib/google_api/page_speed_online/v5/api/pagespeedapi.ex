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

defmodule GoogleApi.PageSpeedOnline.V5.Api.Pagespeedapi do
  @moduledoc """
  API calls for all endpoints tagged `Pagespeedapi`.
  """

  alias GoogleApi.PageSpeedOnline.V5.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Runs PageSpeed analysis on the page at the specified URL, and returns
  PageSpeed scores, a list of suggestions to make that page faster, and other
  information.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.PageSpeedOnline.V5.Connection.t`) - Connection to server
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:captchaToken` (*type:* `String.t`) - The captcha token passed when filling out a captcha.
      *   `:category` (*type:* `list(String.t)`) - A Lighthouse category to run; if none are given, only Performance category
          will be run
      *   `:locale` (*type:* `String.t`) - The locale used to localize formatted results
      *   `:strategy` (*type:* `String.t`) - The analysis strategy (desktop or mobile) to use, and desktop is the
          default
      *   `:url` (*type:* `String.t`) - The URL to fetch and analyze
      *   `:utm_campaign` (*type:* `String.t`) - Campaign name for analytics.
      *   `:utm_source` (*type:* `String.t`) - Campaign source for analytics.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.PageSpeedOnline.V5.Model.PagespeedApiPagespeedResponseV5{}}` on success
  *   `{:error, info}` on failure
  """
  @spec pagespeedonline_pagespeedapi_runpagespeed(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.PageSpeedOnline.V5.Model.PagespeedApiPagespeedResponseV5.t()}
          | {:error, Tesla.Env.t()}
  def pagespeedonline_pagespeedapi_runpagespeed(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :captchaToken => :query,
      :category => :query,
      :locale => :query,
      :strategy => :query,
      :url => :query,
      :utm_campaign => :query,
      :utm_source => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/pagespeedonline/v5/runPagespeed", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.PageSpeedOnline.V5.Model.PagespeedApiPagespeedResponseV5{}]
    )
  end
end
