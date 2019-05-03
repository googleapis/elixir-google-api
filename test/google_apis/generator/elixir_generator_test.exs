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

defmodule GoogleApis.Generator.ElixirGeneratorTest do
  use ExUnit.Case
  doctest GoogleApis.Generator.ElixirGenerator

  alias GoogleApis.Generator.ElixirGenerator

  test "find all models" do
    rest = rest_description("specifications/gdd/TestClient-v1.json")

    all_models = ElixirGenerator.all_models(rest)
    all_model_names =
      all_models
      |> Enum.map(&(Map.get(&1, :name)))
      |> Enum.sort

    assert 5 == length(all_models)

    assert ~w(Container ContainerObjectVal DateContainer GenericContainer NestedContainer) == all_model_names
  end

  test "find all apis" do
    rest = rest_description("specifications/gdd/TestClient-v1.json")

    all_apis = ElixirGenerator.all_apis(rest)

    all_api_names =
      all_apis
      |> Enum.map(&(Map.get(&1, :name)))
      |> Enum.sort

    assert 1 == length(all_apis)

    assert ~w(Objects) == all_api_names
  end

  # test "find all functions" do
  #   rest = rest_description("specifications/gdd/TestClient-v1.json")

  #   all_functions = ElixirGenerator.all_functions(rest)
  #   all_function_names =
  #     all_functions
  #     |> Enum.map(&(Map.get(&1, :name)))
  #     |> Enum.sort

  #   assert 7 == length(all_functions)

  #   assert ~w(objects_batch_write objects_delete objects_get objects_insert objects_insert_resumable objects_insert_simple objects_wrapped) == all_function_names
  # end

  defp rest_description(file) do
    file
    |> File.read!
    |> Poison.decode!(as: %GoogleApi.Discovery.V1.Model.RestDescription{})
  end
end
