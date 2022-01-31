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

defmodule GoogleApi.Spanner.V1.Model.Database do
  @moduledoc """
  A Cloud Spanner database.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. If exists, the time at which the database creation started.
  *   `databaseDialect` (*type:* `String.t`, *default:* `nil`) - Output only. The dialect of the Cloud Spanner Database.
  *   `defaultLeader` (*type:* `String.t`, *default:* `nil`) - Output only. The read-write region which contains the database's leader replicas. This is the same as the value of default_leader database option set using DatabaseAdmin.CreateDatabase or DatabaseAdmin.UpdateDatabaseDdl. If not explicitly set, this is empty.
  *   `earliestVersionTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Earliest timestamp at which older versions of the data can be read. This value is continuously updated by Cloud Spanner and becomes stale the moment it is queried. If you are using this value to recover data, make sure to account for the time from the moment when the value is queried to the moment when you initiate the recovery.
  *   `encryptionConfig` (*type:* `GoogleApi.Spanner.V1.Model.EncryptionConfig.t`, *default:* `nil`) - Output only. For databases that are using customer managed encryption, this field contains the encryption configuration for the database. For databases that are using Google default or other types of encryption, this field is empty.
  *   `encryptionInfo` (*type:* `list(GoogleApi.Spanner.V1.Model.EncryptionInfo.t)`, *default:* `nil`) - Output only. For databases that are using customer managed encryption, this field contains the encryption information for the database, such as encryption state and the Cloud KMS key versions that are in use. For databases that are using Google default or other types of encryption, this field is empty. This field is propagated lazily from the backend. There might be a delay from when a key version is being used and when it appears in this field.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. The name of the database. Values are of the form `projects//instances//databases/`, where `` is as specified in the `CREATE DATABASE` statement. This name can be passed to other API methods to identify the database.
  *   `restoreInfo` (*type:* `GoogleApi.Spanner.V1.Model.RestoreInfo.t`, *default:* `nil`) - Output only. Applicable only for restored databases. Contains information about the restore source.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The current database state.
  *   `versionRetentionPeriod` (*type:* `String.t`, *default:* `nil`) - Output only. The period in which Cloud Spanner retains all versions of data for the database. This is the same as the value of version_retention_period database option set using UpdateDatabaseDdl. Defaults to 1 hour, if not set.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :databaseDialect => String.t() | nil,
          :defaultLeader => String.t() | nil,
          :earliestVersionTime => DateTime.t() | nil,
          :encryptionConfig => GoogleApi.Spanner.V1.Model.EncryptionConfig.t() | nil,
          :encryptionInfo => list(GoogleApi.Spanner.V1.Model.EncryptionInfo.t()) | nil,
          :name => String.t() | nil,
          :restoreInfo => GoogleApi.Spanner.V1.Model.RestoreInfo.t() | nil,
          :state => String.t() | nil,
          :versionRetentionPeriod => String.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:databaseDialect)
  field(:defaultLeader)
  field(:earliestVersionTime, as: DateTime)
  field(:encryptionConfig, as: GoogleApi.Spanner.V1.Model.EncryptionConfig)
  field(:encryptionInfo, as: GoogleApi.Spanner.V1.Model.EncryptionInfo, type: :list)
  field(:name)
  field(:restoreInfo, as: GoogleApi.Spanner.V1.Model.RestoreInfo)
  field(:state)
  field(:versionRetentionPeriod)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.Database do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.Database.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.Database do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
