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

defmodule Mix.Tasks.GoogleApis.Format do
  use Mix.Task

  @shortdoc "Format generated client code"

  def run([only]) do
    only
    |> GoogleApis.ApiConfig.load()
    |> Enum.each(&GoogleApis.format_client/1)
  end

  def run(_) do
    Enum.each(GoogleApis.ApiConfig.load_all(), &GoogleApis.format_client/1)
  end
end
