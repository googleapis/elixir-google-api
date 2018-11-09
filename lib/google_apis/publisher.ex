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

defmodule GoogleApis.Publisher do
  alias GoogleApis.ApiConfig

  def publish(api_config) do
    IO.inspect api_config
    directory = Path.join([
      System.cwd(),
      "clients",
      ApiConfig.library_name(api_config)
    ])
    args = [
      "hex.publish",
      "--dry-run",
      "--yes"
    ]
    env = [{"HEX_API_KEY", Application.get_env(:google_apis, :hex_api_key)}]
    System.cmd("mix", ["deps.get"], cd: directory, env: env)
    System.cmd("mix", args, cd: directory, env: env)
  end
end