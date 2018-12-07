# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

defmodule GoogleApis.Discovery do
  alias GoogleApis.ApiConfig
  alias GoogleApi.Discovery.V1.Connection
  alias GoogleApi.Discovery.V1.Api.Apis

  require Logger

  def fetch(""), do: {:error, "No URL"}

  def fetch(url) do
    case Regex.run(~r/(https:\/\/.*\.googleapis.com\/\$discovery\/)([^?]*)(\?.*)?/, url) do
      [_, base, format, query] ->
        try_formats(base, query, ["GOOGLE_REST_SIMPLE_URI", format])

      nil ->
        case fetch_direct(url) do
          {:ok, body} -> {:ok, {body, "default"}}
          error -> error
        end
    end
  end

  @doc """
  Download the list of preferred APIs from the Discovery service
  """
  def discover() do
    conn = Connection.new()
    {:ok, %{items: items}} = Apis.discovery_apis_list(conn, preferred: true)

    Enum.map(items, fn item ->
      %ApiConfig{
        name: item.name,
        version: item.version,
        url: item.discoveryRestUrl
      }
    end)
  end

  defp try_formats(_base, _query, []), do: {:error, "All formats failed"}

  defp try_formats(base, query, [format | rest]) do
    case fetch_direct(base <> format <> query) do
      {:ok, body} ->
        {:ok, {body, format}}

      _ ->
        try_formats(base, query, rest)
    end
  end

  defp fetch_direct(url) do
    Logger.info("FETCHING: #{url}")

    with {:ok, %Tesla.Env{status: 200, body: body}} <- Tesla.get(url) do
      Logger.info("FOUND: #{url}")
      {:ok, body}
    else
      {:ok, %Tesla.Env{status: status}} ->
        {:error, "Error received status: #{status} from discovery endpoint"}

      err ->
        err
    end
  end
end
