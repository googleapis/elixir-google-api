# Copyright 2019 Google Inc.
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

defmodule GoogleApis.Generator.ElixirGenerator.Renderer do
  @moduledoc """
  Renderer for building output code from templates.
  """

  require EEx

  EEx.function_from_file(:def, :model, Path.expand("./template/elixir/model.ex.eex"), [
    :model,
    :namespace
  ])

  EEx.function_from_file(:def, :api, Path.expand("./template/elixir/api.ex.eex"), [
    :api,
    :namespace,
    :global_optional_parameters
  ])
end
