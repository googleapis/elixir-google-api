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

defmodule GoogleApi.SQLAdmin.V1beta4.Model.ExportContextSqlExportOptions do
  @moduledoc """
  Options for exporting data as SQL statements.

  ## Attributes

  *   `mysqlExportOptions` (*type:* `GoogleApi.SQLAdmin.V1beta4.Model.ExportContextSqlExportOptionsMysqlExportOptions.t`, *default:* `nil`) - Options for exporting from MySQL.
  *   `schemaOnly` (*type:* `boolean()`, *default:* `nil`) - Export only schemas.
  *   `tables` (*type:* `list(String.t)`, *default:* `nil`) - Tables to export, or that were exported, from the specified database. If
      you specify tables, specify one and only one database. For PostgreSQL
      instances, you can specify only one table.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :mysqlExportOptions =>
            GoogleApi.SQLAdmin.V1beta4.Model.ExportContextSqlExportOptionsMysqlExportOptions.t(),
          :schemaOnly => boolean(),
          :tables => list(String.t())
        }

  field(
    :mysqlExportOptions,
    as: GoogleApi.SQLAdmin.V1beta4.Model.ExportContextSqlExportOptionsMysqlExportOptions
  )

  field(:schemaOnly)
  field(:tables, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1beta4.Model.ExportContextSqlExportOptions do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1beta4.Model.ExportContextSqlExportOptions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1beta4.Model.ExportContextSqlExportOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
