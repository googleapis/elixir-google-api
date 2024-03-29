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

defmodule GoogleApi.Datastream.V1.Model.SqlServerSchema do
  @moduledoc """
  SQLServer schema.

  ## Attributes

  *   `schema` (*type:* `String.t`, *default:* `nil`) - Schema name.
  *   `tables` (*type:* `list(GoogleApi.Datastream.V1.Model.SqlServerTable.t)`, *default:* `nil`) - Tables in the schema.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :schema => String.t() | nil,
          :tables => list(GoogleApi.Datastream.V1.Model.SqlServerTable.t()) | nil
        }

  field(:schema)
  field(:tables, as: GoogleApi.Datastream.V1.Model.SqlServerTable, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Datastream.V1.Model.SqlServerSchema do
  def decode(value, options) do
    GoogleApi.Datastream.V1.Model.SqlServerSchema.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Datastream.V1.Model.SqlServerSchema do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
