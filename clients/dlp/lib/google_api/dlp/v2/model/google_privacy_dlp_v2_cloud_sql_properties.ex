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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CloudSqlProperties do
  @moduledoc """
  Cloud SQL connection properties.

  ## Attributes

  *   `cloudSqlIam` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CloudSqlIamCredential.t`, *default:* `nil`) - Built-in IAM authentication (must be configured in Cloud SQL).
  *   `connectionName` (*type:* `String.t`, *default:* `nil`) - Optional. Immutable. The Cloud SQL instance for which the connection is defined. Only one connection per instance is allowed. This can only be set at creation time, and cannot be updated. It is an error to use a connection_name from different project or region than the one that holds the connection. For example, a Connection resource for Cloud SQL connection_name `project-id:us-central1:sql-instance` must be created under the parent `projects/project-id/locations/us-central1`
  *   `databaseEngine` (*type:* `String.t`, *default:* `nil`) - Required. The database engine used by the Cloud SQL instance that this connection configures.
  *   `maxConnections` (*type:* `integer()`, *default:* `nil`) - Required. The DLP API will limit its connections to max_connections. Must be 2 or greater.
  *   `usernamePassword` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2SecretManagerCredential.t`, *default:* `nil`) - A username and password stored in Secret Manager.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cloudSqlIam =>
            GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CloudSqlIamCredential.t() | nil,
          :connectionName => String.t() | nil,
          :databaseEngine => String.t() | nil,
          :maxConnections => integer() | nil,
          :usernamePassword =>
            GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2SecretManagerCredential.t() | nil
        }

  field(:cloudSqlIam, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CloudSqlIamCredential)
  field(:connectionName)
  field(:databaseEngine)
  field(:maxConnections)
  field(:usernamePassword, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2SecretManagerCredential)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CloudSqlProperties do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CloudSqlProperties.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CloudSqlProperties do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
