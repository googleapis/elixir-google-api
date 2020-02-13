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

defmodule GoogleApis.ChangeAnalyzer do
  @moduledoc """
  Analyzes the current git diff and determines what kind of changes have been
  made. This information can be used to determine what type of version bump
  should accompany the change.
  """

  alias GoogleApis.ApiConfig

  require Logger

  @doc """
  Analyzes the git diff for the given API, and determines whether any of the
  changes are actual semantic changes as opposed to documentation, comment, or
  formatting.
  """
  def has_semantic_changes?(api_config) do
    dir = ApiConfig.library_directory(api_config)
    {only_modified, files} = check_git_status(dir)
    if only_modified do
      Enum.any?(files, &file_has_semantic_changes?/1)
    else
      true
    end
  end

  defp check_git_status(dir) do
    case System.cmd("git", ["status", "--porcelain"]) do
      {results, 0} ->
        results
        |> String.split("\n", trim: true)
        |> Enum.reduce({true, []}, fn
          (_, {false, _}) ->
            {false, []}
          (line, {true, files}) ->
            case Regex.run(~r{^ M (\S+)}, line) do
              [_, file] ->
                if String.starts_with?(Path.expand(file), dir) do
                  {true, [file | files]}
                else
                  {true, files}
                end
              nil ->
                {false, []}
            end
        end)
      _ ->
        Logger.error("Change analyzer: git status failed!")
        {false, []}
    end
  end

  @elixir_source_extensions [".ex", ".exs"]
  @non_semantic_files ["synth.metadata", "README.md"]

  defp file_has_semantic_changes?(file) do
    cond do
      Enum.member?(@elixir_source_extensions, Path.extname(file)) ->
        elixir_file_has_semantic_changes?(file)
      Enum.member?(@non_semantic_files, Path.basename(file)) ->
        false
      true ->
        true
    end
  end

  defp elixir_file_has_semantic_changes?(file) do
    case System.cmd("git", ["show", "HEAD:#{file}"]) do
      {old_content, 0} ->
        case File.read(file) do
          {:ok, new_content} ->
            elixir_content_has_semantic_changes?(old_content, new_content, file)
          _ ->
            true
        end
      _ ->
        Logger.error("Change analyzer: git show failed!")
        true
    end
  end

  defp elixir_content_has_semantic_changes?(old_content, new_content, file) do
    case Code.string_to_quoted(old_content) do
      {:ok, old_quoted} ->
        case Code.string_to_quoted(new_content) do
          {:ok, new_quoted} ->
            elixir_quoted_has_semantic_changes?(old_quoted, new_quoted)
          _ ->
            Logger.error("Change analyzer: parse of post-change #{file} failed!")
            true
        end
      _ ->
        Logger.error("Change analyzer: parse of pre-change #{file} failed!")
        true
    end
  end

  defp elixir_quoted_has_semantic_changes?(old_quoted, new_quoted) do
    strip_trivial_quoted(old_quoted) != strip_trivial_quoted(new_quoted)
  end

  defp strip_trivial_quoted({:@, _, [{:doc, _, [str]}]}) when is_binary(str) do
    {:@, [], [{:doc, [], ["."]}]}
  end

  defp strip_trivial_quoted({:@, _, [{:moduledoc, _, [str]}]}) when is_binary(str) do
    {:@, [], [{:moduledoc, [], ["."]}]}
  end

  defp strip_trivial_quoted({name, _, args}) do
    {strip_trivial_quoted(name), [], strip_trivial_quoted(args)}
  end

  defp strip_trivial_quoted(list) when is_list(list) do
    Enum.map(list, &strip_trivial_quoted/1)
  end

  defp strip_trivial_quoted({key, value}) do
    {strip_trivial_quoted(key), strip_trivial_quoted(value)}
  end

  defp strip_trivial_quoted(term) do
    term
  end
end
