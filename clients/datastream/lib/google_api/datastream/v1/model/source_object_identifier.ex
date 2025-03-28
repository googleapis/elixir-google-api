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

defmodule GoogleApi.Datastream.V1.Model.SourceObjectIdentifier do
  @moduledoc """
  Represents an identifier of an object in the data source.

  ## Attributes

  *   `mongodbIdentifier` (*type:* `GoogleApi.Datastream.V1.Model.MongodbObjectIdentifier.t`, *default:* `nil`) - MongoDB data source object identifier.
  *   `mysqlIdentifier` (*type:* `GoogleApi.Datastream.V1.Model.MysqlObjectIdentifier.t`, *default:* `nil`) - Mysql data source object identifier.
  *   `oracleIdentifier` (*type:* `GoogleApi.Datastream.V1.Model.OracleObjectIdentifier.t`, *default:* `nil`) - Oracle data source object identifier.
  *   `postgresqlIdentifier` (*type:* `GoogleApi.Datastream.V1.Model.PostgresqlObjectIdentifier.t`, *default:* `nil`) - PostgreSQL data source object identifier.
  *   `salesforceIdentifier` (*type:* `GoogleApi.Datastream.V1.Model.SalesforceObjectIdentifier.t`, *default:* `nil`) - Salesforce data source object identifier.
  *   `sqlServerIdentifier` (*type:* `GoogleApi.Datastream.V1.Model.SqlServerObjectIdentifier.t`, *default:* `nil`) - SQLServer data source object identifier.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :mongodbIdentifier => GoogleApi.Datastream.V1.Model.MongodbObjectIdentifier.t() | nil,
          :mysqlIdentifier => GoogleApi.Datastream.V1.Model.MysqlObjectIdentifier.t() | nil,
          :oracleIdentifier => GoogleApi.Datastream.V1.Model.OracleObjectIdentifier.t() | nil,
          :postgresqlIdentifier =>
            GoogleApi.Datastream.V1.Model.PostgresqlObjectIdentifier.t() | nil,
          :salesforceIdentifier =>
            GoogleApi.Datastream.V1.Model.SalesforceObjectIdentifier.t() | nil,
          :sqlServerIdentifier =>
            GoogleApi.Datastream.V1.Model.SqlServerObjectIdentifier.t() | nil
        }

  field(:mongodbIdentifier, as: GoogleApi.Datastream.V1.Model.MongodbObjectIdentifier)
  field(:mysqlIdentifier, as: GoogleApi.Datastream.V1.Model.MysqlObjectIdentifier)
  field(:oracleIdentifier, as: GoogleApi.Datastream.V1.Model.OracleObjectIdentifier)
  field(:postgresqlIdentifier, as: GoogleApi.Datastream.V1.Model.PostgresqlObjectIdentifier)
  field(:salesforceIdentifier, as: GoogleApi.Datastream.V1.Model.SalesforceObjectIdentifier)
  field(:sqlServerIdentifier, as: GoogleApi.Datastream.V1.Model.SqlServerObjectIdentifier)
end

defimpl Poison.Decoder, for: GoogleApi.Datastream.V1.Model.SourceObjectIdentifier do
  def decode(value, options) do
    GoogleApi.Datastream.V1.Model.SourceObjectIdentifier.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Datastream.V1.Model.SourceObjectIdentifier do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
