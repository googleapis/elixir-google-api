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

defmodule GoogleApi.Books.V1.Api.Personalizedstream do
  @moduledoc """
  API calls for all endpoints tagged `Personalizedstream`.
  """

  alias GoogleApi.Books.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Returns a stream of personalized book clusters

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Books.V1.Connection.t`) - Connection to server
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
      *   `:locale` (*type:* `String.t`) - ISO-639-1 language and ISO-3166-1 country code. Ex: 'en_US'. Used for
          generating recommendations.
      *   `:maxAllowedMaturityRating` (*type:* `String.t`) - The maximum allowed maturity rating of returned recommendations. Books with
          a higher maturity rating are filtered out.
      *   `:source` (*type:* `String.t`) - String to identify the originator of this request.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Books.V1.Model.Discoveryclusters{}}` on success
  *   `{:error, info}` on failure
  """
  @spec books_personalizedstream_get(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.Books.V1.Model.Discoveryclusters.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def books_personalizedstream_get(connection, optional_params \\ [], opts \\ []) do
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
      :locale => :query,
      :maxAllowedMaturityRating => :query,
      :source => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/books/v1/personalizedstream/get", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Books.V1.Model.Discoveryclusters{}])
  end
end
