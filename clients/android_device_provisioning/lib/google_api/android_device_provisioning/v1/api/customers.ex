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

defmodule GoogleApi.AndroidDeviceProvisioning.V1.Api.Customers do
  @moduledoc """
  API calls for all endpoints tagged `Customers`.
  """

  alias GoogleApi.AndroidDeviceProvisioning.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Creates a new configuration. Once created, a customer can apply the configuration to devices.

  ## Parameters

  - connection (GoogleApi.AndroidDeviceProvisioning.V1.Connection): Connection to server
  - parent (String.t): Required. The customer that manages the configuration. An API resource name in the format &#x60;customers/[CUSTOMER_ID]&#x60;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :body (Configuration): 

  ## Returns

  {:ok, %GoogleApi.AndroidDeviceProvisioning.V1.Model.Configuration{}} on success
  {:error, info} on failure
  """
  @spec androiddeviceprovisioning_customers_configurations_create(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.AndroidDeviceProvisioning.V1.Model.Configuration.t()}
          | {:error, Tesla.Env.t()}
  def androiddeviceprovisioning_customers_configurations_create(
        connection,
        parent,
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
      :upload_protocol => :query,
      :uploadType => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/{+parent}/configurations", %{
        "parent" => URI.encode_www_form(parent)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.AndroidDeviceProvisioning.V1.Model.Configuration{}]
    )
  end

  @doc """
  Deletes an unused configuration. The API call fails if the customer has devices with the configuration applied.

  ## Parameters

  - connection (GoogleApi.AndroidDeviceProvisioning.V1.Connection): Connection to server
  - name (String.t): Required. The configuration to delete. An API resource name in the format &#x60;customers/[CUSTOMER_ID]/configurations/[CONFIGURATION_ID]&#x60;. If the configuration is applied to any devices, the API call fails.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).

  ## Returns

  {:ok, %GoogleApi.AndroidDeviceProvisioning.V1.Model.Empty{}} on success
  {:error, info} on failure
  """
  @spec androiddeviceprovisioning_customers_configurations_delete(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.AndroidDeviceProvisioning.V1.Model.Empty.t()} | {:error, Tesla.Env.t()}
  def androiddeviceprovisioning_customers_configurations_delete(
        connection,
        name,
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
      :upload_protocol => :query,
      :uploadType => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/v1/{+name}", %{
        "name" => URI.encode_www_form(name)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AndroidDeviceProvisioning.V1.Model.Empty{}])
  end

  @doc """
  Lists a customer&#39;s configurations.

  ## Parameters

  - connection (GoogleApi.AndroidDeviceProvisioning.V1.Connection): Connection to server
  - parent (String.t): Required. The customer that manages the listed configurations. An API resource name in the format &#x60;customers/[CUSTOMER_ID]&#x60;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).

  ## Returns

  {:ok, %GoogleApi.AndroidDeviceProvisioning.V1.Model.CustomerListConfigurationsResponse{}} on success
  {:error, info} on failure
  """
  @spec androiddeviceprovisioning_customers_configurations_list(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok,
           GoogleApi.AndroidDeviceProvisioning.V1.Model.CustomerListConfigurationsResponse.t()}
          | {:error, Tesla.Env.t()}
  def androiddeviceprovisioning_customers_configurations_list(
        connection,
        parent,
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
      :upload_protocol => :query,
      :uploadType => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/{+parent}/configurations", %{
        "parent" => URI.encode_www_form(parent)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++
        [
          struct:
            %GoogleApi.AndroidDeviceProvisioning.V1.Model.CustomerListConfigurationsResponse{}
        ]
    )
  end

  @doc """
  Updates a configuration&#39;s field values.

  ## Parameters

  - connection (GoogleApi.AndroidDeviceProvisioning.V1.Connection): Connection to server
  - name (String.t): Output only. The API resource name in the format &#x60;customers/[CUSTOMER_ID]/configurations/[CONFIGURATION_ID]&#x60;. Assigned by the server.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :updateMask (String.t): Required. The field mask applied to the target &#x60;Configuration&#x60; before updating the fields. To learn more about using field masks, read [FieldMask](/protocol-buffers/docs/reference/google.protobuf#fieldmask) in the Protocol Buffers documentation.
    - :body (Configuration): 

  ## Returns

  {:ok, %GoogleApi.AndroidDeviceProvisioning.V1.Model.Configuration{}} on success
  {:error, info} on failure
  """
  @spec androiddeviceprovisioning_customers_configurations_patch(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.AndroidDeviceProvisioning.V1.Model.Configuration.t()}
          | {:error, Tesla.Env.t()}
  def androiddeviceprovisioning_customers_configurations_patch(
        connection,
        name,
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
      :upload_protocol => :query,
      :uploadType => :query,
      :updateMask => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/v1/{+name}", %{
        "name" => URI.encode_www_form(name)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.AndroidDeviceProvisioning.V1.Model.Configuration{}]
    )
  end

  @doc """
  Applies a Configuration to the device to register the device for zero-touch enrollment. After applying a configuration to a device, the device automatically provisions itself on first boot, or next factory reset.

  ## Parameters

  - connection (GoogleApi.AndroidDeviceProvisioning.V1.Connection): Connection to server
  - parent (String.t): Required. The customer managing the device. An API resource name in the format &#x60;customers/[CUSTOMER_ID]&#x60;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :body (CustomerApplyConfigurationRequest): 

  ## Returns

  {:ok, %GoogleApi.AndroidDeviceProvisioning.V1.Model.Empty{}} on success
  {:error, info} on failure
  """
  @spec androiddeviceprovisioning_customers_devices_apply_configuration(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.AndroidDeviceProvisioning.V1.Model.Empty.t()} | {:error, Tesla.Env.t()}
  def androiddeviceprovisioning_customers_devices_apply_configuration(
        connection,
        parent,
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
      :upload_protocol => :query,
      :uploadType => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/{+parent}/devices:applyConfiguration", %{
        "parent" => URI.encode_www_form(parent)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AndroidDeviceProvisioning.V1.Model.Empty{}])
  end

  @doc """
  Lists a customer&#39;s devices.

  ## Parameters

  - connection (GoogleApi.AndroidDeviceProvisioning.V1.Connection): Connection to server
  - parent (String.t): Required. The customer managing the devices. An API resource name in the format &#x60;customers/[CUSTOMER_ID]&#x60;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :pageSize (String.t): The maximum number of devices to show in a page of results. Must be between 1 and 100 inclusive.
    - :pageToken (String.t): A token specifying which result page to return.

  ## Returns

  {:ok, %GoogleApi.AndroidDeviceProvisioning.V1.Model.CustomerListDevicesResponse{}} on success
  {:error, info} on failure
  """
  @spec androiddeviceprovisioning_customers_devices_list(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.AndroidDeviceProvisioning.V1.Model.CustomerListDevicesResponse.t()}
          | {:error, Tesla.Env.t()}
  def androiddeviceprovisioning_customers_devices_list(
        connection,
        parent,
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
      :upload_protocol => :query,
      :uploadType => :query,
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/{+parent}/devices", %{
        "parent" => URI.encode_www_form(parent)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++
        [struct: %GoogleApi.AndroidDeviceProvisioning.V1.Model.CustomerListDevicesResponse{}]
    )
  end

  @doc """
  Removes a configuration from device.

  ## Parameters

  - connection (GoogleApi.AndroidDeviceProvisioning.V1.Connection): Connection to server
  - parent (String.t): Required. The customer managing the device in the format &#x60;customers/[CUSTOMER_ID]&#x60;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :body (CustomerRemoveConfigurationRequest): 

  ## Returns

  {:ok, %GoogleApi.AndroidDeviceProvisioning.V1.Model.Empty{}} on success
  {:error, info} on failure
  """
  @spec androiddeviceprovisioning_customers_devices_remove_configuration(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.AndroidDeviceProvisioning.V1.Model.Empty.t()} | {:error, Tesla.Env.t()}
  def androiddeviceprovisioning_customers_devices_remove_configuration(
        connection,
        parent,
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
      :upload_protocol => :query,
      :uploadType => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/{+parent}/devices:removeConfiguration", %{
        "parent" => URI.encode_www_form(parent)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AndroidDeviceProvisioning.V1.Model.Empty{}])
  end

  @doc """
  Unclaims a device from a customer and removes it from zero-touch enrollment.  After removing a device, a customer must contact their reseller to register the device into zero-touch enrollment again.

  ## Parameters

  - connection (GoogleApi.AndroidDeviceProvisioning.V1.Connection): Connection to server
  - parent (String.t): Required. The customer managing the device. An API resource name in the format &#x60;customers/[CUSTOMER_ID]&#x60;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :body (CustomerUnclaimDeviceRequest): 

  ## Returns

  {:ok, %GoogleApi.AndroidDeviceProvisioning.V1.Model.Empty{}} on success
  {:error, info} on failure
  """
  @spec androiddeviceprovisioning_customers_devices_unclaim(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.AndroidDeviceProvisioning.V1.Model.Empty.t()} | {:error, Tesla.Env.t()}
  def androiddeviceprovisioning_customers_devices_unclaim(
        connection,
        parent,
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
      :upload_protocol => :query,
      :uploadType => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/{+parent}/devices:unclaim", %{
        "parent" => URI.encode_www_form(parent)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AndroidDeviceProvisioning.V1.Model.Empty{}])
  end

  @doc """
  Lists the DPCs (device policy controllers) that support zero-touch enrollment.

  ## Parameters

  - connection (GoogleApi.AndroidDeviceProvisioning.V1.Connection): Connection to server
  - parent (String.t): Required. The customer that can use the DPCs in configurations. An API resource name in the format &#x60;customers/[CUSTOMER_ID]&#x60;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).

  ## Returns

  {:ok, %GoogleApi.AndroidDeviceProvisioning.V1.Model.CustomerListDpcsResponse{}} on success
  {:error, info} on failure
  """
  @spec androiddeviceprovisioning_customers_dpcs_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.AndroidDeviceProvisioning.V1.Model.CustomerListDpcsResponse.t()}
          | {:error, Tesla.Env.t()}
  def androiddeviceprovisioning_customers_dpcs_list(
        connection,
        parent,
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
      :upload_protocol => :query,
      :uploadType => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/{+parent}/dpcs", %{
        "parent" => URI.encode_www_form(parent)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.AndroidDeviceProvisioning.V1.Model.CustomerListDpcsResponse{}]
    )
  end

  @doc """
  Lists the user&#39;s customer accounts.

  ## Parameters

  - connection (GoogleApi.AndroidDeviceProvisioning.V1.Connection): Connection to server
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :pageSize (integer()): The maximum number of customers to show in a page of results. A number between 1 and 100 (inclusive).
    - :pageToken (String.t): A token specifying which result page to return.

  ## Returns

  {:ok, %GoogleApi.AndroidDeviceProvisioning.V1.Model.CustomerListCustomersResponse{}} on success
  {:error, info} on failure
  """
  @spec androiddeviceprovisioning_customers_list(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.AndroidDeviceProvisioning.V1.Model.CustomerListCustomersResponse.t()}
          | {:error, Tesla.Env.t()}
  def androiddeviceprovisioning_customers_list(connection, optional_params \\ [], opts \\ []) do
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
      :upload_protocol => :query,
      :uploadType => :query,
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/customers")
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++
        [struct: %GoogleApi.AndroidDeviceProvisioning.V1.Model.CustomerListCustomersResponse{}]
    )
  end
end
