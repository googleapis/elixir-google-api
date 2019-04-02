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

defmodule GoogleApi.Content.V2.Api.Datafeedstatuses do
  @moduledoc """
  API calls for all endpoints tagged `Datafeedstatuses`.
  """

  alias GoogleApi.Content.V2.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Gets multiple Merchant Center datafeed statuses in a single request.

  ## Parameters

  - connection (GoogleApi.Content.V2.Connection): Connection to server
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (DatafeedstatusesCustomBatchRequest): 

  ## Returns

  {:ok, %GoogleApi.Content.V2.Model.DatafeedstatusesCustomBatchResponse{}} on success
  {:error, info} on failure
  """
  @spec content_datafeedstatuses_custombatch(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.Content.V2.Model.DatafeedstatusesCustomBatchResponse.t()}
          | {:error, Tesla.Env.t()}
  def content_datafeedstatuses_custombatch(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/datafeedstatuses/batch")
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.Content.V2.Model.DatafeedstatusesCustomBatchResponse{}]
    )
  end

  @doc """
  Retrieves the status of a datafeed from your Merchant Center account.

  ## Parameters

  - connection (GoogleApi.Content.V2.Connection): Connection to server
  - merchant_id (String.t): The ID of the account that manages the datafeed. This account cannot be a multi-client account.
  - datafeed_id (String.t): The ID of the datafeed.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :country (String.t): The country for which to get the datafeed status. If this parameter is provided then language must also be provided. Note that this parameter is required for feeds targeting multiple countries and languages, since a feed may have a different status for each target.
    - :language (String.t): The language for which to get the datafeed status. If this parameter is provided then country must also be provided. Note that this parameter is required for feeds targeting multiple countries and languages, since a feed may have a different status for each target.

  ## Returns

  {:ok, %GoogleApi.Content.V2.Model.DatafeedStatus{}} on success
  {:error, info} on failure
  """
  @spec content_datafeedstatuses_get(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Content.V2.Model.DatafeedStatus.t()} | {:error, Tesla.Env.t()}
  def content_datafeedstatuses_get(
        connection,
        merchant_id,
        datafeed_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :country => :query,
      :language => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/{merchantId}/datafeedstatuses/{datafeedId}", %{
        "merchantId" => URI.encode(merchant_id, &URI.char_unreserved?/1),
        "datafeedId" => URI.encode(datafeed_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Content.V2.Model.DatafeedStatus{}])
  end

  @doc """
  Lists the statuses of the datafeeds in your Merchant Center account.

  ## Parameters

  - connection (GoogleApi.Content.V2.Connection): Connection to server
  - merchant_id (String.t): The ID of the account that manages the datafeeds. This account cannot be a multi-client account.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :maxResults (integer()): The maximum number of products to return in the response, used for paging.
    - :pageToken (String.t): The token returned by the previous request.

  ## Returns

  {:ok, %GoogleApi.Content.V2.Model.DatafeedstatusesListResponse{}} on success
  {:error, info} on failure
  """
  @spec content_datafeedstatuses_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Content.V2.Model.DatafeedstatusesListResponse.t()}
          | {:error, Tesla.Env.t()}
  def content_datafeedstatuses_list(connection, merchant_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :maxResults => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/{merchantId}/datafeedstatuses", %{
        "merchantId" => URI.encode(merchant_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.Content.V2.Model.DatafeedstatusesListResponse{}]
    )
  end
end
