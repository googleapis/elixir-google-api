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

defmodule GoogleApi.Content.V21.Api.Settlementtransactions do
  @moduledoc """
  API calls for all endpoints tagged `Settlementtransactions`.
  """

  alias GoogleApi.Content.V21.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Retrieves a list of transactions for the settlement.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Content.V21.Connection.t`) - Connection to server
  *   `merchant_id` (*type:* `String.t`) - The Merchant Center account to list transactions for.
  *   `settlement_id` (*type:* `String.t`) - The Google-provided ID of the settlement.
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
      *   `:maxResults` (*type:* `integer()`) - The maximum number of transactions to return in the response, used for paging. The default value is 200 transactions per page, and the maximum allowed value is 5000 transactions per page.
      *   `:pageToken` (*type:* `String.t`) - The token returned by the previous request.
      *   `:transactionIds` (*type:* `list(String.t)`) - The list of transactions to return. If not set, all transactions will be returned.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Content.V21.Model.SettlementtransactionsListResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec content_settlementtransactions_list(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Content.V21.Model.SettlementtransactionsListResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def content_settlementtransactions_list(
        connection,
        merchant_id,
        settlement_id,
        optional_params \\ [],
        opts \\ []
      ) do
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
      :maxResults => :query,
      :pageToken => :query,
      :transactionIds => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url(
        "/content/v2.1/{merchantId}/settlementreports/{settlementId}/transactions",
        %{
          "merchantId" => URI.encode(merchant_id, &URI.char_unreserved?/1),
          "settlementId" => URI.encode(settlement_id, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.Content.V21.Model.SettlementtransactionsListResponse{}]
    )
  end
end
