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

defmodule GoogleApi.SQLAdmin.V1beta4.Model.DatabaseInstance do
  @moduledoc """
  A Cloud SQL instance resource.

  ## Attributes

  *   `ipv6Address` (*type:* `String.t`, *default:* `nil`) - The IPv6 address assigned to the instance. (Deprecated) This property was applicable only to First Generation instances.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - This field is deprecated and will be removed from a future version of the API. Use the **settings.settingsVersion** field instead.
  *   `databaseVersion` (*type:* `String.t`, *default:* `nil`) - The database engine type and version. The **databaseVersion** field cannot be changed after instance creation.
  *   `serverCaCert` (*type:* `GoogleApi.SQLAdmin.V1beta4.Model.SslCert.t`, *default:* `nil`) - SSL configuration.
  *   `suspensionReason` (*type:* `list(String.t)`, *default:* `nil`) - If the instance state is SUSPENDED, the reason for the suspension.
  *   `serviceAccountEmailAddress` (*type:* `String.t`, *default:* `nil`) - The service account email address assigned to the instance. This property is read-only.
  *   `masterInstanceName` (*type:* `String.t`, *default:* `nil`) - The name of the instance which will act as primary in the replication setup.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the instance was created in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example **2012-11-15T16:19:00.094Z**.
  *   `satisfiesPzs` (*type:* `boolean()`, *default:* `nil`) - The status indicating if instance satisfiesPzs. Reserved for future use.
  *   `databaseInstalledVersion` (*type:* `String.t`, *default:* `nil`) - Output only. The databaseInstalledVersion stores the current fully resolved database version running on the instance including minor version such as MYSQL_5_6_50
  *   `kind` (*type:* `String.t`, *default:* `nil`) - This is always **sql#instance**.
  *   `gceZone` (*type:* `String.t`, *default:* `nil`) - The Compute Engine zone that the instance is currently serving from. This value could be different from the zone that was specified when the instance was created if the instance has failed over to its secondary zone.
  *   `project` (*type:* `String.t`, *default:* `nil`) - The project ID of the project containing the Cloud SQL instance. The Google apps domain is prefixed if applicable.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the Cloud SQL instance. This does not include the project ID.
  *   `state` (*type:* `String.t`, *default:* `nil`) - The current serving state of the Cloud SQL instance.
  *   `region` (*type:* `String.t`, *default:* `nil`) - The geographical region. Can be: * **us-central** (**FIRST_GEN** instances only) * **us-central1** (**SECOND_GEN** instances only) * **asia-east1** or **europe-west1**. Defaults to **us-central** or **us-central1** depending on the instance type. The region cannot be changed after instance creation.
  *   `replicaConfiguration` (*type:* `GoogleApi.SQLAdmin.V1beta4.Model.ReplicaConfiguration.t`, *default:* `nil`) - Configuration specific to failover replicas and read replicas.
  *   `diskEncryptionStatus` (*type:* `GoogleApi.SQLAdmin.V1beta4.Model.DiskEncryptionStatus.t`, *default:* `nil`) - Disk encryption status specific to an instance.
  *   `connectionName` (*type:* `String.t`, *default:* `nil`) - Connection name of the Cloud SQL instance used in connection strings.
  *   `onPremisesConfiguration` (*type:* `GoogleApi.SQLAdmin.V1beta4.Model.OnPremisesConfiguration.t`, *default:* `nil`) - Configuration specific to on-premises instances.
  *   `instanceType` (*type:* `String.t`, *default:* `nil`) - The instance type.
  *   `ipAddresses` (*type:* `list(GoogleApi.SQLAdmin.V1beta4.Model.IpMapping.t)`, *default:* `nil`) - The assigned IP addresses for the instance.
  *   `replicaNames` (*type:* `list(String.t)`, *default:* `nil`) - The replicas of the instance.
  *   `currentDiskSize` (*type:* `String.t`, *default:* `nil`) - The current disk usage of the instance in bytes. This property has been deprecated. Use the "cloudsql.googleapis.com/database/disk/bytes_used" metric in Cloud Monitoring API instead. Please see [this announcement](https://groups.google.com/d/msg/google-cloud-sql-announce/I_7-F9EBhT0/BtvFtdFeAgAJ) for details.
  *   `secondaryGceZone` (*type:* `String.t`, *default:* `nil`) - The Compute Engine zone that the failover instance is currently serving from for a regional instance. This value could be different from the zone that was specified when the instance was created if the instance has failed over to its secondary/failover zone. Reserved for future use.
  *   `settings` (*type:* `GoogleApi.SQLAdmin.V1beta4.Model.Settings.t`, *default:* `nil`) - The user settings.
  *   `rootPassword` (*type:* `String.t`, *default:* `nil`) - Initial root password. Use only on creation.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - The URI of this resource.
  *   `backendType` (*type:* `String.t`, *default:* `nil`) - The backend type. **SECOND_GEN**: Cloud SQL database instance. **EXTERNAL**: A database server that is not managed by Google. This property is read-only; use the **tier** property in the **settings** object to determine the database type.
  *   `scheduledMaintenance` (*type:* `GoogleApi.SQLAdmin.V1beta4.Model.SqlScheduledMaintenance.t`, *default:* `nil`) - The start time of any upcoming scheduled maintenance for this instance.
  *   `maxDiskSize` (*type:* `String.t`, *default:* `nil`) - The maximum disk size of the instance in bytes.
  *   `failoverReplica` (*type:* `GoogleApi.SQLAdmin.V1beta4.Model.DatabaseInstanceFailoverReplica.t`, *default:* `nil`) - The name and status of the failover replica.
  *   `diskEncryptionConfiguration` (*type:* `GoogleApi.SQLAdmin.V1beta4.Model.DiskEncryptionConfiguration.t`, *default:* `nil`) - Disk encryption configuration specific to an instance.
  *   `outOfDiskReport` (*type:* `GoogleApi.SQLAdmin.V1beta4.Model.SqlOutOfDiskReport.t`, *default:* `nil`) - This field represents the report generated by the proactive database wellness job for OutOfDisk issues. * Writers: * the proactive database wellness job for OOD. * Readers: * the proactive database wellness job
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ipv6Address => String.t() | nil,
          :etag => String.t() | nil,
          :databaseVersion => String.t() | nil,
          :serverCaCert => GoogleApi.SQLAdmin.V1beta4.Model.SslCert.t() | nil,
          :suspensionReason => list(String.t()) | nil,
          :serviceAccountEmailAddress => String.t() | nil,
          :masterInstanceName => String.t() | nil,
          :createTime => DateTime.t() | nil,
          :satisfiesPzs => boolean() | nil,
          :databaseInstalledVersion => String.t() | nil,
          :kind => String.t() | nil,
          :gceZone => String.t() | nil,
          :project => String.t() | nil,
          :name => String.t() | nil,
          :state => String.t() | nil,
          :region => String.t() | nil,
          :replicaConfiguration =>
            GoogleApi.SQLAdmin.V1beta4.Model.ReplicaConfiguration.t() | nil,
          :diskEncryptionStatus =>
            GoogleApi.SQLAdmin.V1beta4.Model.DiskEncryptionStatus.t() | nil,
          :connectionName => String.t() | nil,
          :onPremisesConfiguration =>
            GoogleApi.SQLAdmin.V1beta4.Model.OnPremisesConfiguration.t() | nil,
          :instanceType => String.t() | nil,
          :ipAddresses => list(GoogleApi.SQLAdmin.V1beta4.Model.IpMapping.t()) | nil,
          :replicaNames => list(String.t()) | nil,
          :currentDiskSize => String.t() | nil,
          :secondaryGceZone => String.t() | nil,
          :settings => GoogleApi.SQLAdmin.V1beta4.Model.Settings.t() | nil,
          :rootPassword => String.t() | nil,
          :selfLink => String.t() | nil,
          :backendType => String.t() | nil,
          :scheduledMaintenance =>
            GoogleApi.SQLAdmin.V1beta4.Model.SqlScheduledMaintenance.t() | nil,
          :maxDiskSize => String.t() | nil,
          :failoverReplica =>
            GoogleApi.SQLAdmin.V1beta4.Model.DatabaseInstanceFailoverReplica.t() | nil,
          :diskEncryptionConfiguration =>
            GoogleApi.SQLAdmin.V1beta4.Model.DiskEncryptionConfiguration.t() | nil,
          :outOfDiskReport => GoogleApi.SQLAdmin.V1beta4.Model.SqlOutOfDiskReport.t() | nil
        }

  field(:ipv6Address)
  field(:etag)
  field(:databaseVersion)
  field(:serverCaCert, as: GoogleApi.SQLAdmin.V1beta4.Model.SslCert)
  field(:suspensionReason, type: :list)
  field(:serviceAccountEmailAddress)
  field(:masterInstanceName)
  field(:createTime, as: DateTime)
  field(:satisfiesPzs)
  field(:databaseInstalledVersion)
  field(:kind)
  field(:gceZone)
  field(:project)
  field(:name)
  field(:state)
  field(:region)
  field(:replicaConfiguration, as: GoogleApi.SQLAdmin.V1beta4.Model.ReplicaConfiguration)
  field(:diskEncryptionStatus, as: GoogleApi.SQLAdmin.V1beta4.Model.DiskEncryptionStatus)
  field(:connectionName)
  field(:onPremisesConfiguration, as: GoogleApi.SQLAdmin.V1beta4.Model.OnPremisesConfiguration)
  field(:instanceType)
  field(:ipAddresses, as: GoogleApi.SQLAdmin.V1beta4.Model.IpMapping, type: :list)
  field(:replicaNames, type: :list)
  field(:currentDiskSize)
  field(:secondaryGceZone)
  field(:settings, as: GoogleApi.SQLAdmin.V1beta4.Model.Settings)
  field(:rootPassword)
  field(:selfLink)
  field(:backendType)
  field(:scheduledMaintenance, as: GoogleApi.SQLAdmin.V1beta4.Model.SqlScheduledMaintenance)
  field(:maxDiskSize)
  field(:failoverReplica, as: GoogleApi.SQLAdmin.V1beta4.Model.DatabaseInstanceFailoverReplica)

  field(:diskEncryptionConfiguration,
    as: GoogleApi.SQLAdmin.V1beta4.Model.DiskEncryptionConfiguration
  )

  field(:outOfDiskReport, as: GoogleApi.SQLAdmin.V1beta4.Model.SqlOutOfDiskReport)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1beta4.Model.DatabaseInstance do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1beta4.Model.DatabaseInstance.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1beta4.Model.DatabaseInstance do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
