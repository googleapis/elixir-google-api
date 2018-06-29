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

defmodule GoogleApi.Content.V2.Api.Orderpayments do
  @moduledoc """
  API calls for all endpoints tagged `Orderpayments`.
  """

  alias GoogleApi.Content.V2.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Notify about successfully authorizing user&#39;s payment method for a given amount.

  ## Parameters

  - connection (GoogleApi.Content.V2.Connection): Connection to server
  - merchant_id (String.t): The ID of the account that manages the order. This cannot be a multi-client account.
  - order_id (String.t): The ID of the order for for which payment authorization is happening.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (OrderpaymentsNotifyAuthApprovedRequest): 

  ## Returns

  {:ok, %GoogleApi.Content.V2.Model.OrderpaymentsNotifyAuthApprovedResponse{}} on success
  {:error, info} on failure
  """
  @spec content_orderpayments_notifyauthapproved(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.Content.V2.Model.OrderpaymentsNotifyAuthApprovedResponse.t()}
          | {:error, Tesla.Env.t()}
  def content_orderpayments_notifyauthapproved(connection, merchant_id, order_id, opts \\ []) do
    optional_params = %{
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
      |> Request.url("/{merchantId}/orderpayments/{orderId}/notifyAuthApproved", %{
        "merchantId" => URI.encode_www_form(merchant_id),
        "orderId" => URI.encode_www_form(order_id)
      })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      struct: %GoogleApi.Content.V2.Model.OrderpaymentsNotifyAuthApprovedResponse{}
    )
  end

  @doc """
  Notify about failure to authorize user&#39;s payment method.

  ## Parameters

  - connection (GoogleApi.Content.V2.Connection): Connection to server
  - merchant_id (String.t): The ID of the account that manages the order. This cannot be a multi-client account.
  - order_id (String.t): The ID of the order for which payment authorization was declined.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (OrderpaymentsNotifyAuthDeclinedRequest): 

  ## Returns

  {:ok, %GoogleApi.Content.V2.Model.OrderpaymentsNotifyAuthDeclinedResponse{}} on success
  {:error, info} on failure
  """
  @spec content_orderpayments_notifyauthdeclined(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.Content.V2.Model.OrderpaymentsNotifyAuthDeclinedResponse.t()}
          | {:error, Tesla.Env.t()}
  def content_orderpayments_notifyauthdeclined(connection, merchant_id, order_id, opts \\ []) do
    optional_params = %{
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
      |> Request.url("/{merchantId}/orderpayments/{orderId}/notifyAuthDeclined", %{
        "merchantId" => URI.encode_www_form(merchant_id),
        "orderId" => URI.encode_www_form(order_id)
      })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      struct: %GoogleApi.Content.V2.Model.OrderpaymentsNotifyAuthDeclinedResponse{}
    )
  end

  @doc """
  Notify about charge on user&#39;s selected payments method.

  ## Parameters

  - connection (GoogleApi.Content.V2.Connection): Connection to server
  - merchant_id (String.t): The ID of the account that manages the order. This cannot be a multi-client account.
  - order_id (String.t): The ID of the order for which charge is happening.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (OrderpaymentsNotifyChargeRequest): 

  ## Returns

  {:ok, %GoogleApi.Content.V2.Model.OrderpaymentsNotifyChargeResponse{}} on success
  {:error, info} on failure
  """
  @spec content_orderpayments_notifycharge(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Content.V2.Model.OrderpaymentsNotifyChargeResponse.t()}
          | {:error, Tesla.Env.t()}
  def content_orderpayments_notifycharge(connection, merchant_id, order_id, opts \\ []) do
    optional_params = %{
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
      |> Request.url("/{merchantId}/orderpayments/{orderId}/notifyCharge", %{
        "merchantId" => URI.encode_www_form(merchant_id),
        "orderId" => URI.encode_www_form(order_id)
      })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.Content.V2.Model.OrderpaymentsNotifyChargeResponse{})
  end

  @doc """
  Notify about refund on user&#39;s selected payments method.

  ## Parameters

  - connection (GoogleApi.Content.V2.Connection): Connection to server
  - merchant_id (String.t): The ID of the account that manages the order. This cannot be a multi-client account.
  - order_id (String.t): The ID of the order for which charge is happening.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (OrderpaymentsNotifyRefundRequest): 

  ## Returns

  {:ok, %GoogleApi.Content.V2.Model.OrderpaymentsNotifyRefundResponse{}} on success
  {:error, info} on failure
  """
  @spec content_orderpayments_notifyrefund(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Content.V2.Model.OrderpaymentsNotifyRefundResponse.t()}
          | {:error, Tesla.Env.t()}
  def content_orderpayments_notifyrefund(connection, merchant_id, order_id, opts \\ []) do
    optional_params = %{
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
      |> Request.url("/{merchantId}/orderpayments/{orderId}/notifyRefund", %{
        "merchantId" => URI.encode_www_form(merchant_id),
        "orderId" => URI.encode_www_form(order_id)
      })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.Content.V2.Model.OrderpaymentsNotifyRefundResponse{})
  end
end
