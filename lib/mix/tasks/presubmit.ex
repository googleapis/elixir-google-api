# Copyright 2020 Google LLC
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

defmodule Mix.Tasks.Presubmit do
  use Mix.Task

  @shortdoc "Presubmit tests"

  def run(_) do
    cmd_opts = [into: IO.stream(:stdio, :line), env: [{"MIX_ENV", "test"}]]
    {generator_changed, changed_clients} = get_changes()
    if generator_changed do
      header("Running tests for generator")
      {_, 0} = System.cmd("mix", ["test", "--include=external"], cmd_opts)
      header("Building test client")
      {_, 0} = System.cmd("mix", ["google_apis.build", "TestClient"], into: IO.stream(:stdio, :line))
      header("Running tests for test client")
      {_, 0} = System.cmd("mix", ["do", "deps.get,", "test"], [{:cd, "clients/test_client"} | cmd_opts])
    end
    Enum.each(changed_clients, fn client ->
      header("Running tests for client: #{client}")
      {_, 0} = System.cmd("mix", ["do", "deps.get,", "test"], [{:cd, "clients/#{client}"} | cmd_opts])
    end)
  end

  defp get_changes() do
    base_ref = "GITHUB_EVENT_PATH" |> System.get_env() |> get_base_ref()
    {output, 0} = System.cmd("git", ["--no-pager", "diff", "--name-only", base_ref])
    files = String.split(output, "\n", trim: true)

    changed_clients = files
    |> Enum.reduce([], fn
      ("clients/" <> path, list) ->
        [name | _] = String.split(path, "/", parts: 2)
        [name | list]
      (_, list) -> list
    end)
    |> Enum.uniq()
    |> Enum.sort()

    generator_changed = Enum.any?(files, fn
      ("mix." <> _) -> true
      ("lib/" <> _) -> true
      ("test/" <> _) -> true
      ("template/" <> _) -> true
      (_) -> false
    end)

    {generator_changed, changed_clients}
  end

  defp get_base_ref(nil), do: "HEAD"

  defp get_base_ref(event_path) do
    base_ref = event_path
    |> File.read!()
    |> Jason.decode!()
    |> get_in(["pull_request", "base", "sha"])
    {_, 0} = System.cmd("git", ["fetch", "--no-tags", "--prune", "--depth=1", "origin", base_ref], into: IO.stream(:stdio, :line))
    base_ref
  end

  defp header(str) do
    IO.puts("\n#{IO.ANSI.bright()}**** #{str} ****#{IO.ANSI.reset()}\n")
  end
end
