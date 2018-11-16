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

defmodule GoogleApi.CloudDebugger.V2.Api.Debugger do
  @moduledoc """
  API calls for all endpoints tagged `Debugger`.
  """

  alias GoogleApi.CloudDebugger.V2.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Deletes the breakpoint from the debuggee.

  ## Parameters

  - connection (GoogleApi.CloudDebugger.V2.Connection): Connection to server
  - debuggee_id (String.t): ID of the debuggee whose breakpoint to delete.
  - breakpoint_id (String.t): ID of the breakpoint to delete.
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
    - :clientVersion (String.t): The client version making the call. Schema: &#x60;domain/type/version&#x60; (e.g., &#x60;google.com/intellij/v1&#x60;).

  ## Returns

  {:ok, %GoogleApi.CloudDebugger.V2.Model.Empty{}} on success
  {:error, info} on failure
  """
  @spec clouddebugger_debugger_debuggees_breakpoints_delete(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.CloudDebugger.V2.Model.Empty.t()} | {:error, Tesla.Env.t()}
  def clouddebugger_debugger_debuggees_breakpoints_delete(
        connection,
        debuggee_id,
        breakpoint_id,
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
      :clientVersion => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/v2/debugger/debuggees/{debuggeeId}/breakpoints/{breakpointId}", %{
        "debuggeeId" => URI.encode_www_form(debuggee_id),
        "breakpointId" => URI.encode_www_form(breakpoint_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.CloudDebugger.V2.Model.Empty{}])
  end

  @doc """
  Gets breakpoint information.

  ## Parameters

  - connection (GoogleApi.CloudDebugger.V2.Connection): Connection to server
  - debuggee_id (String.t): ID of the debuggee whose breakpoint to get.
  - breakpoint_id (String.t): ID of the breakpoint to get.
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
    - :clientVersion (String.t): The client version making the call. Schema: &#x60;domain/type/version&#x60; (e.g., &#x60;google.com/intellij/v1&#x60;).

  ## Returns

  {:ok, %GoogleApi.CloudDebugger.V2.Model.GetBreakpointResponse{}} on success
  {:error, info} on failure
  """
  @spec clouddebugger_debugger_debuggees_breakpoints_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.CloudDebugger.V2.Model.GetBreakpointResponse.t()}
          | {:error, Tesla.Env.t()}
  def clouddebugger_debugger_debuggees_breakpoints_get(
        connection,
        debuggee_id,
        breakpoint_id,
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
      :clientVersion => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v2/debugger/debuggees/{debuggeeId}/breakpoints/{breakpointId}", %{
        "debuggeeId" => URI.encode_www_form(debuggee_id),
        "breakpointId" => URI.encode_www_form(breakpoint_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.CloudDebugger.V2.Model.GetBreakpointResponse{}]
    )
  end

  @doc """
  Lists all breakpoints for the debuggee.

  ## Parameters

  - connection (GoogleApi.CloudDebugger.V2.Connection): Connection to server
  - debuggee_id (String.t): ID of the debuggee whose breakpoints to list.
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
    - :stripResults (boolean()): This field is deprecated. The following fields are always stripped out of the result: &#x60;stack_frames&#x60;, &#x60;evaluated_expressions&#x60; and &#x60;variable_table&#x60;.
    - :waitToken (String.t): A wait token that, if specified, blocks the call until the breakpoints list has changed, or a server selected timeout has expired.  The value should be set from the last response. The error code &#x60;google.rpc.Code.ABORTED&#x60; (RPC) is returned on wait timeout, which should be called again with the same &#x60;wait_token&#x60;.
    - :action.value (String.t): Only breakpoints with the specified action will pass the filter.
    - :clientVersion (String.t): The client version making the call. Schema: &#x60;domain/type/version&#x60; (e.g., &#x60;google.com/intellij/v1&#x60;).
    - :includeAllUsers (boolean()): When set to &#x60;true&#x60;, the response includes the list of breakpoints set by any user. Otherwise, it includes only breakpoints set by the caller.
    - :includeInactive (boolean()): When set to &#x60;true&#x60;, the response includes active and inactive breakpoints. Otherwise, it includes only active breakpoints.

  ## Returns

  {:ok, %GoogleApi.CloudDebugger.V2.Model.ListBreakpointsResponse{}} on success
  {:error, info} on failure
  """
  @spec clouddebugger_debugger_debuggees_breakpoints_list(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.CloudDebugger.V2.Model.ListBreakpointsResponse.t()}
          | {:error, Tesla.Env.t()}
  def clouddebugger_debugger_debuggees_breakpoints_list(
        connection,
        debuggee_id,
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
      :stripResults => :query,
      :waitToken => :query,
      :"action.value" => :query,
      :clientVersion => :query,
      :includeAllUsers => :query,
      :includeInactive => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v2/debugger/debuggees/{debuggeeId}/breakpoints", %{
        "debuggeeId" => URI.encode_www_form(debuggee_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.CloudDebugger.V2.Model.ListBreakpointsResponse{}]
    )
  end

  @doc """
  Sets the breakpoint to the debuggee.

  ## Parameters

  - connection (GoogleApi.CloudDebugger.V2.Connection): Connection to server
  - debuggee_id (String.t): ID of the debuggee where the breakpoint is to be set.
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
    - :clientVersion (String.t): The client version making the call. Schema: &#x60;domain/type/version&#x60; (e.g., &#x60;google.com/intellij/v1&#x60;).
    - :body (Breakpoint): 

  ## Returns

  {:ok, %GoogleApi.CloudDebugger.V2.Model.SetBreakpointResponse{}} on success
  {:error, info} on failure
  """
  @spec clouddebugger_debugger_debuggees_breakpoints_set(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.CloudDebugger.V2.Model.SetBreakpointResponse.t()}
          | {:error, Tesla.Env.t()}
  def clouddebugger_debugger_debuggees_breakpoints_set(
        connection,
        debuggee_id,
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
      :clientVersion => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v2/debugger/debuggees/{debuggeeId}/breakpoints/set", %{
        "debuggeeId" => URI.encode_www_form(debuggee_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.CloudDebugger.V2.Model.SetBreakpointResponse{}]
    )
  end

  @doc """
  Lists all the debuggees that the user has access to.

  ## Parameters

  - connection (GoogleApi.CloudDebugger.V2.Connection): Connection to server
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
    - :clientVersion (String.t): The client version making the call. Schema: &#x60;domain/type/version&#x60; (e.g., &#x60;google.com/intellij/v1&#x60;).
    - :includeInactive (boolean()): When set to &#x60;true&#x60;, the result includes all debuggees. Otherwise, the result includes only debuggees that are active.
    - :project (String.t): Project number of a Google Cloud project whose debuggees to list.

  ## Returns

  {:ok, %GoogleApi.CloudDebugger.V2.Model.ListDebuggeesResponse{}} on success
  {:error, info} on failure
  """
  @spec clouddebugger_debugger_debuggees_list(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.CloudDebugger.V2.Model.ListDebuggeesResponse.t()}
          | {:error, Tesla.Env.t()}
  def clouddebugger_debugger_debuggees_list(connection, optional_params \\ [], opts \\ []) do
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
      :clientVersion => :query,
      :includeInactive => :query,
      :project => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v2/debugger/debuggees")
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.CloudDebugger.V2.Model.ListDebuggeesResponse{}]
    )
  end
end
