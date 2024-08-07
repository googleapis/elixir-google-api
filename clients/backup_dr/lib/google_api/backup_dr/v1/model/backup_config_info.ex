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

defmodule GoogleApi.BackupDR.V1.Model.BackupConfigInfo do
  @moduledoc """
  BackupConfigInfo has information about how the resource is configured for Backup and about the most recent backup to this vault.

  ## Attributes

  *   `backupApplianceBackupConfig` (*type:* `GoogleApi.BackupDR.V1.Model.BackupApplianceBackupConfig.t`, *default:* `nil`) - Configuration for an application backed up by a Backup Appliance.
  *   `gcpBackupConfig` (*type:* `GoogleApi.BackupDR.V1.Model.GcpBackupConfig.t`, *default:* `nil`) - Configuration for a Google Cloud resource.
  *   `lastBackupError` (*type:* `GoogleApi.BackupDR.V1.Model.Status.t`, *default:* `nil`) - Output only. If the last backup failed, this field has the error message.
  *   `lastBackupState` (*type:* `String.t`, *default:* `nil`) - Output only. The status of the last backup to this BackupVault
  *   `lastSuccessfulBackupConsistencyTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. If the last backup were successful, this field has the consistency date.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :backupApplianceBackupConfig =>
            GoogleApi.BackupDR.V1.Model.BackupApplianceBackupConfig.t() | nil,
          :gcpBackupConfig => GoogleApi.BackupDR.V1.Model.GcpBackupConfig.t() | nil,
          :lastBackupError => GoogleApi.BackupDR.V1.Model.Status.t() | nil,
          :lastBackupState => String.t() | nil,
          :lastSuccessfulBackupConsistencyTime => DateTime.t() | nil
        }

  field(:backupApplianceBackupConfig, as: GoogleApi.BackupDR.V1.Model.BackupApplianceBackupConfig)
  field(:gcpBackupConfig, as: GoogleApi.BackupDR.V1.Model.GcpBackupConfig)
  field(:lastBackupError, as: GoogleApi.BackupDR.V1.Model.Status)
  field(:lastBackupState)
  field(:lastSuccessfulBackupConsistencyTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.BackupDR.V1.Model.BackupConfigInfo do
  def decode(value, options) do
    GoogleApi.BackupDR.V1.Model.BackupConfigInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BackupDR.V1.Model.BackupConfigInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
