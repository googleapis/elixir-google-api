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

defmodule GoogleApi.Compute.V1.Api.InstanceTemplates do
  @moduledoc """
  API calls for all endpoints tagged `InstanceTemplates`.
  """

  alias GoogleApi.Compute.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Deletes the specified instance template. Deleting an instance template is permanent and cannot be undone. It is not possible to delete templates that are already in use by a managed instance group.

  ## Parameters

  - connection (GoogleApi.Compute.V1.Connection): Connection to server
  - project (String.t): Project ID for this request.
  - instance_template (String.t): The name of the instance template to delete.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :requestId (String.t): An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed.  For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments.  The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).

  ## Returns

  {:ok, %GoogleApi.Compute.V1.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec compute_instance_templates_delete(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Compute.V1.Model.Operation.t()} | {:error, Tesla.Env.t()}
  def compute_instance_templates_delete(
        connection,
        project,
        instance_template,
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
      :requestId => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/{project}/global/instanceTemplates/{instanceTemplate}", %{
        "project" => URI.encode_www_form(project),
        "instanceTemplate" => URI.encode_www_form(instance_template)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Compute.V1.Model.Operation{}])
  end

  @doc """
  Returns the specified instance template. Gets a list of available instance templates by making a list() request.

  ## Parameters

  - connection (GoogleApi.Compute.V1.Connection): Connection to server
  - project (String.t): Project ID for this request.
  - instance_template (String.t): The name of the instance template.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.Compute.V1.Model.InstanceTemplate{}} on success
  {:error, info} on failure
  """
  @spec compute_instance_templates_get(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Compute.V1.Model.InstanceTemplate.t()} | {:error, Tesla.Env.t()}
  def compute_instance_templates_get(
        connection,
        project,
        instance_template,
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
      |> Request.url("/{project}/global/instanceTemplates/{instanceTemplate}", %{
        "project" => URI.encode_www_form(project),
        "instanceTemplate" => URI.encode_www_form(instance_template)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Compute.V1.Model.InstanceTemplate{}])
  end

  @doc """
  Gets the access control policy for a resource. May be empty if no such policy or resource exists.

  ## Parameters

  - connection (GoogleApi.Compute.V1.Connection): Connection to server
  - project (String.t): Project ID for this request.
  - resource (String.t): Name or id of the resource for this request.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.Compute.V1.Model.Policy{}} on success
  {:error, info} on failure
  """
  @spec compute_instance_templates_get_iam_policy(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.Compute.V1.Model.Policy.t()} | {:error, Tesla.Env.t()}
  def compute_instance_templates_get_iam_policy(
        connection,
        project,
        resource,
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
      |> Request.url("/{project}/global/instanceTemplates/{resource}/getIamPolicy", %{
        "project" => URI.encode_www_form(project),
        "resource" => URI.encode_www_form(resource)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Compute.V1.Model.Policy{}])
  end

  @doc """
  Creates an instance template in the specified project using the data that is included in the request. If you are creating a new template to update an existing instance group, your new instance template must use the same network or, if applicable, the same subnetwork as the original template.

  ## Parameters

  - connection (GoogleApi.Compute.V1.Connection): Connection to server
  - project (String.t): Project ID for this request.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :requestId (String.t): An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed.  For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments.  The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
    - :body (InstanceTemplate): 

  ## Returns

  {:ok, %GoogleApi.Compute.V1.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec compute_instance_templates_insert(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Compute.V1.Model.Operation.t()} | {:error, Tesla.Env.t()}
  def compute_instance_templates_insert(connection, project, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :requestId => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/{project}/global/instanceTemplates", %{
        "project" => URI.encode_www_form(project)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Compute.V1.Model.Operation{}])
  end

  @doc """
  Retrieves a list of instance templates that are contained within the specified project.

  ## Parameters

  - connection (GoogleApi.Compute.V1.Connection): Connection to server
  - project (String.t): Project ID for this request.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :filter (String.t): A filter expression that filters resources listed in the response. The expression must specify the field name, a comparison operator, and the value that you want to use for filtering. The value must be a string, a number, or a boolean. The comparison operator must be either &#x3D;, !&#x3D;, &gt;, or &lt;.  For example, if you are filtering Compute Engine instances, you can exclude instances named example-instance by specifying name !&#x3D; example-instance.  You can also filter nested fields. For example, you could specify scheduling.automaticRestart &#x3D; false to include instances only if they are not scheduled for automatic restarts. You can use filtering on nested fields to filter based on resource labels.  To filter on multiple expressions, provide each separate expression within parentheses. For example, (scheduling.automaticRestart &#x3D; true) (cpuPlatform &#x3D; \&quot;Intel Skylake\&quot;). By default, each expression is an AND expression. However, you can include AND and OR expressions explicitly. For example, (cpuPlatform &#x3D; \&quot;Intel Skylake\&quot;) OR (cpuPlatform &#x3D; \&quot;Intel Broadwell\&quot;) AND (scheduling.automaticRestart &#x3D; true).
    - :maxResults (integer()): The maximum number of results per page that should be returned. If the number of available results is larger than maxResults, Compute Engine returns a nextPageToken that can be used to get the next page of results in subsequent list requests. Acceptable values are 0 to 500, inclusive. (Default: 500)
    - :orderBy (String.t): Sorts list results by a certain order. By default, results are returned in alphanumerical order based on the resource name.  You can also sort results in descending order based on the creation timestamp using orderBy&#x3D;\&quot;creationTimestamp desc\&quot;. This sorts results based on the creationTimestamp field in reverse chronological order (newest result first). Use this to sort resources like operations so that the newest operation is returned first.  Currently, only sorting by name or creationTimestamp desc is supported.
    - :pageToken (String.t): Specifies a page token to use. Set pageToken to the nextPageToken returned by a previous list request to get the next page of results.

  ## Returns

  {:ok, %GoogleApi.Compute.V1.Model.InstanceTemplateList{}} on success
  {:error, info} on failure
  """
  @spec compute_instance_templates_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Compute.V1.Model.InstanceTemplateList.t()} | {:error, Tesla.Env.t()}
  def compute_instance_templates_list(connection, project, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :filter => :query,
      :maxResults => :query,
      :orderBy => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/{project}/global/instanceTemplates", %{
        "project" => URI.encode_www_form(project)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Compute.V1.Model.InstanceTemplateList{}])
  end

  @doc """
  Sets the access control policy on the specified resource. Replaces any existing policy.

  ## Parameters

  - connection (GoogleApi.Compute.V1.Connection): Connection to server
  - project (String.t): Project ID for this request.
  - resource (String.t): Name or id of the resource for this request.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (GlobalSetPolicyRequest): 

  ## Returns

  {:ok, %GoogleApi.Compute.V1.Model.Policy{}} on success
  {:error, info} on failure
  """
  @spec compute_instance_templates_set_iam_policy(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.Compute.V1.Model.Policy.t()} | {:error, Tesla.Env.t()}
  def compute_instance_templates_set_iam_policy(
        connection,
        project,
        resource,
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
      |> Request.url("/{project}/global/instanceTemplates/{resource}/setIamPolicy", %{
        "project" => URI.encode_www_form(project),
        "resource" => URI.encode_www_form(resource)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Compute.V1.Model.Policy{}])
  end

  @doc """
  Returns permissions that a caller has on the specified resource.

  ## Parameters

  - connection (GoogleApi.Compute.V1.Connection): Connection to server
  - project (String.t): Project ID for this request.
  - resource (String.t): Name or id of the resource for this request.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (TestPermissionsRequest): 

  ## Returns

  {:ok, %GoogleApi.Compute.V1.Model.TestPermissionsResponse{}} on success
  {:error, info} on failure
  """
  @spec compute_instance_templates_test_iam_permissions(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.Compute.V1.Model.TestPermissionsResponse.t()} | {:error, Tesla.Env.t()}
  def compute_instance_templates_test_iam_permissions(
        connection,
        project,
        resource,
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
      |> Request.url("/{project}/global/instanceTemplates/{resource}/testIamPermissions", %{
        "project" => URI.encode_www_form(project),
        "resource" => URI.encode_www_form(resource)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Compute.V1.Model.TestPermissionsResponse{}])
  end
end
