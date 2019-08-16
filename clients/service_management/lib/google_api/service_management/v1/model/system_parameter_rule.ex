# Copyright 2019 Google LLC
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

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.ServiceManagement.V1.Model.SystemParameterRule do
  @moduledoc """
  Define a system parameter rule mapping system parameter definitions to
  methods.

  ## Attributes

  *   `parameters` (*type:* `list(GoogleApi.ServiceManagement.V1.Model.SystemParameter.t)`, *default:* `nil`) - Define parameters. Multiple names may be defined for a parameter.
      For a given method call, only one of them should be used. If multiple
      names are used the behavior is implementation-dependent.
      If none of the specified names are present the behavior is
      parameter-dependent.
  *   `selector` (*type:* `String.t`, *default:* `nil`) - Selects the methods to which this rule applies. Use '*' to indicate all
      methods in all APIs.

      Refer to selector for syntax details.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :parameters => list(GoogleApi.ServiceManagement.V1.Model.SystemParameter.t()),
          :selector => String.t()
        }

  field(:parameters, as: GoogleApi.ServiceManagement.V1.Model.SystemParameter, type: :list)
  field(:selector)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceManagement.V1.Model.SystemParameterRule do
  def decode(value, options) do
    GoogleApi.ServiceManagement.V1.Model.SystemParameterRule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceManagement.V1.Model.SystemParameterRule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
