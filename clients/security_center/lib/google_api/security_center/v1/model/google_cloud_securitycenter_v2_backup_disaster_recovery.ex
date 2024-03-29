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

defmodule GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV2BackupDisasterRecovery do
  @moduledoc """
  Information related to Google Cloud Backup and DR Service findings.

  ## Attributes

  *   `appliance` (*type:* `String.t`, *default:* `nil`) - The name of the Backup and DR appliance that captures, moves, and manages the lifecycle of backup data. For example, `backup-server-57137`.
  *   `applications` (*type:* `list(String.t)`, *default:* `nil`) - The names of Backup and DR applications. An application is a VM, database, or file system on a managed host monitored by a backup and recovery appliance. For example, `centos7-01-vol00`, `centos7-01-vol01`, `centos7-01-vol02`.
  *   `backupCreateTime` (*type:* `DateTime.t`, *default:* `nil`) - The timestamp at which the Backup and DR backup was created.
  *   `backupTemplate` (*type:* `String.t`, *default:* `nil`) - The name of a Backup and DR template which comprises one or more backup policies. See the [Backup and DR documentation](https://cloud.google.com/backup-disaster-recovery/docs/concepts/backup-plan#temp) for more information. For example, `snap-ov`.
  *   `backupType` (*type:* `String.t`, *default:* `nil`) - The backup type of the Backup and DR image. For example, `Snapshot`, `Remote Snapshot`, `OnVault`.
  *   `host` (*type:* `String.t`, *default:* `nil`) - The name of a Backup and DR host, which is managed by the backup and recovery appliance and known to the management console. The host can be of type Generic (for example, Compute Engine, SQL Server, Oracle DB, SMB file system, etc.), vCenter, or an ESX server. See the [Backup and DR documentation on hosts](https://cloud.google.com/backup-disaster-recovery/docs/configuration/manage-hosts-and-their-applications) for more information. For example, `centos7-01`.
  *   `policies` (*type:* `list(String.t)`, *default:* `nil`) - The names of Backup and DR policies that are associated with a template and that define when to run a backup, how frequently to run a backup, and how long to retain the backup image. For example, `onvaults`.
  *   `policyOptions` (*type:* `list(String.t)`, *default:* `nil`) - The names of Backup and DR advanced policy options of a policy applying to an application. See the [Backup and DR documentation on policy options](https://cloud.google.com/backup-disaster-recovery/docs/create-plan/policy-settings). For example, `skipofflineappsincongrp, nounmap`.
  *   `profile` (*type:* `String.t`, *default:* `nil`) - The name of the Backup and DR resource profile that specifies the storage media for backups of application and VM data. See the [Backup and DR documentation on profiles](https://cloud.google.com/backup-disaster-recovery/docs/concepts/backup-plan#profile). For example, `GCP`.
  *   `storagePool` (*type:* `String.t`, *default:* `nil`) - The name of the Backup and DR storage pool that the backup and recovery appliance is storing data in. The storage pool could be of type Cloud, Primary, Snapshot, or OnVault. See the [Backup and DR documentation on storage pools](https://cloud.google.com/backup-disaster-recovery/docs/concepts/storage-pools). For example, `DiskPoolOne`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :appliance => String.t() | nil,
          :applications => list(String.t()) | nil,
          :backupCreateTime => DateTime.t() | nil,
          :backupTemplate => String.t() | nil,
          :backupType => String.t() | nil,
          :host => String.t() | nil,
          :policies => list(String.t()) | nil,
          :policyOptions => list(String.t()) | nil,
          :profile => String.t() | nil,
          :storagePool => String.t() | nil
        }

  field(:appliance)
  field(:applications, type: :list)
  field(:backupCreateTime, as: DateTime)
  field(:backupTemplate)
  field(:backupType)
  field(:host)
  field(:policies, type: :list)
  field(:policyOptions, type: :list)
  field(:profile)
  field(:storagePool)
end

defimpl Poison.Decoder,
  for: GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV2BackupDisasterRecovery do
  def decode(value, options) do
    GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV2BackupDisasterRecovery.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV2BackupDisasterRecovery do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
