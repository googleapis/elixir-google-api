# Copyright 2018 Google LLC
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

defmodule GoogleApi.Gax.Request do
  @moduledoc """
  This module is used to build an HTTP request
  """

  @path_template_regex ~r/{(\+?[^}]+)}/i

  defstruct method: :get, url: "", body: [], query: [], file: [], header: [], library_version: ""

  @type param_location :: :body | :query | :header | :file
  @type method :: :head | :get | :delete | :trace | :options | :post | :put | :patch
  @type t :: %__MODULE__{
          method: method(),
          url: String.t(),
          body: keyword(),
          query: keyword(),
          file: keyword(),
          header: keyword(),
          library_version: String.t()
        }

  @spec new() :: GoogleApi.Gax.Request.t()
  def new do
    %__MODULE__{}
  end

  @spec library_version(GoogleApi.Gax.Request.t()) :: {:ok, String.t()} | :error
  def library_version(request), do: Map.fetch(request, :library_version)

  @doc """
  Specify the library version when building a request

  ## Parameters

  *   `request` (*type:* `GoogleApi.Gax.Request.t`) - Collected request options
  *   `version` (*type:* `String`) - Library version

  ## Returns

  *   `GoogleApi.Gax.Request.t`
  """
  @spec library_version(GoogleApi.Gax.Request.t(), String.t()) :: GoogleApi.Gax.Request.t()
  def library_version(request, version) do
    %{request | library_version: version}
  end

  @spec method(GoogleApi.Gax.Request.t()) :: {:ok, atom()} | :error
  def method(request), do: Map.fetch(request, :method)

  @doc """
  Specify the request method when building a request

  ## Parameters

  *   `request` (*type:* `GoogleApi.Gax.Request.t`) - Collected request options
  *   `m` (*type:* `String`) - Request method

  ## Returns

  *   `GoogleApi.Gax.Request.t`
  """
  @spec method(GoogleApi.Gax.Request.t(), atom()) :: GoogleApi.Gax.Request.t()
  def method(request, m) do
    %{request | method: m}
  end

  @spec url(GoogleApi.Gax.Request.t()) :: {:ok, String.t()} | :error
  def url(request), do: Map.fetch(request, :url)

  @doc """
  Specify the request URL when building a request

  ## Parameters

  *   `request` (*type:* `GoogleApi.Gax.Request.t`) - Collected request options
  *   `u` (*type:* `String`) - Request URL

  ## Returns

  *   `GoogleApi.Gax.Request.t`
  """
  @spec url(GoogleApi.Gax.Request.t(), String.t(), map()) :: GoogleApi.Gax.Request.t()
  def url(request, u, replacements) do
    url(request, replace_path_template_vars(u, replacements))
  end

  def url(request, u) do
    Map.put(request, :url, u)
  end

  defp replace_path_template_vars(u, replacements) do
    Regex.replace(@path_template_regex, u, fn _, var -> replacement_value(var, replacements) end)
  end

  defp replacement_value("+" <> name, replacements) do
    URI.decode(replacement_value(name, replacements))
  end

  defp replacement_value(name, replacements) do
    replacements
    |> Map.get(name, "")
    |> to_string
  end

  @doc """
  Add optional parameters to the request

  ## Parameters

  *   `request` (*type:* `GoogleApi.Gax.Request.t`) - Collected request options
  *   `definitions` (*type:* `Map`) - Map of parameter name to parameter location
  *   `options` (*type:* `keyword()`) - The provided optional parameters

  ## Returns

  *   `GoogleApi.Gax.Request.t`
  """
  @spec add_optional_params(
          GoogleApi.Gax.Request.t(),
          %{optional(atom()) => param_location()},
          keyword()
        ) :: GoogleApi.Gax.Request.t()
  def add_optional_params(request, _, []), do: request

  def add_optional_params(request, definitions, [{key, value} | tail]) do
    case definitions do
      %{^key => location} ->
        request
        |> add_param(location, key, value)
        |> add_optional_params(definitions, tail)

      _ ->
        add_optional_params(request, definitions, tail)
    end
  end

  @doc """
  Add optional parameters to the request

  ## Parameters

  *   `request` (*type:* `GoogleApi.Gax.Request.t`) - Collected request options
  *   `location` (*type:* `atom()`) - Where to put the parameter
  *   `key` (*type:* `atom()`) - The name of the parameter
  *   `value` (*type:* `any()`) - The value of the parameter

  ## Returns

  *   `GoogleApi.Gax.Request.t`
  """
  @spec add_param(GoogleApi.Gax.Request.t(), param_location(), atom(), any()) ::
          GoogleApi.Gax.Request.t()
  def add_param(request, :query, key, values) when is_list(values) do
    Enum.reduce(values, request, fn value, req ->
      add_param(req, :query, key, value)
    end)
  end

  def add_param(request, location, key, value) do
    Map.update!(request, location, &(&1 ++ [{key, value}]))
  end
end
