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

defmodule Mix.Tasks.GoogleApis.Generate do
  use Mix.Task

  @shortdoc "Generate clients"

  def run([only]) do
    only
    |> GoogleApis.ApiConfig.load()
    |> builder()
  end

  def run(_) do
    builder(GoogleApis.ApiConfig.load_all())
  end

  defp builder(apis) do
    Enum.each(apis, fn api ->
      GoogleApis.fetch(api)
      GoogleApis.convert_spec(api)
      GoogleApis.generate_config(api)
      GoogleApis.generate_client(api)
      GoogleApis.format_client(api)
    end)
  end
end
