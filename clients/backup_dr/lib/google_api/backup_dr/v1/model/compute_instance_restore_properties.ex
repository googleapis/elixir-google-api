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

defmodule GoogleApi.BackupDR.V1.Model.ComputeInstanceRestoreProperties do
  @moduledoc """
  ComputeInstanceRestoreProperties represents Compute Engine instance properties to be overridden during restore.

  ## Attributes

  *   `advancedMachineFeatures` (*type:* `GoogleApi.BackupDR.V1.Model.AdvancedMachineFeatures.t`, *default:* `nil`) - Optional. Controls for advanced machine-related behavior features.
  *   `canIpForward` (*type:* `boolean()`, *default:* `nil`) - Optional. Allows this instance to send and receive packets with non-matching destination or source IPs.
  *   `confidentialInstanceConfig` (*type:* `GoogleApi.BackupDR.V1.Model.ConfidentialInstanceConfig.t`, *default:* `nil`) - Optional. Controls Confidential compute options on the instance
  *   `deletionProtection` (*type:* `boolean()`, *default:* `nil`) - Optional. Whether the resource should be protected against deletion.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. An optional description of this resource. Provide this property when you create the resource.
  *   `disks` (*type:* `list(GoogleApi.BackupDR.V1.Model.AttachedDisk.t)`, *default:* `nil`) - Optional. Array of disks associated with this instance. Persistent disks must be created before you can assign them.
  *   `displayDevice` (*type:* `GoogleApi.BackupDR.V1.Model.DisplayDevice.t`, *default:* `nil`) - Optional. Enables display device for the instance.
  *   `guestAccelerators` (*type:* `list(GoogleApi.BackupDR.V1.Model.AcceleratorConfig.t)`, *default:* `nil`) - Optional. A list of the type and count of accelerator cards attached to the instance.
  *   `hostname` (*type:* `String.t`, *default:* `nil`) - Optional. Specifies the hostname of the instance. The specified hostname must be RFC1035 compliant. If hostname is not specified, the default hostname is [INSTANCE_NAME].c.[PROJECT_ID].internal when using the global DNS, and [INSTANCE_NAME].[ZONE].c.[PROJECT_ID].internal when using zonal DNS.
  *   `instanceEncryptionKey` (*type:* `GoogleApi.BackupDR.V1.Model.CustomerEncryptionKey.t`, *default:* `nil`) - Optional. Encrypts suspended data for an instance with a customer-managed encryption key.
  *   `keyRevocationActionType` (*type:* `String.t`, *default:* `nil`) - Optional. KeyRevocationActionType of the instance.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. Labels to apply to this instance.
  *   `machineType` (*type:* `String.t`, *default:* `nil`) - Optional. Full or partial URL of the machine type resource to use for this instance.
  *   `metadata` (*type:* `GoogleApi.BackupDR.V1.Model.Metadata.t`, *default:* `nil`) - Optional. This includes custom metadata and predefined keys.
  *   `minCpuPlatform` (*type:* `String.t`, *default:* `nil`) - Optional. Minimum CPU platform to use for this instance.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. Name of the compute instance.
  *   `networkInterfaces` (*type:* `list(GoogleApi.BackupDR.V1.Model.NetworkInterface.t)`, *default:* `nil`) - Optional. An array of network configurations for this instance. These specify how interfaces are configured to interact with other network services, such as connecting to the internet. Multiple interfaces are supported per instance.
  *   `networkPerformanceConfig` (*type:* `GoogleApi.BackupDR.V1.Model.NetworkPerformanceConfig.t`, *default:* `nil`) - Optional. Configure network performance such as egress bandwidth tier.
  *   `params` (*type:* `GoogleApi.BackupDR.V1.Model.InstanceParams.t`, *default:* `nil`) - Input only. Additional params passed with the request, but not persisted as part of resource payload.
  *   `privateIpv6GoogleAccess` (*type:* `String.t`, *default:* `nil`) - Optional. The private IPv6 google access type for the VM. If not specified, use INHERIT_FROM_SUBNETWORK as default.
  *   `reservationAffinity` (*type:* `GoogleApi.BackupDR.V1.Model.AllocationAffinity.t`, *default:* `nil`) - Optional. Specifies the reservations that this instance can consume from.
  *   `resourcePolicies` (*type:* `list(String.t)`, *default:* `nil`) - Optional. Resource policies applied to this instance.
  *   `scheduling` (*type:* `GoogleApi.BackupDR.V1.Model.Scheduling.t`, *default:* `nil`) - Optional. Sets the scheduling options for this instance.
  *   `serviceAccounts` (*type:* `list(GoogleApi.BackupDR.V1.Model.ServiceAccount.t)`, *default:* `nil`) - Optional. A list of service accounts, with their specified scopes, authorized for this instance. Only one service account per VM instance is supported.
  *   `tags` (*type:* `GoogleApi.BackupDR.V1.Model.Tags.t`, *default:* `nil`) - Optional. Tags to apply to this instance. Tags are used to identify valid sources or targets for network firewalls and are specified by the client during instance creation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :advancedMachineFeatures =>
            GoogleApi.BackupDR.V1.Model.AdvancedMachineFeatures.t() | nil,
          :canIpForward => boolean() | nil,
          :confidentialInstanceConfig =>
            GoogleApi.BackupDR.V1.Model.ConfidentialInstanceConfig.t() | nil,
          :deletionProtection => boolean() | nil,
          :description => String.t() | nil,
          :disks => list(GoogleApi.BackupDR.V1.Model.AttachedDisk.t()) | nil,
          :displayDevice => GoogleApi.BackupDR.V1.Model.DisplayDevice.t() | nil,
          :guestAccelerators => list(GoogleApi.BackupDR.V1.Model.AcceleratorConfig.t()) | nil,
          :hostname => String.t() | nil,
          :instanceEncryptionKey => GoogleApi.BackupDR.V1.Model.CustomerEncryptionKey.t() | nil,
          :keyRevocationActionType => String.t() | nil,
          :labels => map() | nil,
          :machineType => String.t() | nil,
          :metadata => GoogleApi.BackupDR.V1.Model.Metadata.t() | nil,
          :minCpuPlatform => String.t() | nil,
          :name => String.t() | nil,
          :networkInterfaces => list(GoogleApi.BackupDR.V1.Model.NetworkInterface.t()) | nil,
          :networkPerformanceConfig =>
            GoogleApi.BackupDR.V1.Model.NetworkPerformanceConfig.t() | nil,
          :params => GoogleApi.BackupDR.V1.Model.InstanceParams.t() | nil,
          :privateIpv6GoogleAccess => String.t() | nil,
          :reservationAffinity => GoogleApi.BackupDR.V1.Model.AllocationAffinity.t() | nil,
          :resourcePolicies => list(String.t()) | nil,
          :scheduling => GoogleApi.BackupDR.V1.Model.Scheduling.t() | nil,
          :serviceAccounts => list(GoogleApi.BackupDR.V1.Model.ServiceAccount.t()) | nil,
          :tags => GoogleApi.BackupDR.V1.Model.Tags.t() | nil
        }

  field(:advancedMachineFeatures, as: GoogleApi.BackupDR.V1.Model.AdvancedMachineFeatures)
  field(:canIpForward)
  field(:confidentialInstanceConfig, as: GoogleApi.BackupDR.V1.Model.ConfidentialInstanceConfig)
  field(:deletionProtection)
  field(:description)
  field(:disks, as: GoogleApi.BackupDR.V1.Model.AttachedDisk, type: :list)
  field(:displayDevice, as: GoogleApi.BackupDR.V1.Model.DisplayDevice)
  field(:guestAccelerators, as: GoogleApi.BackupDR.V1.Model.AcceleratorConfig, type: :list)
  field(:hostname)
  field(:instanceEncryptionKey, as: GoogleApi.BackupDR.V1.Model.CustomerEncryptionKey)
  field(:keyRevocationActionType)
  field(:labels, type: :map)
  field(:machineType)
  field(:metadata, as: GoogleApi.BackupDR.V1.Model.Metadata)
  field(:minCpuPlatform)
  field(:name)
  field(:networkInterfaces, as: GoogleApi.BackupDR.V1.Model.NetworkInterface, type: :list)
  field(:networkPerformanceConfig, as: GoogleApi.BackupDR.V1.Model.NetworkPerformanceConfig)
  field(:params, as: GoogleApi.BackupDR.V1.Model.InstanceParams)
  field(:privateIpv6GoogleAccess)
  field(:reservationAffinity, as: GoogleApi.BackupDR.V1.Model.AllocationAffinity)
  field(:resourcePolicies, type: :list)
  field(:scheduling, as: GoogleApi.BackupDR.V1.Model.Scheduling)
  field(:serviceAccounts, as: GoogleApi.BackupDR.V1.Model.ServiceAccount, type: :list)
  field(:tags, as: GoogleApi.BackupDR.V1.Model.Tags)
end

defimpl Poison.Decoder, for: GoogleApi.BackupDR.V1.Model.ComputeInstanceRestoreProperties do
  def decode(value, options) do
    GoogleApi.BackupDR.V1.Model.ComputeInstanceRestoreProperties.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BackupDR.V1.Model.ComputeInstanceRestoreProperties do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
