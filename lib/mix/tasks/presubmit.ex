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

  def run(args) do
    {opts, _, _} = OptionParser.parse(args, switches: [pr: :string])

    files = get_changed_files(opts)
    IO.puts("\nChanged files:")
    Enum.each(files, fn file ->
      IO.puts("  #{file}")
    end)

    if generator_changed?(files) do
      header("Running tests for generator")
      {_, 0} = System.cmd("mix", ["test", "--include=external"],
                          into: IO.stream(:stdio, :line), env: [{"MIX_ENV", "test"}])
      header("Building test client")
      {_, 0} = System.cmd("mix", ["google_apis.build", "TestClient"],
                          into: IO.stream(:stdio, :line))
      header("Running tests for test client")
      {_, 0} = System.cmd("mix", ["do", "deps.get,", "test"],
                          cd: "clients/test_client", into: IO.stream(:stdio, :line), env: [{"MIX_ENV", "test"}])
    end

    Enum.each(changed_clients(files), fn client ->
      header("Running tests for client: #{client}")
      {_, 0} = System.cmd("mix", ["do", "deps.get,", "test"],
                          cd: "clients/#{client}", into: IO.stream(:stdio, :line), env: [{"MIX_ENV", "test"}])
    end)

    header("All presubmits passed!")
  end

  defp get_changed_files([]) do
    {output, 0} = System.cmd("git", ["--no-pager", "diff", "--name-only", "HEAD"])
    String.split(output, "\n", trim: true)
  end

  defp get_changed_files([pr: pr_number]) do
    {:ok, %{status: 200, body: diff}} =
      Tesla.get("https://patch-diff.githubusercontent.com/raw/googleapis/elixir-google-api/pull/#{pr_number}.diff")

    diff
    |> String.split("\n", trim: true)
    |> Enum.reduce([], fn (line, files) ->
      case Regex.run(~r{^diff --git a/(\S+) b/(\S+)$}, line) do
        [_, file1, file2] -> [file1, file2 | files]
        _ -> files
      end
    end)
    |> Enum.uniq()
    |> Enum.sort()
  end

  defp generator_changed?(files) do
    Enum.any?(files, fn
      ("mix." <> _) -> true
      ("lib/" <> _) -> true
      ("test/" <> _) -> true
      ("template/" <> _) -> true
      (_) -> false
    end)
  end

  defp changed_clients(files) do
    files
    |> Enum.reduce([], fn
      ("clients/" <> path, list) ->
        [name | _] = String.split(path, "/", parts: 2)
        [name | list]
      (_, list) -> list
    end)
    |> Enum.uniq()
    |> Enum.sort()
  end

  defp header(str) do
    IO.puts("\n#{IO.ANSI.bright()}#{IO.ANSI.yellow()}**** #{str} ****#{IO.ANSI.reset()}\n")
  end
end
