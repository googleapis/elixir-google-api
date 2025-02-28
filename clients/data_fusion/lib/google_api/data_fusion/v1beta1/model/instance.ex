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

defmodule GoogleApi.DataFusion.V1beta1.Model.Instance do
  @moduledoc """
  Represents a Data Fusion instance.

  ## Attributes

  *   `enableZoneSeparation` (*type:* `boolean()`, *default:* `nil`) - Option to enable zone separation.
  *   `serviceAccount` (*type:* `String.t`, *default:* `nil`) - Output only. Deprecated. Use tenant_project_id instead to extract the tenant project ID.
  *   `cryptoKeyConfig` (*type:* `GoogleApi.DataFusion.V1beta1.Model.CryptoKeyConfig.t`, *default:* `nil`) - The crypto key configuration. This field is used by the Customer-Managed Encryption Keys (CMEK) feature.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time the instance was created.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The current state of this Data Fusion instance.
  *   `labels` (*type:* `map()`, *default:* `nil`) - The resource labels for instance to use to annotate any related underlying resources such as Compute Engine VMs. The character '=' is not allowed to be used within the labels.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The name of this instance is in the form of projects/{project}/locations/{location}/instances/{instance}.
  *   `stateMessage` (*type:* `String.t`, *default:* `nil`) - Output only. Additional information about the current state of this Data Fusion instance if available.
  *   `dataplexDataLineageIntegrationEnabled` (*type:* `boolean()`, *default:* `nil`) - Optional. Option to enable the Dataplex Lineage Integration feature.
  *   `maintenanceEvents` (*type:* `list(GoogleApi.DataFusion.V1beta1.Model.MaintenanceEvent.t)`, *default:* `nil`) - Output only. The maintenance events for this instance.
  *   `loggingConfig` (*type:* `GoogleApi.DataFusion.V1beta1.Model.LoggingConfig.t`, *default:* `nil`) - Optional. The logging configuration for this instance. This field is supported only in CDF versions 6.11.0 and above.
  *   `enableStackdriverLogging` (*type:* `boolean()`, *default:* `nil`) - Option to enable Dataproc Stackdriver Logging.
  *   `description` (*type:* `String.t`, *default:* `nil`) - A description of this instance.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Display name for an instance.
  *   `satisfiesPzs` (*type:* `boolean()`, *default:* `nil`) - Output only. Reserved for future use.
  *   `serviceEndpoint` (*type:* `String.t`, *default:* `nil`) - Output only. Endpoint on which the Data Fusion UI is accessible.
  *   `maintenancePolicy` (*type:* `GoogleApi.DataFusion.V1beta1.Model.MaintenancePolicy.t`, *default:* `nil`) - Optional. Configure the maintenance policy for this instance.
  *   `options` (*type:* `map()`, *default:* `nil`) - Map of additional options used to configure the behavior of Data Fusion instance.
  *   `gcsBucket` (*type:* `String.t`, *default:* `nil`) - Output only. Cloud Storage bucket generated by Data Fusion in the customer project.
  *   `accelerators` (*type:* `list(GoogleApi.DataFusion.V1beta1.Model.Accelerator.t)`, *default:* `nil`) - Output only. List of accelerators enabled for this CDF instance.
  *   `enableRbac` (*type:* `boolean()`, *default:* `nil`) - Option to enable granular role-based access control.
  *   `workforceIdentityServiceEndpoint` (*type:* `String.t`, *default:* `nil`) - Output only. Endpoint on which the Data Fusion UI is accessible to third-party users.
  *   `p4ServiceAccount` (*type:* `String.t`, *default:* `nil`) - Output only. Service agent for the customer project.
  *   `enableStackdriverMonitoring` (*type:* `boolean()`, *default:* `nil`) - Option to enable Stackdriver Monitoring.
  *   `version` (*type:* `String.t`, *default:* `nil`) - Current version of Data Fusion.
  *   `patchRevision` (*type:* `String.t`, *default:* `nil`) - Optional. Current patch revision of the Data Fusion.
  *   `eventPublishConfig` (*type:* `GoogleApi.DataFusion.V1beta1.Model.EventPublishConfig.t`, *default:* `nil`) - Option to enable and pass metadata for event publishing.
  *   `zone` (*type:* `String.t`, *default:* `nil`) - Name of the zone in which the Data Fusion instance will be created. Only DEVELOPER instances use this field.
  *   `dataprocServiceAccount` (*type:* `String.t`, *default:* `nil`) - User-managed service account to set on Dataproc when Cloud Data Fusion creates Dataproc to run data processing pipelines. This allows users to have fine-grained access control on Dataproc's accesses to cloud resources.
  *   `apiEndpoint` (*type:* `String.t`, *default:* `nil`) - Output only. Endpoint on which the REST APIs is accessible.
  *   `availableVersion` (*type:* `list(GoogleApi.DataFusion.V1beta1.Model.Version.t)`, *default:* `nil`) - Output only. Available versions that the instance can be upgraded to using UpdateInstanceRequest.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time the instance was last updated.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Required. Instance type.
  *   `privateInstance` (*type:* `boolean()`, *default:* `nil`) - Specifies whether the Data Fusion instance should be private. If set to true, all Data Fusion nodes will have private IP addresses and will not be able to access the public internet.
  *   `disabledReason` (*type:* `list(String.t)`, *default:* `nil`) - Output only. If the instance state is DISABLED, the reason for disabling the instance.
  *   `networkConfig` (*type:* `GoogleApi.DataFusion.V1beta1.Model.NetworkConfig.t`, *default:* `nil`) - Network configuration options. These are required when a private Data Fusion instance is to be created.
  *   `tenantProjectId` (*type:* `String.t`, *default:* `nil`) - Output only. The name of the tenant project.
  *   `satisfiesPzi` (*type:* `boolean()`, *default:* `nil`) - Output only. Reserved for future use.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :enableZoneSeparation => boolean() | nil,
          :serviceAccount => String.t() | nil,
          :cryptoKeyConfig => GoogleApi.DataFusion.V1beta1.Model.CryptoKeyConfig.t() | nil,
          :createTime => DateTime.t() | nil,
          :state => String.t() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :stateMessage => String.t() | nil,
          :dataplexDataLineageIntegrationEnabled => boolean() | nil,
          :maintenanceEvents =>
            list(GoogleApi.DataFusion.V1beta1.Model.MaintenanceEvent.t()) | nil,
          :loggingConfig => GoogleApi.DataFusion.V1beta1.Model.LoggingConfig.t() | nil,
          :enableStackdriverLogging => boolean() | nil,
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :satisfiesPzs => boolean() | nil,
          :serviceEndpoint => String.t() | nil,
          :maintenancePolicy => GoogleApi.DataFusion.V1beta1.Model.MaintenancePolicy.t() | nil,
          :options => map() | nil,
          :gcsBucket => String.t() | nil,
          :accelerators => list(GoogleApi.DataFusion.V1beta1.Model.Accelerator.t()) | nil,
          :enableRbac => boolean() | nil,
          :workforceIdentityServiceEndpoint => String.t() | nil,
          :p4ServiceAccount => String.t() | nil,
          :enableStackdriverMonitoring => boolean() | nil,
          :version => String.t() | nil,
          :patchRevision => String.t() | nil,
          :eventPublishConfig => GoogleApi.DataFusion.V1beta1.Model.EventPublishConfig.t() | nil,
          :zone => String.t() | nil,
          :dataprocServiceAccount => String.t() | nil,
          :apiEndpoint => String.t() | nil,
          :availableVersion => list(GoogleApi.DataFusion.V1beta1.Model.Version.t()) | nil,
          :updateTime => DateTime.t() | nil,
          :type => String.t() | nil,
          :privateInstance => boolean() | nil,
          :disabledReason => list(String.t()) | nil,
          :networkConfig => GoogleApi.DataFusion.V1beta1.Model.NetworkConfig.t() | nil,
          :tenantProjectId => String.t() | nil,
          :satisfiesPzi => boolean() | nil
        }

  field(:enableZoneSeparation)
  field(:serviceAccount)
  field(:cryptoKeyConfig, as: GoogleApi.DataFusion.V1beta1.Model.CryptoKeyConfig)
  field(:createTime, as: DateTime)
  field(:state)
  field(:labels, type: :map)
  field(:name)
  field(:stateMessage)
  field(:dataplexDataLineageIntegrationEnabled)
  field(:maintenanceEvents, as: GoogleApi.DataFusion.V1beta1.Model.MaintenanceEvent, type: :list)
  field(:loggingConfig, as: GoogleApi.DataFusion.V1beta1.Model.LoggingConfig)
  field(:enableStackdriverLogging)
  field(:description)
  field(:displayName)
  field(:satisfiesPzs)
  field(:serviceEndpoint)
  field(:maintenancePolicy, as: GoogleApi.DataFusion.V1beta1.Model.MaintenancePolicy)
  field(:options, type: :map)
  field(:gcsBucket)
  field(:accelerators, as: GoogleApi.DataFusion.V1beta1.Model.Accelerator, type: :list)
  field(:enableRbac)
  field(:workforceIdentityServiceEndpoint)
  field(:p4ServiceAccount)
  field(:enableStackdriverMonitoring)
  field(:version)
  field(:patchRevision)
  field(:eventPublishConfig, as: GoogleApi.DataFusion.V1beta1.Model.EventPublishConfig)
  field(:zone)
  field(:dataprocServiceAccount)
  field(:apiEndpoint)
  field(:availableVersion, as: GoogleApi.DataFusion.V1beta1.Model.Version, type: :list)
  field(:updateTime, as: DateTime)
  field(:type)
  field(:privateInstance)
  field(:disabledReason, type: :list)
  field(:networkConfig, as: GoogleApi.DataFusion.V1beta1.Model.NetworkConfig)
  field(:tenantProjectId)
  field(:satisfiesPzi)
end

defimpl Poison.Decoder, for: GoogleApi.DataFusion.V1beta1.Model.Instance do
  def decode(value, options) do
    GoogleApi.DataFusion.V1beta1.Model.Instance.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DataFusion.V1beta1.Model.Instance do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
