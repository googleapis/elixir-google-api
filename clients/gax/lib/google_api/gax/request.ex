# Copyright 2018 Google Inc.
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

  defstruct [:method, :url, body: [], query: [], file: [], header: []]

  @type t :: %__MODULE__{
    method: atom(),
    url: String.t(),
    body: keyword(),
    query: keyword(),
    file: keyword(),
    header: keyword()
  }

  @spec new() :: map()
  def new do
    %__MODULE__{}
  end

  @spec method(map()) :: {:ok, atom()} | :error
  def method(request), do: Map.fetch(request, :method)

  @doc """
  Specify the request method when building a request

  ## Parameters

  - request (Map) - Collected request options
  - m (String) - Request method

  ## Returns

  Map
  """
  @spec method(map(), String.t()) :: map()
  def method(request, m) do
    Map.put(request, :method, m)
  end

  @spec url(map()) :: {:ok, String.t()} | :error
  def url(request), do: Map.fetch(request, :url)

  @doc """
  Specify the request method when building a request

  ## Parameters

  - request (Map) - Collected request options
  - u (String) - Request URL

  ## Returns

  Map
  """
  @spec url(map(), String.t(), Map.t()) :: map()
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
    Map.get(replacements, name, "")
  end

  @doc """
  Add optional parameters to the request

  ## Parameters

  - request (Map) - Collected request options
  - definitions (Map) - Map of parameter name to parameter location.
  - options (KeywordList) - The provided optional parameters

  ## Returns

  Map
  """
  @spec add_optional_params(map(), %{optional(:atom) => :atom}, keyword()) :: map()
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

  - request (Map) - Collected request options
  - location (atom) - Where to put the parameter
  - key (atom) - The name of the parameter
  - value (any) - The value of the parameter

  ## Returns

  Map
  """
  @spec add_param(map(), :body | :query | :header | :file, atom(), any()) :: map()
  def add_param(request, location, key, value) do
    Map.update!(request, location, &(&1 ++ [{key, value}]))
  end
end