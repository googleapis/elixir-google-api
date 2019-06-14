# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.ServiceManagement.V1.Model.Enum do
  @moduledoc """
  Enum type definition.

  ## Attributes

  - enumvalue (list(GoogleApi.ServiceManagement.V1.Model.EnumValue.t)): Enum value definitions. Defaults to `nil`.
  - name (String.t): Enum type name. Defaults to `nil`.
  - options (list(GoogleApi.ServiceManagement.V1.Model.Option.t)): Protocol buffer options. Defaults to `nil`.
  - sourceContext (GoogleApi.ServiceManagement.V1.Model.SourceContext.t): The source context. Defaults to `nil`.
  - syntax (String.t): The source syntax. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :enumvalue => list(GoogleApi.ServiceManagement.V1.Model.EnumValue.t()),
          :name => String.t(),
          :options => list(GoogleApi.ServiceManagement.V1.Model.Option.t()),
          :sourceContext => GoogleApi.ServiceManagement.V1.Model.SourceContext.t(),
          :syntax => String.t()
        }

  field(:enumvalue, as: GoogleApi.ServiceManagement.V1.Model.EnumValue, type: :list)
  field(:name)
  field(:options, as: GoogleApi.ServiceManagement.V1.Model.Option, type: :list)
  field(:sourceContext, as: GoogleApi.ServiceManagement.V1.Model.SourceContext)
  field(:syntax)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceManagement.V1.Model.Enum do
  def decode(value, options) do
    GoogleApi.ServiceManagement.V1.Model.Enum.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceManagement.V1.Model.Enum do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
