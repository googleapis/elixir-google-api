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
  defmodule Client do
    use Tesla
    plug(Tesla.Middleware.DecompressResponse, [])
  end

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

  def discover_merge() do
    exceptions = get_exceptions()
    ApiConfig.load_all()
    |> remove_entries(discover(preferred: false, exceptions: exceptions), exceptions: exceptions)
    |> add_entries(discover(preferred: true, exceptions: exceptions))
    |> Enum.sort_by(fn config ->
      {config.publish == false, String.downcase(config.name), config.version, config.url}
    end)
    |> format_entries()
  end

  @doc """
  Download the list of preferred APIs from the Discovery service
  """
  def discover(opts \\ []) do
    items = case System.fetch_env("DISCOVERIES_DIR") do
      {:ok, dir} -> items_from_dam(dir, opts)
      :error -> items_from_service(opts)
    end

    exceptions = Keyword.get_lazy(opts, :exceptions, &get_exceptions/0)
    Enum.flat_map(items, fn %{name: name, version: version, discoveryRestUrl: url} ->
      exceptions
      |> Enum.any?(fn
        %{type: "omit", name: ^name, version: ^version} -> true
        %{type: "omit", discoveryRestUrl: ^url} -> true
        _ -> false
      end)
      |> if do
        []
      else
        [%ApiConfig{name: name, version: version, url: url}]
      end
    end)
  end

  defp items_from_dam(dir, opts) do
    src_file = Path.expand("index.json", dir)
    {:ok, body} = File.read(src_file)
    {:ok, %{items: items}} = Jason.decode(body, keys: :atoms)
    preferred = Keyword.get(opts, :preferred, true)
    if preferred do
      Enum.filter(items, fn
        %{preferred: preferred} -> preferred
      end)
    else
      items
    end
  end

  defp items_from_service(opts) do
    conn = Connection.new()
    preferred = Keyword.get(opts, :preferred, true)
    {:ok, %{items: items}} = Apis.discovery_apis_list(conn, preferred: preferred)
    items
  end

  defmodule Exception do
    defstruct type: nil,
              name: nil,
              version: nil,
              discoveryRestUrl: nil
  end

  defp get_exceptions() do
    "./config/exceptions.json"
    |> Path.expand()
    |> File.read!()
    |> Poison.decode!(as: [%Exception{}])
  end

  defp remove_entries(current, discovered, opts) do
    exceptions = Keyword.get_lazy(opts, :exceptions, &get_exceptions/0)
    Enum.map(current, fn
      (%ApiConfig{publish: false} = cur_config) ->
        cur_config
      (%ApiConfig{url: cur_url, version: cur_version, name: cur_name} = cur_config) ->
        discovered
        |> Enum.find_value(fn
          %ApiConfig{url: ^cur_url} ->
            cur_config
          %ApiConfig{version: ^cur_version, name: new_name, url: new_url} ->
            if String.downcase(new_name) == String.downcase(cur_name) do
              %ApiConfig{cur_config | url: new_url, publish: "CHECKME: Url changed from #{cur_url}"}
            else
              false
            end
          _ ->
            false
        end)
        |> case do
          nil ->
            if Enum.any?(exceptions, fn
              %{type: "keep", name: ^cur_name, version: ^cur_version} -> true
              _ -> false
            end) do
              cur_config
            else
              %ApiConfig{cur_config | publish: "CHECKME: No longer in discovery. Consider removal."}
            end
          altered_config ->
            altered_config
        end
    end)
  end

  defp add_entries(current, discovered) do
    Enum.reduce(discovered, current, fn(%ApiConfig{name: new_name, url: new_url, version: new_version} = new_config, configs) ->
      configs
      |> Enum.map_reduce(new_name, fn
        (cur_config, nil) ->
          {cur_config, nil}
        (%ApiConfig{url: ^new_url} = cur_config, _) ->
          {cur_config, nil}
        (%ApiConfig{url: cur_url, name: cur_name, version: cur_version} = cur_config, working_name) ->
          if String.downcase(cur_name) == String.downcase(working_name) do
            if cur_version == new_version do
              changed_config = %ApiConfig{cur_config | url: new_url, publish: "CHECKME: Url changed from #{cur_url}"}
              {changed_config, nil}
            else
              {cur_config, cur_name}
            end
          else
            {cur_config, working_name}
          end
      end)
      |> case do
        {modified_configs, nil} ->
          modified_configs
        {modified_configs, new_name} ->
          new_name = if String.downcase(new_name) == new_name, do: String.capitalize(new_name), else: new_name
          nc = %ApiConfig{new_config | name: new_name, publish: "CHECKME: Newly added. Adjust the name capitalization."}
          [nc | modified_configs]
      end
    end)
  end

  defp format_entries(entries) do
    Enum.map(entries, fn
      %ApiConfig{name: name, version: version, url: url, publish: true} ->
        %{
          "version" => version,
          "name" => name,
          "url" => url
        }
      %ApiConfig{name: name, version: version, url: url, publish: publish} ->
        %{
          "version" => version,
          "name" => name,
          "url" => url,
          "publish" => publish
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

    with {:ok, %Tesla.Env{status: 200, body: body}} <- Client.get(url) do
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
