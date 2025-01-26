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

defmodule GoogleApi.Metastore.V1.Model.Service do
  @moduledoc """
  A managed metastore service that serves metadata queries.

  ## Attributes

  *   `artifactGcsUri` (*type:* `String.t`, *default:* `nil`) - Output only. A Cloud Storage URI (starting with gs://) that specifies where artifacts related to the metastore service are stored.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the metastore service was created.
  *   `databaseType` (*type:* `String.t`, *default:* `nil`) - Immutable. The database type that the Metastore service stores its data.
  *   `deletionProtection` (*type:* `boolean()`, *default:* `nil`) - Optional. Indicates if the dataproc metastore should be protected against accidental deletions.
  *   `encryptionConfig` (*type:* `GoogleApi.Metastore.V1.Model.EncryptionConfig.t`, *default:* `nil`) - Immutable. Information used to configure the Dataproc Metastore service to encrypt customer data at rest. Cannot be updated.
  *   `endpointUri` (*type:* `String.t`, *default:* `nil`) - Output only. The URI of the endpoint used to access the metastore service.
  *   `hiveMetastoreConfig` (*type:* `GoogleApi.Metastore.V1.Model.HiveMetastoreConfig.t`, *default:* `nil`) - Configuration information specific to running Hive metastore software as the metastore service.
  *   `labels` (*type:* `map()`, *default:* `nil`) - User-defined labels for the metastore service.
  *   `maintenanceWindow` (*type:* `GoogleApi.Metastore.V1.Model.MaintenanceWindow.t`, *default:* `nil`) - Optional. The one hour maintenance window of the metastore service. This specifies when the service can be restarted for maintenance purposes in UTC time. Maintenance window is not needed for services with the SPANNER database type.
  *   `metadataIntegration` (*type:* `GoogleApi.Metastore.V1.Model.MetadataIntegration.t`, *default:* `nil`) - Optional. The setting that defines how metastore metadata should be integrated with external services and systems.
  *   `metadataManagementActivity` (*type:* `GoogleApi.Metastore.V1.Model.MetadataManagementActivity.t`, *default:* `nil`) - Output only. The metadata management activities of the metastore service.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Immutable. Identifier. The relative resource name of the metastore service, in the following format:projects/{project_number}/locations/{location_id}/services/{service_id}.
  *   `network` (*type:* `String.t`, *default:* `nil`) - Immutable. The relative resource name of the VPC network on which the instance can be accessed. It is specified in the following form:projects/{project_number}/global/networks/{network_id}.
  *   `networkConfig` (*type:* `GoogleApi.Metastore.V1.Model.NetworkConfig.t`, *default:* `nil`) - Optional. The configuration specifying the network settings for the Dataproc Metastore service.
  *   `port` (*type:* `integer()`, *default:* `nil`) - Optional. The TCP port at which the metastore service is reached. Default: 9083.
  *   `releaseChannel` (*type:* `String.t`, *default:* `nil`) - Immutable. The release channel of the service. If unspecified, defaults to STABLE.
  *   `scalingConfig` (*type:* `GoogleApi.Metastore.V1.Model.ScalingConfig.t`, *default:* `nil`) - Optional. Scaling configuration of the metastore service.
  *   `scheduledBackup` (*type:* `GoogleApi.Metastore.V1.Model.ScheduledBackup.t`, *default:* `nil`) - Optional. The configuration of scheduled backup for the metastore service.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The current state of the metastore service.
  *   `stateMessage` (*type:* `String.t`, *default:* `nil`) - Output only. Additional information about the current state of the metastore service, if available.
  *   `telemetryConfig` (*type:* `GoogleApi.Metastore.V1.Model.TelemetryConfig.t`, *default:* `nil`) - Optional. The configuration specifying telemetry settings for the Dataproc Metastore service. If unspecified defaults to JSON.
  *   `tier` (*type:* `String.t`, *default:* `nil`) - Optional. The tier of the service.
  *   `uid` (*type:* `String.t`, *default:* `nil`) - Output only. The globally unique resource identifier of the metastore service.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the metastore service was last updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :artifactGcsUri => String.t() | nil,
          :createTime => DateTime.t() | nil,
          :databaseType => String.t() | nil,
          :deletionProtection => boolean() | nil,
          :encryptionConfig => GoogleApi.Metastore.V1.Model.EncryptionConfig.t() | nil,
          :endpointUri => String.t() | nil,
          :hiveMetastoreConfig => GoogleApi.Metastore.V1.Model.HiveMetastoreConfig.t() | nil,
          :labels => map() | nil,
          :maintenanceWindow => GoogleApi.Metastore.V1.Model.MaintenanceWindow.t() | nil,
          :metadataIntegration => GoogleApi.Metastore.V1.Model.MetadataIntegration.t() | nil,
          :metadataManagementActivity =>
            GoogleApi.Metastore.V1.Model.MetadataManagementActivity.t() | nil,
          :name => String.t() | nil,
          :network => String.t() | nil,
          :networkConfig => GoogleApi.Metastore.V1.Model.NetworkConfig.t() | nil,
          :port => integer() | nil,
          :releaseChannel => String.t() | nil,
          :scalingConfig => GoogleApi.Metastore.V1.Model.ScalingConfig.t() | nil,
          :scheduledBackup => GoogleApi.Metastore.V1.Model.ScheduledBackup.t() | nil,
          :state => String.t() | nil,
          :stateMessage => String.t() | nil,
          :telemetryConfig => GoogleApi.Metastore.V1.Model.TelemetryConfig.t() | nil,
          :tier => String.t() | nil,
          :uid => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:artifactGcsUri)
  field(:createTime, as: DateTime)
  field(:databaseType)
  field(:deletionProtection)
  field(:encryptionConfig, as: GoogleApi.Metastore.V1.Model.EncryptionConfig)
  field(:endpointUri)
  field(:hiveMetastoreConfig, as: GoogleApi.Metastore.V1.Model.HiveMetastoreConfig)
  field(:labels, type: :map)
  field(:maintenanceWindow, as: GoogleApi.Metastore.V1.Model.MaintenanceWindow)
  field(:metadataIntegration, as: GoogleApi.Metastore.V1.Model.MetadataIntegration)
  field(:metadataManagementActivity, as: GoogleApi.Metastore.V1.Model.MetadataManagementActivity)
  field(:name)
  field(:network)
  field(:networkConfig, as: GoogleApi.Metastore.V1.Model.NetworkConfig)
  field(:port)
  field(:releaseChannel)
  field(:scalingConfig, as: GoogleApi.Metastore.V1.Model.ScalingConfig)
  field(:scheduledBackup, as: GoogleApi.Metastore.V1.Model.ScheduledBackup)
  field(:state)
  field(:stateMessage)
  field(:telemetryConfig, as: GoogleApi.Metastore.V1.Model.TelemetryConfig)
  field(:tier)
  field(:uid)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Metastore.V1.Model.Service do
  def decode(value, options) do
    GoogleApi.Metastore.V1.Model.Service.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Metastore.V1.Model.Service do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
