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

defmodule GoogleApis.Generator.ElixirGenerator.Api do
  @moduledoc """
  An Api represents a collection of endpoints.
  """

  @type t :: %__MODULE__{
          :name => String.t(),
          :description => String.t(),
          :endpoints => list(Endpoint.t())
        }

  defstruct [:name, :description, :endpoints]

  @doc """
  Returns the name of the file that should be generated.
  """
  @spec filename(t) :: String.t()
  def filename(api) do
    "#{Macro.underscore(api.name)}.ex"
  end
end
