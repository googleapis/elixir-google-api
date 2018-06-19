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

defmodule GoogleApis.Generator.SwaggerCli do

  @behaviour GoogleApis.Generator
  alias GoogleApis.ApiConfig

  def generate_client(api_config) do
    filename = ApiConfig.file(api_config)
    client_library_name = ApiConfig.library_name(api_config)
    tmp_dir = Temp.path!("codegen-out-#{client_library_name}")
    docker_args = [
      "run",
      "--rm",
      "-v", "#{System.cwd()}:/local",
      "-v", "#{tmp_dir}:/tmp/out",
      image(), "generate",
      "-l", "elixir",
      "-i", "/local/specifications/openapi/#{filename}",
      "-c", "/local/specifications/config/#{filename}",
      "-t", template_dir(),
      "-o", "/tmp/out/#{client_library_name}"
    ]
    with {_, 0} <- System.cmd("docker", docker_args, stderr_to_stdout: true),
         {:ok, _} <- File.cp_r(Path.join(tmp_dir, client_library_name), Path.join([System.cwd(), "clients", client_library_name]))
    do
      {:ok, ""}
    else
      {:error, msg} ->
        {:error, msg}
      {output, exit_code} ->
        {:error, "Exited with code #{exit_code}" <> output}
    end
  end

  defp image() do
    Application.get_env(:google_apis, :swagger_cli_image)
  end

  defp template_dir() do
    Path.join("/local/template", Application.get_env(:google_apis, :template))
  end
end
