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

defmodule Mix.Tasks.GoogleApis.Discover do
  use Mix.Task

  @shortdoc "Download GoogleApi list"

  def run([output]) do
    GoogleApis.Discovery.discover()
    |> write_file(output)
  end
  def run(_) do
    run(["apis-candidate.json"])
  end

  defp write_file(apis, output) do
    file = Path.expand("./config/#{output}")
    json = Poison.encode!(apis, pretty: true)

    File.write(file, json)
  end
end
