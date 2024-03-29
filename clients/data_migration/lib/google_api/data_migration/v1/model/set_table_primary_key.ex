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

defmodule GoogleApi.DataMigration.V1.Model.SetTablePrimaryKey do
  @moduledoc """
  Options to configure rule type SetTablePrimaryKey. The rule is used to specify the columns and name to configure/alter the primary key of a table. The rule filter field can refer to one entity. The rule scope can be one of: Table.

  ## Attributes

  *   `primaryKey` (*type:* `String.t`, *default:* `nil`) - Optional. Name for the primary key
  *   `primaryKeyColumns` (*type:* `list(String.t)`, *default:* `nil`) - Required. List of column names for the primary key
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :primaryKey => String.t() | nil,
          :primaryKeyColumns => list(String.t()) | nil
        }

  field(:primaryKey)
  field(:primaryKeyColumns, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DataMigration.V1.Model.SetTablePrimaryKey do
  def decode(value, options) do
    GoogleApi.DataMigration.V1.Model.SetTablePrimaryKey.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DataMigration.V1.Model.SetTablePrimaryKey do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
