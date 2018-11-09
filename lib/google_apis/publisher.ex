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
  require Logger

  def publish(api_config) do
    api_name = ApiConfig.library_name(api_config)
    directory = Path.join([
      System.cwd(),
      "clients",
      api_name
    ])

    if api_config.publish && should_publish?(directory) do
      Logger.info "publishing #{api_name}"
      do_publish(directory)
    else
      Logger.info "skipping #{api_name}"
    end
  end

  def should_publish?(directory) do
    mix_exs = Path.join(directory, "mix.exs")
    {{:module, mod, _, _}, _} = Code.eval_file(mix_exs)
    project_info = apply(mod, :project, [])

    app = Keyword.fetch!(project_info, :app)
    version = Keyword.fetch!(project_info, :version)

    Logger.info "Checking app: #{app} version: #{version}"
    !version_exists?(app, version)
  end

  def version_exists?(app, version) do
    case Tesla.get("https://hex.pm/packages/#{app}/#{version}") do
      %{status: 200}  -> true
      _               -> false
    end
  end

  defp do_publish(directory) do
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