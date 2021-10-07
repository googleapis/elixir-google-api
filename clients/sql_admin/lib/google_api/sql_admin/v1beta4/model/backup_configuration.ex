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

defmodule GoogleApi.SQLAdmin.V1beta4.Model.BackupConfiguration do
  @moduledoc """
  Database instance backup configuration.

  ## Attributes

  *   `backupRetentionSettings` (*type:* `GoogleApi.SQLAdmin.V1beta4.Model.BackupRetentionSettings.t`, *default:* `nil`) - Backup retention settings.
  *   `binaryLogEnabled` (*type:* `boolean()`, *default:* `nil`) - (MySQL only) Whether binary log is enabled. If backup configuration is disabled, binarylog must be disabled as well.
  *   `enabled` (*type:* `boolean()`, *default:* `nil`) - Whether this configuration is enabled.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - This is always **sql#backupConfiguration**.
  *   `location` (*type:* `String.t`, *default:* `nil`) - Location of the backup
  *   `pointInTimeRecoveryEnabled` (*type:* `boolean()`, *default:* `nil`) - (Postgres only) Whether point in time recovery is enabled.
  *   `replicationLogArchivingEnabled` (*type:* `boolean()`, *default:* `nil`) - Reserved for future use.
  *   `startTime` (*type:* `String.t`, *default:* `nil`) - Start time for the daily backup configuration in UTC timezone in the 24 hour format - **HH:MM**.
  *   `transactionLogRetentionDays` (*type:* `integer()`, *default:* `nil`) - The number of days of transaction logs we retain for point in time restore, from 1-7.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :backupRetentionSettings =>
            GoogleApi.SQLAdmin.V1beta4.Model.BackupRetentionSettings.t() | nil,
          :binaryLogEnabled => boolean() | nil,
          :enabled => boolean() | nil,
          :kind => String.t() | nil,
          :location => String.t() | nil,
          :pointInTimeRecoveryEnabled => boolean() | nil,
          :replicationLogArchivingEnabled => boolean() | nil,
          :startTime => String.t() | nil,
          :transactionLogRetentionDays => integer() | nil
        }

  field(:backupRetentionSettings, as: GoogleApi.SQLAdmin.V1beta4.Model.BackupRetentionSettings)
  field(:binaryLogEnabled)
  field(:enabled)
  field(:kind)
  field(:location)
  field(:pointInTimeRecoveryEnabled)
  field(:replicationLogArchivingEnabled)
  field(:startTime)
  field(:transactionLogRetentionDays)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1beta4.Model.BackupConfiguration do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1beta4.Model.BackupConfiguration.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1beta4.Model.BackupConfiguration do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
