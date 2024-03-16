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

defmodule GoogleApi.BigQueryConnection.V1.Model.CloudSqlProperties do
  @moduledoc """
  Connection properties specific to the Cloud SQL.

  ## Attributes

  *   `credential` (*type:* `GoogleApi.BigQueryConnection.V1.Model.CloudSqlCredential.t`, *default:* `nil`) - Input only. Cloud SQL credential.
  *   `database` (*type:* `String.t`, *default:* `nil`) - Database name.
  *   `instanceId` (*type:* `String.t`, *default:* `nil`) - Cloud SQL instance ID in the form `project:location:instance`.
  *   `serviceAccountId` (*type:* `String.t`, *default:* `nil`) - Output only. The account ID of the service used for the purpose of this connection. When the connection is used in the context of an operation in BigQuery, this service account will serve as the identity being used for connecting to the CloudSQL instance specified in this connection.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Type of the Cloud SQL database.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :credential => GoogleApi.BigQueryConnection.V1.Model.CloudSqlCredential.t() | nil,
          :database => String.t() | nil,
          :instanceId => String.t() | nil,
          :serviceAccountId => String.t() | nil,
          :type => String.t() | nil
        }

  field(:credential, as: GoogleApi.BigQueryConnection.V1.Model.CloudSqlCredential)
  field(:database)
  field(:instanceId)
  field(:serviceAccountId)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.BigQueryConnection.V1.Model.CloudSqlProperties do
  def decode(value, options) do
    GoogleApi.BigQueryConnection.V1.Model.CloudSqlProperties.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQueryConnection.V1.Model.CloudSqlProperties do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end