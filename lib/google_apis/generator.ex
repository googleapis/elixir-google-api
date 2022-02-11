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

defmodule GoogleApis.Generator do
  @callback generate_client(GoogleApis.ApiConfig.t()) :: any()
  alias GoogleApis.{ApiConfig, ChangeAnalyzer}

  require Logger

  def bump_version(api_config) do
    hex_version = current_hex_version(api_config)
    bump_type = if ChangeAnalyzer.has_changes_of_significance?(api_config, :significant), do: :minor, else: :patch
    Logger.info("Bumping #{bump_type}")
    new_version = bump_version_string(hex_version, bump_type)
    mix_version = current_mix_version(api_config)
    if Version.parse!(new_version) > Version.parse!(mix_version) do
      set_mix_version(api_config, new_version)
      requirement = version_requirement_string(new_version)
      set_readme_version(api_config, requirement)
    end
  end

  def rollback_if_not_significant(api_configs) do
    if !Enum.any?(api_configs, &(ChangeAnalyzer.has_changes_of_significance?(&1, :documentation))) do
      Logger.info("Found only discovery_revision and/or formatting changes. Not significant enough for a PR.")
      directories = Enum.map(api_configs, &(GoogleApis.ApiConfig.library_directory(&1)))
      System.cmd("git", ["restore" | directories])
    end
  end

  defp current_hex_version(api_config) do
    package_name = "google_api_#{ApiConfig.library_name(api_config)}"

    tesla_result =
      Tesla.get("https://hex.pm/api/packages/#{package_name}",
        headers: [{"User-Agent", "google-api-client-generator"}]
      )

    with {:ok, %{status: 200, body: body, headers: headers}} <- tesla_result,
         json <- maybe_delay(headers, body),
         {:ok, info} <- Jason.decode(json),
         [%{"version" => version} | _] <- Map.get(info, "releases") do
      version
    else
      _ ->
        Logger.warn(
          "Failed to get hex version for #{package_name}. Falling back on reading mix.exs."
        )

        current_mix_version(api_config)
    end
  end

  defp maybe_delay(headers, body) do
    remaining =
      Enum.find_value(headers, 100, fn
        {k, v} when k == "x-ratelimit-remaining" -> String.to_integer(v)
        _ -> nil
      end)

    if remaining < 2 do
      reset_time =
        Enum.find_value(headers, 0, fn
          {k, v} when k == "x-ratelimit-reset" -> String.to_integer(v)
          _ -> nil
        end)

      cur_time = System.system_time(:seconds)

      if reset_time > cur_time - 2 do
        Process.sleep((reset_time - cur_time + 2) * 1000)
      end
    end

    body
  end

  defp current_mix_version(api_config) do
    path = Path.join(ApiConfig.library_directory(api_config), "mix.exs")

    with {:ok, old_content} <- File.read(path),
         [_, version] <- Regex.run(~r{@version "([\d\.]+)"}, old_content) do
      version
    else
      _ -> "0.0.1"
    end
  end

  defp set_mix_version(api_config, version) do
    path = Path.join(ApiConfig.library_directory(api_config), "mix.exs")

    case File.read(path) do
      {:ok, old_content} ->
        content = Regex.replace(~r{@version "[\d\.]+"}, old_content, "@version \"#{version}\"")
        File.write!(path, content)

      _ ->
        nil
    end
  end

  defp set_readme_version(api_config, requirement) do
    package_name = "google_api_#{ApiConfig.library_name(api_config)}"
    path = Path.join(ApiConfig.library_directory(api_config), "README.md")

    case File.read(path) do
      {:ok, old_content} ->
        content =
          Regex.replace(
            ~r{:#{package_name}, "~> [\d\.]+"},
            old_content,
            ":#{package_name}, \"~> #{requirement}\""
          )

        File.write!(path, content)

      _ ->
        nil
    end
  end

  defp bump_version_string(str, :minor) do
    v =
      str
      |> Version.parse!()
      |> Map.update!(:minor, fn v -> v + 1 end)
      |> Map.put(:patch, 0)

    "#{v.major}.#{v.minor}.#{v.patch}"
  end

  defp bump_version_string(str, :patch) do
    v =
      str
      |> Version.parse!()
      |> Map.update!(:patch, fn v -> v + 1 end)

    "#{v.major}.#{v.minor}.#{v.patch}"
  end

  defp version_requirement_string(str) do
    v = Version.parse!(str)
    "#{v.major}.#{v.minor}"
  end
end
