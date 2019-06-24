# Copyright 2019 Google LLC
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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.AdExchangeBuyer.V14.Api.PretargetingConfig do
  @moduledoc """
  API calls for all endpoints tagged `PretargetingConfig`.
  """

  alias GoogleApi.AdExchangeBuyer.V14.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Deletes an existing pretargeting config.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AdExchangeBuyer.V14.Connection.t`) - Connection to server
  *   `account_id` (*type:* `String.t`) - The account id to delete the pretargeting config for.
  *   `config_id` (*type:* `String.t`) - The specific id of the configuration to delete.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %{}}` on success
  *   `{:error, info}` on failure
  """
  @spec adexchangebuyer_pretargeting_config_delete(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def adexchangebuyer_pretargeting_config_delete(
        connection,
        account_id,
        config_id,
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
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/pretargetingconfigs/{accountId}/{configId}", %{
        "accountId" => URI.encode(account_id, &URI.char_unreserved?/1),
        "configId" => URI.encode(config_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Gets a specific pretargeting configuration

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AdExchangeBuyer.V14.Connection.t`) - Connection to server
  *   `account_id` (*type:* `String.t`) - The account id to get the pretargeting config for.
  *   `config_id` (*type:* `String.t`) - The specific id of the configuration to retrieve.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfig{}}` on success
  *   `{:error, info}` on failure
  """
  @spec adexchangebuyer_pretargeting_config_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfig.t()}
          | {:error, Tesla.Env.t()}
  def adexchangebuyer_pretargeting_config_get(
        connection,
        account_id,
        config_id,
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
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/pretargetingconfigs/{accountId}/{configId}", %{
        "accountId" => URI.encode(account_id, &URI.char_unreserved?/1),
        "configId" => URI.encode(config_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfig{}]
    )
  end

  @doc """
  Inserts a new pretargeting configuration.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AdExchangeBuyer.V14.Connection.t`) - Connection to server
  *   `account_id` (*type:* `String.t`) - The account id to insert the pretargeting config for.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfig.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfig{}}` on success
  *   `{:error, info}` on failure
  """
  @spec adexchangebuyer_pretargeting_config_insert(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfig.t()}
          | {:error, Tesla.Env.t()}
  def adexchangebuyer_pretargeting_config_insert(
        connection,
        account_id,
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
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/pretargetingconfigs/{accountId}", %{
        "accountId" => URI.encode(account_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfig{}]
    )
  end

  @doc """
  Retrieves a list of the authenticated user's pretargeting configurations.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AdExchangeBuyer.V14.Connection.t`) - Connection to server
  *   `account_id` (*type:* `String.t`) - The account id to get the pretargeting configs for.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfigList{}}` on success
  *   `{:error, info}` on failure
  """
  @spec adexchangebuyer_pretargeting_config_list(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfigList.t()}
          | {:error, Tesla.Env.t()}
  def adexchangebuyer_pretargeting_config_list(
        connection,
        account_id,
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
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/pretargetingconfigs/{accountId}", %{
        "accountId" => URI.encode(account_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfigList{}]
    )
  end

  @doc """
  Updates an existing pretargeting config. This method supports patch semantics.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AdExchangeBuyer.V14.Connection.t`) - Connection to server
  *   `account_id` (*type:* `String.t`) - The account id to update the pretargeting config for.
  *   `config_id` (*type:* `String.t`) - The specific id of the configuration to update.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfig.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfig{}}` on success
  *   `{:error, info}` on failure
  """
  @spec adexchangebuyer_pretargeting_config_patch(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfig.t()}
          | {:error, Tesla.Env.t()}
  def adexchangebuyer_pretargeting_config_patch(
        connection,
        account_id,
        config_id,
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
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/pretargetingconfigs/{accountId}/{configId}", %{
        "accountId" => URI.encode(account_id, &URI.char_unreserved?/1),
        "configId" => URI.encode(config_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfig{}]
    )
  end

  @doc """
  Updates an existing pretargeting config.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AdExchangeBuyer.V14.Connection.t`) - Connection to server
  *   `account_id` (*type:* `String.t`) - The account id to update the pretargeting config for.
  *   `config_id` (*type:* `String.t`) - The specific id of the configuration to update.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfig.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfig{}}` on success
  *   `{:error, info}` on failure
  """
  @spec adexchangebuyer_pretargeting_config_update(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfig.t()}
          | {:error, Tesla.Env.t()}
  def adexchangebuyer_pretargeting_config_update(
        connection,
        account_id,
        config_id,
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
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/pretargetingconfigs/{accountId}/{configId}", %{
        "accountId" => URI.encode(account_id, &URI.char_unreserved?/1),
        "configId" => URI.encode(config_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.AdExchangeBuyer.V14.Model.PretargetingConfig{}]
    )
  end
end
