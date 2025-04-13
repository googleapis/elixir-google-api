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

defmodule GoogleApi.MigrationCenter.V1.Model.DatabaseSchema do
  @moduledoc """
  Details of a database schema.

  ## Attributes

  *   `mysql` (*type:* `GoogleApi.MigrationCenter.V1.Model.MySqlSchemaDetails.t`, *default:* `nil`) - Optional. Details of a Mysql schema.
  *   `objects` (*type:* `list(GoogleApi.MigrationCenter.V1.Model.DatabaseObjects.t)`, *default:* `nil`) - Optional. List of details of objects by category.
  *   `postgresql` (*type:* `GoogleApi.MigrationCenter.V1.Model.PostgreSqlSchemaDetails.t`, *default:* `nil`) - Optional. Details of a PostgreSql schema.
  *   `schemaName` (*type:* `String.t`, *default:* `nil`) - Required. The name of the schema.
  *   `sqlServer` (*type:* `GoogleApi.MigrationCenter.V1.Model.SqlServerSchemaDetails.t`, *default:* `nil`) - Optional. Details of a SqlServer schema.
  *   `tablesSizeBytes` (*type:* `String.t`, *default:* `nil`) - Optional. The total size of tables in bytes.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :mysql => GoogleApi.MigrationCenter.V1.Model.MySqlSchemaDetails.t() | nil,
          :objects => list(GoogleApi.MigrationCenter.V1.Model.DatabaseObjects.t()) | nil,
          :postgresql => GoogleApi.MigrationCenter.V1.Model.PostgreSqlSchemaDetails.t() | nil,
          :schemaName => String.t() | nil,
          :sqlServer => GoogleApi.MigrationCenter.V1.Model.SqlServerSchemaDetails.t() | nil,
          :tablesSizeBytes => String.t() | nil
        }

  field(:mysql, as: GoogleApi.MigrationCenter.V1.Model.MySqlSchemaDetails)
  field(:objects, as: GoogleApi.MigrationCenter.V1.Model.DatabaseObjects, type: :list)
  field(:postgresql, as: GoogleApi.MigrationCenter.V1.Model.PostgreSqlSchemaDetails)
  field(:schemaName)
  field(:sqlServer, as: GoogleApi.MigrationCenter.V1.Model.SqlServerSchemaDetails)
  field(:tablesSizeBytes)
end

defimpl Poison.Decoder, for: GoogleApi.MigrationCenter.V1.Model.DatabaseSchema do
  def decode(value, options) do
    GoogleApi.MigrationCenter.V1.Model.DatabaseSchema.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MigrationCenter.V1.Model.DatabaseSchema do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
