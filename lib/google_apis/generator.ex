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
  alias GoogleApis.ApiConfig

  def bump_version(api_config) do
    mixfile = Path.join(ApiConfig.library_directory(api_config), "mix.exs")

    new_contents =
      mixfile
      |> File.stream!()
      |> Stream.map(&replace_version/1)
      |> Stream.into([])
      |> Enum.join("")

    File.write!(mixfile, new_contents)
  end

  defp replace_version(line) do
    Regex.replace(~r/@version "(\d+\.\d+\.\d+)"/, line, fn _, version_str ->
      bump_version_string(version_str)
    end)
  end

  defp bump_version_string(str) do
    v =
      str
      |> Version.parse!()
      |> Map.update!(:minor, fn v -> v + 1 end)
      |> Map.put(:patch, 0)

    "@version \"#{v.major}.#{v.minor}.#{v.patch}\""
  end
end
