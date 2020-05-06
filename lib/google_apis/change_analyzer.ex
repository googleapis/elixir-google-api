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
  changes are actual significant changes as opposed to documentation, comment,
  or formatting.
  """
  def has_significant_changes?(api_config) do
    dir = ApiConfig.library_directory(api_config)
    {only_modified, files} = check_git_status(dir)
    if only_modified do
      Enum.any?(files, &file_has_significant_changes?/1)
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
  @non_significant_files ["synth.metadata", "README.md"]

  defp file_has_significant_changes?(file) do
    cond do
      Enum.member?(@elixir_source_extensions, Path.extname(file)) ->
        elixir_file_has_significant_changes?(file)
      Enum.member?(@non_significant_files, Path.basename(file)) ->
        false
      true ->
        true
    end
  end

  defp elixir_file_has_significant_changes?(file) do
    with {old_content, 0} <- System.cmd("git", ["show", "HEAD:#{file}"]),
         {:ok, new_content} <- File.read(file) do
      elixir_content_has_significant_changes?(old_content, new_content, file)
    else
      {:error, _} ->
        Logger.error("Change analyzer: could not read file #{file}")
        true
      _ ->
        Logger.error("Change analyzer: git show failed for file #{file}")
        true
    end
  end

  defp elixir_content_has_significant_changes?(old_content, new_content, file) do
    with {:old, {:ok, old_ast}} <- {:old, Code.string_to_quoted(old_content)},
         {:new, {:ok, new_ast}} <- {:new, Code.string_to_quoted(new_content)} do
      elixir_ast_has_significant_changes?(old_ast, new_ast, Path.basename(file))
    else
      {:old, _} ->
        Logger.error("Change analyzer: parse of pre-change #{file} failed!")
        true
      {:new, _} ->
        Logger.error("Change analyzer: parse of post-change #{file} failed!")
        true
    end
  end

  defp elixir_ast_has_significant_changes?(old_ast, new_ast, basename) do
    strip_trivial_ast(old_ast, basename) != strip_trivial_ast(new_ast, basename)
  end

  defp strip_trivial_ast({:@, _, [{:doc, _, [str]}]}, _) when is_binary(str) do
    {:@, [], [{:doc, [], ["."]}]}
  end

  defp strip_trivial_ast({:@, _, [{:moduledoc, _, [str]}]}, _) when is_binary(str) do
    {:@, [], [{:moduledoc, [], ["."]}]}
  end

  defp strip_trivial_ast({:@, _, [{:version, _, [str]}]}, "mix.exs") when is_binary(str) do
    {:@, [], [{:version, [], ["."]}]}
  end

  defp strip_trivial_ast({:@, _, [{:discovery_revision, _, [str]}]}, "metadata.ex") when is_binary(str) do
    {:@, [], [{:discovery_revision, [], ["."]}]}
  end

  defp strip_trivial_ast({name, _, args}, basename) do
    {strip_trivial_ast(name, basename), [], strip_trivial_ast(args, basename)}
  end

  defp strip_trivial_ast(list, basename) when is_list(list) do
    Enum.map(list, &(strip_trivial_ast(&1, basename)))
  end

  defp strip_trivial_ast({key, value}, basename) do
    {strip_trivial_ast(key, basename), strip_trivial_ast(value, basename)}
  end

  defp strip_trivial_ast(term, _) do
    term
  end
end
