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

    with {:ok, tmp_dir} <- generate_code(filename, client_library_name),
         {:ok, files} <- copy_code(tmp_dir, client_library_name) do
      {:ok, files}
    else
      {:error, msg} ->
        {:error, msg}
    end
  end

  defp image() do
    Application.get_env(:google_apis, :swagger_cli_image)
  end

  defp template_dir() do
    Path.join("/local/template", Application.get_env(:google_apis, :template))
  end

  defp generate_code(filename, client_library_name) do
    tmp_dir = Temp.path!("codegen-out-#{client_library_name}")

    with {:ok, volume_name} <- run_docker_command("volume create"),
         {:ok, container} <-
           run_docker_command("container create -v #{volume_name}:/data #{image()}"),
         {:ok, _} <- run_docker_command("cp . #{container}:/data"),
         {:ok, _} <- run_docker_command("rm #{container}"),
         generate_command =
           "run --rm -v #{volume_name}:/local -v #{tmp_dir}:/tmp/out #{image()} generate -l elixir -i /local/specifications/openapi/#{
             filename
           } -c /local/specifications/config/#{filename} -t #{template_dir()} -o /tmp/out/#{
             client_library_name
           }",
         {:ok, _} <- run_docker_command(generate_command) do
      {:ok, tmp_dir}
    else
      err -> err
    end
  end

  defp run_docker_command(command) do
    case System.cmd("docker", String.split(command), stderr_to_stdout: true) do
      {output, 0} ->
        {:ok, String.trim_trailing(output)}

      {output, exit_code} ->
        {:error, "Exited with code #{exit_code}: " <> output}
    end
  end

  defp copy_code(tmp_dir, client_library_name) do
    output_dir = Path.join([System.cwd(), "clients", client_library_name])
    src_dir = Path.join(tmp_dir, client_library_name)

    ignore_files = files_to_ignore(output_dir)

    File.cp_r(src_dir, output_dir, fn _src, dest ->
      !MapSet.member?(ignore_files, dest)
    end)
  end

  defp files_to_ignore(output_dir) do
    ignore_file = Path.join(output_dir, ".swagger-codegen-ignore")

    case File.read(ignore_file) do
      {:ok, contents} ->
        contents
        |> String.split("\n")
        |> Enum.filter(&ignorable_file/1)
        |> Enum.concat([".swagger-codegen-ignore"])
        |> Enum.map(&Path.join(output_dir, &1))
        |> Enum.reduce([], fn wildcard, acc -> acc ++ Path.wildcard(wildcard) end)
        |> MapSet.new()

      _ ->
        MapSet.new()
    end
  end

  defp ignorable_file(filename) do
    String.trim(filename) != "" && !String.match?(filename, ~r/^\s*#/)
  end
end
