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

defmodule GoogleApi.DataMigration.V1.Model.SqlServerConnectionProfile do
  @moduledoc """
  Specifies connection parameters required specifically for SQL Server databases.

  ## Attributes

  *   `backups` (*type:* `GoogleApi.DataMigration.V1.Model.SqlServerBackups.t`, *default:* `nil`) - The backup details in Cloud Storage for homogeneous migration to Cloud SQL for SQL Server.
  *   `cloudSqlId` (*type:* `String.t`, *default:* `nil`) - If the source is a Cloud SQL database, use this field to provide the Cloud SQL instance ID of the source.
  *   `forwardSshConnectivity` (*type:* `GoogleApi.DataMigration.V1.Model.ForwardSshTunnelConnectivity.t`, *default:* `nil`) - Forward SSH tunnel connectivity.
  *   `host` (*type:* `String.t`, *default:* `nil`) - Required. The IP or hostname of the source SQL Server database.
  *   `password` (*type:* `String.t`, *default:* `nil`) - Required. Input only. The password for the user that Database Migration Service will be using to connect to the database. This field is not returned on request, and the value is encrypted when stored in Database Migration Service.
  *   `passwordSet` (*type:* `boolean()`, *default:* `nil`) - Output only. Indicates whether a new password is included in the request.
  *   `port` (*type:* `integer()`, *default:* `nil`) - Required. The network port of the source SQL Server database.
  *   `privateConnectivity` (*type:* `GoogleApi.DataMigration.V1.Model.PrivateConnectivity.t`, *default:* `nil`) - Private connectivity.
  *   `privateServiceConnectConnectivity` (*type:* `GoogleApi.DataMigration.V1.Model.PrivateServiceConnectConnectivity.t`, *default:* `nil`) - Private Service Connect connectivity.
  *   `ssl` (*type:* `GoogleApi.DataMigration.V1.Model.SslConfig.t`, *default:* `nil`) - SSL configuration for the destination to connect to the source database.
  *   `staticIpConnectivity` (*type:* `GoogleApi.DataMigration.V1.Model.StaticIpConnectivity.t`, *default:* `nil`) - Static IP connectivity data (default, no additional details needed).
  *   `username` (*type:* `String.t`, *default:* `nil`) - Required. The username that Database Migration Service will use to connect to the database. The value is encrypted when stored in Database Migration Service.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :backups => GoogleApi.DataMigration.V1.Model.SqlServerBackups.t() | nil,
          :cloudSqlId => String.t() | nil,
          :forwardSshConnectivity =>
            GoogleApi.DataMigration.V1.Model.ForwardSshTunnelConnectivity.t() | nil,
          :host => String.t() | nil,
          :password => String.t() | nil,
          :passwordSet => boolean() | nil,
          :port => integer() | nil,
          :privateConnectivity => GoogleApi.DataMigration.V1.Model.PrivateConnectivity.t() | nil,
          :privateServiceConnectConnectivity =>
            GoogleApi.DataMigration.V1.Model.PrivateServiceConnectConnectivity.t() | nil,
          :ssl => GoogleApi.DataMigration.V1.Model.SslConfig.t() | nil,
          :staticIpConnectivity =>
            GoogleApi.DataMigration.V1.Model.StaticIpConnectivity.t() | nil,
          :username => String.t() | nil
        }

  field(:backups, as: GoogleApi.DataMigration.V1.Model.SqlServerBackups)
  field(:cloudSqlId)

  field(:forwardSshConnectivity, as: GoogleApi.DataMigration.V1.Model.ForwardSshTunnelConnectivity)

  field(:host)
  field(:password)
  field(:passwordSet)
  field(:port)
  field(:privateConnectivity, as: GoogleApi.DataMigration.V1.Model.PrivateConnectivity)

  field(:privateServiceConnectConnectivity,
    as: GoogleApi.DataMigration.V1.Model.PrivateServiceConnectConnectivity
  )

  field(:ssl, as: GoogleApi.DataMigration.V1.Model.SslConfig)
  field(:staticIpConnectivity, as: GoogleApi.DataMigration.V1.Model.StaticIpConnectivity)
  field(:username)
end

defimpl Poison.Decoder, for: GoogleApi.DataMigration.V1.Model.SqlServerConnectionProfile do
  def decode(value, options) do
    GoogleApi.DataMigration.V1.Model.SqlServerConnectionProfile.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DataMigration.V1.Model.SqlServerConnectionProfile do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end