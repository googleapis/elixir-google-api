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

defmodule GoogleApi.CloudTrace.V1.Api.Projects do
  @moduledoc """
  API calls for all endpoints tagged `Projects`.
  """

  alias GoogleApi.CloudTrace.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Sends new traces to Stackdriver Trace or updates existing traces. If the ID of a trace that you send matches that of an existing trace, any fields in the existing trace and its spans are overwritten by the provided values, and any new fields provided are merged with the existing trace data. If the ID does not match, a new trace is created.

  ## Parameters

  - connection (GoogleApi.CloudTrace.V1.Connection): Connection to server
  - project_id (String.t): ID of the Cloud project where the trace data is stored.
  - optional_params (KeywordList): [optional] Optional parameters
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :access_token (String.t): OAuth access token.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :body (Traces): 

  ## Returns

  {:ok, %GoogleApi.CloudTrace.V1.Model.Empty{}} on success
  {:error, info} on failure
  """
  @spec cloudtrace_projects_patch_traces(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.CloudTrace.V1.Model.Empty.t()} | {:error, Tesla.Env.t()}
  def cloudtrace_projects_patch_traces(connection, project_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :fields => :query,
      :uploadType => :query,
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :access_token => :query,
      :key => :query,
      :upload_protocol => :query,
      :quotaUser => :query,
      :prettyPrint => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/v1/projects/{projectId}/traces", %{
        "projectId" => URI.encode_www_form(project_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.CloudTrace.V1.Model.Empty{}])
  end

  @doc """
  Gets a single trace by its ID.

  ## Parameters

  - connection (GoogleApi.CloudTrace.V1.Connection): Connection to server
  - project_id (String.t): ID of the Cloud project where the trace data is stored.
  - trace_id (String.t): ID of the trace to return.
  - optional_params (KeywordList): [optional] Optional parameters
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :access_token (String.t): OAuth access token.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.

  ## Returns

  {:ok, %GoogleApi.CloudTrace.V1.Model.Trace{}} on success
  {:error, info} on failure
  """
  @spec cloudtrace_projects_traces_get(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.CloudTrace.V1.Model.Trace.t()} | {:error, Tesla.Env.t()}
  def cloudtrace_projects_traces_get(
        connection,
        project_id,
        trace_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :fields => :query,
      :uploadType => :query,
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :access_token => :query,
      :key => :query,
      :upload_protocol => :query,
      :quotaUser => :query,
      :prettyPrint => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/projects/{projectId}/traces/{traceId}", %{
        "projectId" => URI.encode_www_form(project_id),
        "traceId" => URI.encode_www_form(trace_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.CloudTrace.V1.Model.Trace{}])
  end

  @doc """
  Returns of a list of traces that match the specified filter conditions.

  ## Parameters

  - connection (GoogleApi.CloudTrace.V1.Connection): Connection to server
  - project_id (String.t): ID of the Cloud project where the trace data is stored.
  - optional_params (KeywordList): [optional] Optional parameters
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :access_token (String.t): OAuth access token.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :orderBy (String.t): Field used to sort the returned traces. Optional. Can be one of the following:  *   &#x60;trace_id&#x60; *   &#x60;name&#x60; (&#x60;name&#x60; field of root span in the trace) *   &#x60;duration&#x60; (difference between &#x60;end_time&#x60; and &#x60;start_time&#x60; fields of      the root span) *   &#x60;start&#x60; (&#x60;start_time&#x60; field of the root span)  Descending order can be specified by appending &#x60;desc&#x60; to the sort field (for example, &#x60;name desc&#x60;).  Only one sort field is permitted.
    - :filter (String.t): An optional filter against labels for the request.  By default, searches use prefix matching. To specify exact match, prepend a plus symbol (&#x60;+&#x60;) to the search term. Multiple terms are ANDed. Syntax:  *   &#x60;root:NAME_PREFIX&#x60; or &#x60;NAME_PREFIX&#x60;: Return traces where any root     span starts with &#x60;NAME_PREFIX&#x60;. *   &#x60;+root:NAME&#x60; or &#x60;+NAME&#x60;: Return traces where any root span&#39;s name is     exactly &#x60;NAME&#x60;. *   &#x60;span:NAME_PREFIX&#x60;: Return traces where any span starts with     &#x60;NAME_PREFIX&#x60;. *   &#x60;+span:NAME&#x60;: Return traces where any span&#39;s name is exactly     &#x60;NAME&#x60;. *   &#x60;latency:DURATION&#x60;: Return traces whose overall latency is     greater or equal to than &#x60;DURATION&#x60;. Accepted units are nanoseconds     (&#x60;ns&#x60;), milliseconds (&#x60;ms&#x60;), and seconds (&#x60;s&#x60;). Default is &#x60;ms&#x60;. For     example, &#x60;latency:24ms&#x60; returns traces whose overall latency     is greater than or equal to 24 milliseconds. *   &#x60;label:LABEL_KEY&#x60;: Return all traces containing the specified     label key (exact match, case-sensitive) regardless of the key:value     pair&#39;s value (including empty values). *   &#x60;LABEL_KEY:VALUE_PREFIX&#x60;: Return all traces containing the specified     label key (exact match, case-sensitive) whose value starts with     &#x60;VALUE_PREFIX&#x60;. Both a key and a value must be specified. *   &#x60;+LABEL_KEY:VALUE&#x60;: Return all traces containing a key:value pair     exactly matching the specified text. Both a key and a value must be     specified. *   &#x60;method:VALUE&#x60;: Equivalent to &#x60;/http/method:VALUE&#x60;. *   &#x60;url:VALUE&#x60;: Equivalent to &#x60;/http/url:VALUE&#x60;.
    - :endTime (DateTime.t): End of the time interval (inclusive) during which the trace data was collected from the application.
    - :startTime (DateTime.t): Start of the time interval (inclusive) during which the trace data was collected from the application.
    - :pageToken (String.t): Token identifying the page of results to return. If provided, use the value of the &#x60;next_page_token&#x60; field from a previous request. Optional.
    - :pageSize (integer()): Maximum number of traces to return. If not specified or &lt;&#x3D; 0, the implementation selects a reasonable value.  The implementation may return fewer traces than the requested page size. Optional.
    - :view (String.t): Type of data returned for traces in the list. Optional. Default is &#x60;MINIMAL&#x60;.

  ## Returns

  {:ok, %GoogleApi.CloudTrace.V1.Model.ListTracesResponse{}} on success
  {:error, info} on failure
  """
  @spec cloudtrace_projects_traces_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.CloudTrace.V1.Model.ListTracesResponse.t()} | {:error, Tesla.Env.t()}
  def cloudtrace_projects_traces_list(connection, project_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :fields => :query,
      :uploadType => :query,
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :access_token => :query,
      :key => :query,
      :upload_protocol => :query,
      :quotaUser => :query,
      :prettyPrint => :query,
      :orderBy => :query,
      :filter => :query,
      :endTime => :query,
      :startTime => :query,
      :pageToken => :query,
      :pageSize => :query,
      :view => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/projects/{projectId}/traces", %{
        "projectId" => URI.encode_www_form(project_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.CloudTrace.V1.Model.ListTracesResponse{}])
  end
end
