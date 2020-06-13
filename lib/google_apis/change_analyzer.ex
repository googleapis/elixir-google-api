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

  @significance_levels %{
    identical: 0,
    discovery_revision: 1,
    documentation: 2,
    significant: 3
  }

  def has_changes_of_significance?(api_config, significance) do
    actual_sig = compute_change_significance(api_config)
    Map.fetch!(@significance_levels, actual_sig) >= Map.fetch!(@significance_levels, significance)
  end

  @doc """
  Analyzes the git diff for the given API, and determines whether any of the
  changes are actual significant changes as opposed to documentation, comment,
  or formatting.

  Returns one of the following:

   *  `:identical` - The change includes at most changes to synth.metadata and
      formatting/whitespace. We generally respond by not opening a synth PR.
   *  `:discovery_revision` - The change includes at most a change to the
      discovery revision (plus changes of lower significance) but no changes to
      the code or documentation. We generally respond by not opening a synth PR.
   *  `:documentation` - The change includes at most changes to the inline
      documentation (plus changes of lower significance) but no changes to the
      code. We generally respond by opening a PR and bumping the patch version.
   *  `:significant` - The change includes code changes. We generally respond by
      opening a PR and bumping the minor version.
  """
  def compute_change_significance(api_config) do
    dir = ApiConfig.library_directory(api_config)
    {only_modified, files} = check_git_status(dir)
    if only_modified do
      Enum.reduce(files, :identical, fn file, sig ->
        file |> file_change_significance() |> combine_significance(sig)
      end)
    else
      :significant
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
  @documentation_only_files ["README.md"]
  @non_significant_files ["synth.metadata"]

  defp file_change_significance(file) do
    cond do
      Enum.member?(@elixir_source_extensions, Path.extname(file)) ->
        elixir_file_change_significance(file)
      Enum.member?(@documentation_only_files, Path.basename(file)) ->
        :documentation
      Enum.member?(@non_significant_files, Path.basename(file)) ->
        :identical
      true ->
        :significant
    end
  end

  defp elixir_file_change_significance(file) do
    with {old_content, 0} <- System.cmd("git", ["show", "HEAD:#{file}"]),
         {:ok, new_content} <- File.read(file) do
      elixir_content_change_significance(old_content, new_content, file)
    else
      {:error, _} ->
        Logger.error("Change analyzer: could not read file #{file}")
        :significant
      _ ->
        Logger.error("Change analyzer: git show failed for file #{file}")
        :significant
    end
  end

  defp elixir_content_change_significance(old_content, new_content, file) do
    with {:old, {:ok, old_ast}} <- {:old, Code.string_to_quoted(old_content)},
         {:new, {:ok, new_ast}} <- {:new, Code.string_to_quoted(new_content)} do
      elixir_ast_change_significance(old_ast, new_ast, Path.basename(file))
    else
      {:old, _} ->
        Logger.error("Change analyzer: parse of pre-change #{file} failed!")
        :significant
      {:new, _} ->
        Logger.error("Change analyzer: parse of post-change #{file} failed!")
        :significant
    end
  end

  defp elixir_ast_change_significance(old_ast, new_ast, basename) do
    cond do
      old_ast == new_ast ->
        :identical
      strip_trivial_ast(old_ast, :discovery_revision, basename) == strip_trivial_ast(new_ast, :discovery_revision, basename) ->
        :discovery_revision
      strip_trivial_ast(old_ast, :documentation, basename) == strip_trivial_ast(new_ast, :documentation, basename) ->
        :documentation
      true ->
        :significant
    end
  end

  defp strip_trivial_ast({:@, _, [{:doc, _, [str]}]}, :documentation, _) when is_binary(str) do
    {:@, [], [{:doc, [], ["."]}]}
  end

  defp strip_trivial_ast({:@, _, [{:moduledoc, _, [str]}]}, _, _) when is_binary(str) do
    {:@, [], [{:moduledoc, [], ["."]}]}
  end

  defp strip_trivial_ast({:@, _, [{:version, _, [str]}]}, _, "mix.exs") when is_binary(str) do
    {:@, [], [{:version, [], ["."]}]}
  end

  defp strip_trivial_ast({:@, _, [{:discovery_revision, _, [str]}]}, sig_test, "metadata.ex")
      when is_binary(str) and (sig_test == :documentation or sig_test == :discovery_revision) do
    {:@, [], [{:discovery_revision, [], ["."]}]}
  end

  defp strip_trivial_ast({name, _, args}, sig_test, basename) do
    {strip_trivial_ast(name, sig_test, basename), [], strip_trivial_ast(args, sig_test, basename)}
  end

  defp strip_trivial_ast(list, sig_test, basename) when is_list(list) do
    Enum.map(list, &(strip_trivial_ast(&1, sig_test, basename)))
  end

  defp strip_trivial_ast({key, value}, sig_test, basename) do
    {strip_trivial_ast(key, sig_test, basename), strip_trivial_ast(value, sig_test, basename)}
  end

  defp strip_trivial_ast(term, _, _) do
    term
  end

  defp combine_significance(sig1, sig2) do
    level1 = Map.fetch!(@significance_levels, sig1)
    level2 = Map.fetch!(@significance_levels, sig2)
    if level1 > level2, do: sig1, else: sig2
  end
end
