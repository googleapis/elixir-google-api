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

defmodule GoogleApi.Tasks.V1.Api.Tasks do
  @moduledoc """
  API calls for all endpoints tagged `Tasks`.
  """

  alias GoogleApi.Tasks.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Clears all completed tasks from the specified task list. The affected tasks will be marked as 'hidden' and no longer be returned by default when retrieving all tasks for a task list.

  ## Parameters

  - connection (GoogleApi.Tasks.V1.Connection): Connection to server
  - tasklist (String.t): Task list identifier.
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec tasks_tasks_clear(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def tasks_tasks_clear(connection, tasklist, optional_params \\ [], opts \\ []) do
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
      |> Request.method(:post)
      |> Request.url("/lists/{tasklist}/clear", %{
        "tasklist" => URI.encode(tasklist, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Deletes the specified task from the task list.

  ## Parameters

  - connection (GoogleApi.Tasks.V1.Connection): Connection to server
  - tasklist (String.t): Task list identifier.
  - task (String.t): Task identifier.
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec tasks_tasks_delete(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def tasks_tasks_delete(connection, tasklist, task, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/lists/{tasklist}/tasks/{task}", %{
        "tasklist" => URI.encode(tasklist, &URI.char_unreserved?/1),
        "task" => URI.encode(task, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Returns the specified task.

  ## Parameters

  - connection (GoogleApi.Tasks.V1.Connection): Connection to server
  - tasklist (String.t): Task list identifier.
  - task (String.t): Task identifier.
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.Tasks.V1.Model.Task{}} on success
  {:error, info} on failure
  """
  @spec tasks_tasks_get(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Tasks.V1.Model.Task.t()} | {:error, Tesla.Env.t()}
  def tasks_tasks_get(connection, tasklist, task, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/lists/{tasklist}/tasks/{task}", %{
        "tasklist" => URI.encode(tasklist, &URI.char_unreserved?/1),
        "task" => URI.encode(task, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Tasks.V1.Model.Task{}])
  end

  @doc """
  Creates a new task on the specified task list.

  ## Parameters

  - connection (GoogleApi.Tasks.V1.Connection): Connection to server
  - tasklist (String.t): Task list identifier.
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :parent (String.t): Parent task identifier. If the task is created at the top level, this parameter is omitted. Optional.
    - :previous (String.t): Previous sibling task identifier. If the task is created at the first position among its siblings, this parameter is omitted. Optional.
    - :body (GoogleApi.Tasks.V1.Model.Task.t): 

  ## Returns

  {:ok, %GoogleApi.Tasks.V1.Model.Task{}} on success
  {:error, info} on failure
  """
  @spec tasks_tasks_insert(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Tasks.V1.Model.Task.t()} | {:error, Tesla.Env.t()}
  def tasks_tasks_insert(connection, tasklist, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :parent => :query,
      :previous => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/lists/{tasklist}/tasks", %{
        "tasklist" => URI.encode(tasklist, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Tasks.V1.Model.Task{}])
  end

  @doc """
  Returns all tasks in the specified task list.

  ## Parameters

  - connection (GoogleApi.Tasks.V1.Connection): Connection to server
  - tasklist (String.t): Task list identifier.
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :completedMax (String.t): Upper bound for a task's completion date (as a RFC 3339 timestamp) to filter by. Optional. The default is not to filter by completion date.
    - :completedMin (String.t): Lower bound for a task's completion date (as a RFC 3339 timestamp) to filter by. Optional. The default is not to filter by completion date.
    - :dueMax (String.t): Upper bound for a task's due date (as a RFC 3339 timestamp) to filter by. Optional. The default is not to filter by due date.
    - :dueMin (String.t): Lower bound for a task's due date (as a RFC 3339 timestamp) to filter by. Optional. The default is not to filter by due date.
    - :maxResults (String.t): Maximum number of task lists returned on one page. Optional. The default is 20 (max allowed: 100).
    - :pageToken (String.t): Token specifying the result page to return. Optional.
    - :showCompleted (boolean()): Flag indicating whether completed tasks are returned in the result. Optional. The default is True.
    - :showDeleted (boolean()): Flag indicating whether deleted tasks are returned in the result. Optional. The default is False.
    - :showHidden (boolean()): Flag indicating whether hidden tasks are returned in the result. Optional. The default is False.
    - :updatedMin (String.t): Lower bound for a task's last modification time (as a RFC 3339 timestamp) to filter by. Optional. The default is not to filter by last modification time.

  ## Returns

  {:ok, %GoogleApi.Tasks.V1.Model.Tasks{}} on success
  {:error, info} on failure
  """
  @spec tasks_tasks_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Tasks.V1.Model.Tasks.t()} | {:error, Tesla.Env.t()}
  def tasks_tasks_list(connection, tasklist, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :completedMax => :query,
      :completedMin => :query,
      :dueMax => :query,
      :dueMin => :query,
      :maxResults => :query,
      :pageToken => :query,
      :showCompleted => :query,
      :showDeleted => :query,
      :showHidden => :query,
      :updatedMin => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/lists/{tasklist}/tasks", %{
        "tasklist" => URI.encode(tasklist, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Tasks.V1.Model.Tasks{}])
  end

  @doc """
  Moves the specified task to another position in the task list. This can include putting it as a child task under a new parent and/or move it to a different position among its sibling tasks.

  ## Parameters

  - connection (GoogleApi.Tasks.V1.Connection): Connection to server
  - tasklist (String.t): Task list identifier.
  - task (String.t): Task identifier.
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :parent (String.t): New parent task identifier. If the task is moved to the top level, this parameter is omitted. Optional.
    - :previous (String.t): New previous sibling task identifier. If the task is moved to the first position among its siblings, this parameter is omitted. Optional.

  ## Returns

  {:ok, %GoogleApi.Tasks.V1.Model.Task{}} on success
  {:error, info} on failure
  """
  @spec tasks_tasks_move(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Tasks.V1.Model.Task.t()} | {:error, Tesla.Env.t()}
  def tasks_tasks_move(connection, tasklist, task, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :parent => :query,
      :previous => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/lists/{tasklist}/tasks/{task}/move", %{
        "tasklist" => URI.encode(tasklist, &URI.char_unreserved?/1),
        "task" => URI.encode(task, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Tasks.V1.Model.Task{}])
  end

  @doc """
  Updates the specified task. This method supports patch semantics.

  ## Parameters

  - connection (GoogleApi.Tasks.V1.Connection): Connection to server
  - tasklist (String.t): Task list identifier.
  - task (String.t): Task identifier.
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (GoogleApi.Tasks.V1.Model.Task.t): 

  ## Returns

  {:ok, %GoogleApi.Tasks.V1.Model.Task{}} on success
  {:error, info} on failure
  """
  @spec tasks_tasks_patch(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Tasks.V1.Model.Task.t()} | {:error, Tesla.Env.t()}
  def tasks_tasks_patch(connection, tasklist, task, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/lists/{tasklist}/tasks/{task}", %{
        "tasklist" => URI.encode(tasklist, &URI.char_unreserved?/1),
        "task" => URI.encode(task, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Tasks.V1.Model.Task{}])
  end

  @doc """
  Updates the specified task.

  ## Parameters

  - connection (GoogleApi.Tasks.V1.Connection): Connection to server
  - tasklist (String.t): Task list identifier.
  - task (String.t): Task identifier.
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (GoogleApi.Tasks.V1.Model.Task.t): 

  ## Returns

  {:ok, %GoogleApi.Tasks.V1.Model.Task{}} on success
  {:error, info} on failure
  """
  @spec tasks_tasks_update(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Tasks.V1.Model.Task.t()} | {:error, Tesla.Env.t()}
  def tasks_tasks_update(connection, tasklist, task, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/lists/{tasklist}/tasks/{task}", %{
        "tasklist" => URI.encode(tasklist, &URI.char_unreserved?/1),
        "task" => URI.encode(task, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Tasks.V1.Model.Task{}])
  end
end
