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

defmodule GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1RoutineSpecArgument do
  @moduledoc """
  Input or output argument of a function or stored procedure.

  ## Attributes

  *   `mode` (*type:* `String.t`, *default:* `nil`) - Specifies whether the argument is input or output.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the argument. A return argument of a function might not have a name.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Type of the argument. The exact value depends on the source system and the language.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :mode => String.t() | nil,
          :name => String.t() | nil,
          :type => String.t() | nil
        }

  field(:mode)
  field(:name)
  field(:type)
end

defimpl Poison.Decoder,
  for: GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1RoutineSpecArgument do
  def decode(value, options) do
    GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1RoutineSpecArgument.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1RoutineSpecArgument do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
