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

defmodule GoogleApi.CloudResourceManager.V1.Api.Folders do
  @moduledoc """
  API calls for all endpoints tagged `Folders`.
  """

  alias GoogleApi.CloudResourceManager.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Clears a &#x60;Policy&#x60; from a resource.

  ## Parameters

  - connection (GoogleApi.CloudResourceManager.V1.Connection): Connection to server
  - folders_id (String.t): Part of &#x60;resource&#x60;. Name of the resource for the &#x60;Policy&#x60; to clear.
  - optional_params (KeywordList): [optional] Optional parameters
    - :access_token (String.t): OAuth access token.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :body (ClearOrgPolicyRequest): 

  ## Returns

  {:ok, %GoogleApi.CloudResourceManager.V1.Model.Empty{}} on success
  {:error, info} on failure
  """
  @spec cloudresourcemanager_folders_clear_org_policy(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.CloudResourceManager.V1.Model.Empty.t()} | {:error, Tesla.Env.t()}
  def cloudresourcemanager_folders_clear_org_policy(
        connection,
        folders_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :access_token => :query,
      :key => :query,
      :upload_protocol => :query,
      :quotaUser => :query,
      :prettyPrint => :query,
      :fields => :query,
      :uploadType => :query,
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/folders/{foldersId}:clearOrgPolicy", %{
        "foldersId" => URI.encode_www_form(folders_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.CloudResourceManager.V1.Model.Empty{}])
  end

  @doc """
  Gets the effective &#x60;Policy&#x60; on a resource. This is the result of merging &#x60;Policies&#x60; in the resource hierarchy. The returned &#x60;Policy&#x60; will not have an &#x60;etag&#x60;set because it is a computed &#x60;Policy&#x60; across multiple resources. Subtrees of Resource Manager resource hierarchy with &#39;under:&#39; prefix will not be expanded.

  ## Parameters

  - connection (GoogleApi.CloudResourceManager.V1.Connection): Connection to server
  - folders_id (String.t): Part of &#x60;resource&#x60;. The name of the resource to start computing the effective &#x60;Policy&#x60;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :access_token (String.t): OAuth access token.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :body (GetEffectiveOrgPolicyRequest): 

  ## Returns

  {:ok, %GoogleApi.CloudResourceManager.V1.Model.OrgPolicy{}} on success
  {:error, info} on failure
  """
  @spec cloudresourcemanager_folders_get_effective_org_policy(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.CloudResourceManager.V1.Model.OrgPolicy.t()} | {:error, Tesla.Env.t()}
  def cloudresourcemanager_folders_get_effective_org_policy(
        connection,
        folders_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :access_token => :query,
      :key => :query,
      :upload_protocol => :query,
      :quotaUser => :query,
      :prettyPrint => :query,
      :fields => :query,
      :uploadType => :query,
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/folders/{foldersId}:getEffectiveOrgPolicy", %{
        "foldersId" => URI.encode_www_form(folders_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.CloudResourceManager.V1.Model.OrgPolicy{}])
  end

  @doc """
  Gets a &#x60;Policy&#x60; on a resource.  If no &#x60;Policy&#x60; is set on the resource, a &#x60;Policy&#x60; is returned with default values including &#x60;POLICY_TYPE_NOT_SET&#x60; for the &#x60;policy_type oneof&#x60;. The &#x60;etag&#x60; value can be used with &#x60;SetOrgPolicy()&#x60; to create or update a &#x60;Policy&#x60; during read-modify-write.

  ## Parameters

  - connection (GoogleApi.CloudResourceManager.V1.Connection): Connection to server
  - folders_id (String.t): Part of &#x60;resource&#x60;. Name of the resource the &#x60;Policy&#x60; is set on.
  - optional_params (KeywordList): [optional] Optional parameters
    - :access_token (String.t): OAuth access token.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :body (GetOrgPolicyRequest): 

  ## Returns

  {:ok, %GoogleApi.CloudResourceManager.V1.Model.OrgPolicy{}} on success
  {:error, info} on failure
  """
  @spec cloudresourcemanager_folders_get_org_policy(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.CloudResourceManager.V1.Model.OrgPolicy.t()} | {:error, Tesla.Env.t()}
  def cloudresourcemanager_folders_get_org_policy(
        connection,
        folders_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :access_token => :query,
      :key => :query,
      :upload_protocol => :query,
      :quotaUser => :query,
      :prettyPrint => :query,
      :fields => :query,
      :uploadType => :query,
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/folders/{foldersId}:getOrgPolicy", %{
        "foldersId" => URI.encode_www_form(folders_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.CloudResourceManager.V1.Model.OrgPolicy{}])
  end

  @doc """
  Lists &#x60;Constraints&#x60; that could be applied on the specified resource.

  ## Parameters

  - connection (GoogleApi.CloudResourceManager.V1.Connection): Connection to server
  - folders_id (String.t): Part of &#x60;resource&#x60;. Name of the resource to list &#x60;Constraints&#x60; for.
  - optional_params (KeywordList): [optional] Optional parameters
    - :access_token (String.t): OAuth access token.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :body (ListAvailableOrgPolicyConstraintsRequest): 

  ## Returns

  {:ok, %GoogleApi.CloudResourceManager.V1.Model.ListAvailableOrgPolicyConstraintsResponse{}} on success
  {:error, info} on failure
  """
  @spec cloudresourcemanager_folders_list_available_org_policy_constraints(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok,
           GoogleApi.CloudResourceManager.V1.Model.ListAvailableOrgPolicyConstraintsResponse.t()}
          | {:error, Tesla.Env.t()}
  def cloudresourcemanager_folders_list_available_org_policy_constraints(
        connection,
        folders_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :access_token => :query,
      :key => :query,
      :upload_protocol => :query,
      :quotaUser => :query,
      :prettyPrint => :query,
      :fields => :query,
      :uploadType => :query,
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/folders/{foldersId}:listAvailableOrgPolicyConstraints", %{
        "foldersId" => URI.encode_www_form(folders_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++
        [
          struct:
            %GoogleApi.CloudResourceManager.V1.Model.ListAvailableOrgPolicyConstraintsResponse{}
        ]
    )
  end

  @doc """
  Lists all the &#x60;Policies&#x60; set for a particular resource.

  ## Parameters

  - connection (GoogleApi.CloudResourceManager.V1.Connection): Connection to server
  - folders_id (String.t): Part of &#x60;resource&#x60;. Name of the resource to list Policies for.
  - optional_params (KeywordList): [optional] Optional parameters
    - :access_token (String.t): OAuth access token.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :body (ListOrgPoliciesRequest): 

  ## Returns

  {:ok, %GoogleApi.CloudResourceManager.V1.Model.ListOrgPoliciesResponse{}} on success
  {:error, info} on failure
  """
  @spec cloudresourcemanager_folders_list_org_policies(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.CloudResourceManager.V1.Model.ListOrgPoliciesResponse.t()}
          | {:error, Tesla.Env.t()}
  def cloudresourcemanager_folders_list_org_policies(
        connection,
        folders_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :access_token => :query,
      :key => :query,
      :upload_protocol => :query,
      :quotaUser => :query,
      :prettyPrint => :query,
      :fields => :query,
      :uploadType => :query,
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/folders/{foldersId}:listOrgPolicies", %{
        "foldersId" => URI.encode_www_form(folders_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.CloudResourceManager.V1.Model.ListOrgPoliciesResponse{}]
    )
  end

  @doc """
  Updates the specified &#x60;Policy&#x60; on the resource. Creates a new &#x60;Policy&#x60; for that &#x60;Constraint&#x60; on the resource if one does not exist.  Not supplying an &#x60;etag&#x60; on the request &#x60;Policy&#x60; results in an unconditional write of the &#x60;Policy&#x60;.

  ## Parameters

  - connection (GoogleApi.CloudResourceManager.V1.Connection): Connection to server
  - folders_id (String.t): Part of &#x60;resource&#x60;. Resource name of the resource to attach the &#x60;Policy&#x60;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :access_token (String.t): OAuth access token.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :body (SetOrgPolicyRequest): 

  ## Returns

  {:ok, %GoogleApi.CloudResourceManager.V1.Model.OrgPolicy{}} on success
  {:error, info} on failure
  """
  @spec cloudresourcemanager_folders_set_org_policy(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.CloudResourceManager.V1.Model.OrgPolicy.t()} | {:error, Tesla.Env.t()}
  def cloudresourcemanager_folders_set_org_policy(
        connection,
        folders_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :access_token => :query,
      :key => :query,
      :upload_protocol => :query,
      :quotaUser => :query,
      :prettyPrint => :query,
      :fields => :query,
      :uploadType => :query,
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/folders/{foldersId}:setOrgPolicy", %{
        "foldersId" => URI.encode_www_form(folders_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.CloudResourceManager.V1.Model.OrgPolicy{}])
  end
end
