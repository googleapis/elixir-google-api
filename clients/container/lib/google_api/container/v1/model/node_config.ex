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

defmodule GoogleApi.Container.V1.Model.NodeConfig do
  @moduledoc """
  Parameters that describe the nodes in a cluster. GKE Autopilot clusters do not recognize parameters in `NodeConfig`. Use AutoprovisioningNodePoolDefaults instead.

  ## Attributes

  *   `sandboxConfig` (*type:* `GoogleApi.Container.V1.Model.SandboxConfig.t`, *default:* `nil`) - Sandbox configuration for this node.
  *   `serviceAccount` (*type:* `String.t`, *default:* `nil`) - The Google Cloud Platform Service Account to be used by the node VMs. Specify the email address of the Service Account; otherwise, if no Service Account is specified, the "default" service account is used.
  *   `fastSocket` (*type:* `GoogleApi.Container.V1.Model.FastSocket.t`, *default:* `nil`) - Enable or disable NCCL fast socket for the node pool.
  *   `labels` (*type:* `map()`, *default:* `nil`) - The map of Kubernetes labels (key/value pairs) to be applied to each node. These will added in addition to any default label(s) that Kubernetes may apply to the node. In case of conflict in label keys, the applied set may differ depending on the Kubernetes version -- it's best to assume the behavior is undefined and conflicts should be avoided. For more information, including usage and the valid values, see: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/
  *   `resourceManagerTags` (*type:* `GoogleApi.Container.V1.Model.ResourceManagerTags.t`, *default:* `nil`) - A map of resource manager tag keys and values to be attached to the nodes.
  *   `taints` (*type:* `list(GoogleApi.Container.V1.Model.NodeTaint.t)`, *default:* `nil`) - List of kubernetes taints to be applied to each node. For more information, including usage and the valid values, see: https://kubernetes.io/docs/concepts/configuration/taint-and-toleration/
  *   `containerdConfig` (*type:* `GoogleApi.Container.V1.Model.ContainerdConfig.t`, *default:* `nil`) - Parameters for containerd customization.
  *   `kubeletConfig` (*type:* `GoogleApi.Container.V1.Model.NodeKubeletConfig.t`, *default:* `nil`) - Node kubelet configs.
  *   `bootDiskKmsKey` (*type:* `String.t`, *default:* `nil`) -  The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool. This should be of the form projects/[KEY_PROJECT_ID]/locations/[LOCATION]/keyRings/[RING_NAME]/cryptoKeys/[KEY_NAME]. For more information about protecting resources with Cloud KMS Keys please see: https://cloud.google.com/compute/docs/disks/customer-managed-encryption
  *   `advancedMachineFeatures` (*type:* `GoogleApi.Container.V1.Model.AdvancedMachineFeatures.t`, *default:* `nil`) - Advanced features for the Compute Engine VM.
  *   `shieldedInstanceConfig` (*type:* `GoogleApi.Container.V1.Model.ShieldedInstanceConfig.t`, *default:* `nil`) - Shielded Instance options.
  *   `loggingConfig` (*type:* `GoogleApi.Container.V1.Model.NodePoolLoggingConfig.t`, *default:* `nil`) - Logging configuration.
  *   `confidentialNodes` (*type:* `GoogleApi.Container.V1.Model.ConfidentialNodes.t`, *default:* `nil`) - Confidential nodes config. All the nodes in the node pool will be Confidential VM once enabled.
  *   `localNvmeSsdBlockConfig` (*type:* `GoogleApi.Container.V1.Model.LocalNvmeSsdBlockConfig.t`, *default:* `nil`) - Parameters for using raw-block Local NVMe SSDs.
  *   `localSsdCount` (*type:* `integer()`, *default:* `nil`) - The number of local SSD disks to be attached to the node. The limit for this value is dependent upon the maximum number of disks available on a machine per zone. See: https://cloud.google.com/compute/docs/disks/local-ssd for more information.
  *   `metadata` (*type:* `map()`, *default:* `nil`) - The metadata key/value pairs assigned to instances in the cluster. Keys must conform to the regexp `[a-zA-Z0-9-_]+` and be less than 128 bytes in length. These are reflected as part of a URL in the metadata server. Additionally, to avoid ambiguity, keys must not conflict with any other metadata keys for the project or be one of the reserved keys: - "cluster-location" - "cluster-name" - "cluster-uid" - "configure-sh" - "containerd-configure-sh" - "enable-os-login" - "gci-ensure-gke-docker" - "gci-metrics-enabled" - "gci-update-strategy" - "instance-template" - "kube-env" - "startup-script" - "user-data" - "disable-address-manager" - "windows-startup-script-ps1" - "common-psm1" - "k8s-node-setup-psm1" - "install-ssh-psm1" - "user-profile-psm1" Values are free-form strings, and only have meaning as interpreted by the image running in the instance. The only restriction placed on them is that each value's size must be less than or equal to 32 KB. The total size of all keys and values must be less than 512 KB.
  *   `enableConfidentialStorage` (*type:* `boolean()`, *default:* `nil`) - Optional. Reserved for future use.
  *   `gcfsConfig` (*type:* `GoogleApi.Container.V1.Model.GcfsConfig.t`, *default:* `nil`) - Google Container File System (image streaming) configs.
  *   `nodeGroup` (*type:* `String.t`, *default:* `nil`) - Setting this field will assign instances of this pool to run on the specified node group. This is useful for running workloads on [sole tenant nodes](https://cloud.google.com/compute/docs/nodes/sole-tenant-nodes).
  *   `secondaryBootDisks` (*type:* `list(GoogleApi.Container.V1.Model.SecondaryBootDisk.t)`, *default:* `nil`) - List of secondary boot disks attached to the nodes.
  *   `accelerators` (*type:* `list(GoogleApi.Container.V1.Model.AcceleratorConfig.t)`, *default:* `nil`) - A list of hardware accelerators to be attached to each node. See https://cloud.google.com/compute/docs/gpus for more information about support for GPUs.
  *   `windowsNodeConfig` (*type:* `GoogleApi.Container.V1.Model.WindowsNodeConfig.t`, *default:* `nil`) - Parameters that can be configured on Windows nodes.
  *   `linuxNodeConfig` (*type:* `GoogleApi.Container.V1.Model.LinuxNodeConfig.t`, *default:* `nil`) - Parameters that can be configured on Linux nodes.
  *   `minCpuPlatform` (*type:* `String.t`, *default:* `nil`) - Minimum CPU platform to be used by this instance. The instance may be scheduled on the specified or newer CPU platform. Applicable values are the friendly names of CPU platforms, such as `minCpuPlatform: "Intel Haswell"` or `minCpuPlatform: "Intel Sandy Bridge"`. For more information, read [how to specify min CPU platform](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform)
  *   `resourceLabels` (*type:* `map()`, *default:* `nil`) - The resource labels for the node pool to use to annotate any related Google Compute Engine resources.
  *   `tags` (*type:* `list(String.t)`, *default:* `nil`) - The list of instance tags applied to all nodes. Tags are used to identify valid sources or targets for network firewalls and are specified by the client during cluster or node pool creation. Each tag within the list must comply with RFC1035.
  *   `ephemeralStorageLocalSsdConfig` (*type:* `GoogleApi.Container.V1.Model.EphemeralStorageLocalSsdConfig.t`, *default:* `nil`) - Parameters for the node ephemeral storage using Local SSDs. If unspecified, ephemeral storage is backed by the boot disk.
  *   `gvnic` (*type:* `GoogleApi.Container.V1.Model.VirtualNIC.t`, *default:* `nil`) - Enable or disable gvnic in the node pool.
  *   `diskType` (*type:* `String.t`, *default:* `nil`) - Type of the disk attached to each node (e.g. 'pd-standard', 'pd-ssd' or 'pd-balanced') If unspecified, the default disk type is 'pd-standard'
  *   `secondaryBootDiskUpdateStrategy` (*type:* `GoogleApi.Container.V1.Model.SecondaryBootDiskUpdateStrategy.t`, *default:* `nil`) - Secondary boot disk update strategy.
  *   `diskSizeGb` (*type:* `integer()`, *default:* `nil`) - Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB. If unspecified, the default disk size is 100GB.
  *   `machineType` (*type:* `String.t`, *default:* `nil`) - The name of a Google Compute Engine [machine type](https://cloud.google.com/compute/docs/machine-types) If unspecified, the default machine type is `e2-medium`.
  *   `imageType` (*type:* `String.t`, *default:* `nil`) - The image type to use for this node. Note that for a given image type, the latest version of it will be used. Please see https://cloud.google.com/kubernetes-engine/docs/concepts/node-images for available image types.
  *   `preemptible` (*type:* `boolean()`, *default:* `nil`) - Whether the nodes are created as preemptible VM instances. See: https://cloud.google.com/compute/docs/instances/preemptible for more information about preemptible VM instances.
  *   `spot` (*type:* `boolean()`, *default:* `nil`) - Spot flag for enabling Spot VM, which is a rebrand of the existing preemptible flag.
  *   `storagePools` (*type:* `list(String.t)`, *default:* `nil`) - List of Storage Pools where boot disks are provisioned.
  *   `oauthScopes` (*type:* `list(String.t)`, *default:* `nil`) - The set of Google API scopes to be made available on all of the node VMs under the "default" service account. The following scopes are recommended, but not required, and by default are not included: * `https://www.googleapis.com/auth/compute` is required for mounting persistent storage on your nodes. * `https://www.googleapis.com/auth/devstorage.read_only` is required for communicating with **gcr.io** (the [Google Container Registry](https://cloud.google.com/container-registry/)). If unspecified, no scopes are added, unless Cloud Logging or Cloud Monitoring are enabled, in which case their required scopes will be added.
  *   `soleTenantConfig` (*type:* `GoogleApi.Container.V1.Model.SoleTenantConfig.t`, *default:* `nil`) - Parameters for node pools to be backed by shared sole tenant node groups.
  *   `workloadMetadataConfig` (*type:* `GoogleApi.Container.V1.Model.WorkloadMetadataConfig.t`, *default:* `nil`) - The workload metadata configuration for this node.
  *   `reservationAffinity` (*type:* `GoogleApi.Container.V1.Model.ReservationAffinity.t`, *default:* `nil`) - The optional reservation affinity. Setting this field will apply the specified [Zonal Compute Reservation](https://cloud.google.com/compute/docs/instances/reserving-zonal-resources) to this node pool.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :sandboxConfig => GoogleApi.Container.V1.Model.SandboxConfig.t() | nil,
          :serviceAccount => String.t() | nil,
          :fastSocket => GoogleApi.Container.V1.Model.FastSocket.t() | nil,
          :labels => map() | nil,
          :resourceManagerTags => GoogleApi.Container.V1.Model.ResourceManagerTags.t() | nil,
          :taints => list(GoogleApi.Container.V1.Model.NodeTaint.t()) | nil,
          :containerdConfig => GoogleApi.Container.V1.Model.ContainerdConfig.t() | nil,
          :kubeletConfig => GoogleApi.Container.V1.Model.NodeKubeletConfig.t() | nil,
          :bootDiskKmsKey => String.t() | nil,
          :advancedMachineFeatures =>
            GoogleApi.Container.V1.Model.AdvancedMachineFeatures.t() | nil,
          :shieldedInstanceConfig =>
            GoogleApi.Container.V1.Model.ShieldedInstanceConfig.t() | nil,
          :loggingConfig => GoogleApi.Container.V1.Model.NodePoolLoggingConfig.t() | nil,
          :confidentialNodes => GoogleApi.Container.V1.Model.ConfidentialNodes.t() | nil,
          :localNvmeSsdBlockConfig =>
            GoogleApi.Container.V1.Model.LocalNvmeSsdBlockConfig.t() | nil,
          :localSsdCount => integer() | nil,
          :metadata => map() | nil,
          :enableConfidentialStorage => boolean() | nil,
          :gcfsConfig => GoogleApi.Container.V1.Model.GcfsConfig.t() | nil,
          :nodeGroup => String.t() | nil,
          :secondaryBootDisks => list(GoogleApi.Container.V1.Model.SecondaryBootDisk.t()) | nil,
          :accelerators => list(GoogleApi.Container.V1.Model.AcceleratorConfig.t()) | nil,
          :windowsNodeConfig => GoogleApi.Container.V1.Model.WindowsNodeConfig.t() | nil,
          :linuxNodeConfig => GoogleApi.Container.V1.Model.LinuxNodeConfig.t() | nil,
          :minCpuPlatform => String.t() | nil,
          :resourceLabels => map() | nil,
          :tags => list(String.t()) | nil,
          :ephemeralStorageLocalSsdConfig =>
            GoogleApi.Container.V1.Model.EphemeralStorageLocalSsdConfig.t() | nil,
          :gvnic => GoogleApi.Container.V1.Model.VirtualNIC.t() | nil,
          :diskType => String.t() | nil,
          :secondaryBootDiskUpdateStrategy =>
            GoogleApi.Container.V1.Model.SecondaryBootDiskUpdateStrategy.t() | nil,
          :diskSizeGb => integer() | nil,
          :machineType => String.t() | nil,
          :imageType => String.t() | nil,
          :preemptible => boolean() | nil,
          :spot => boolean() | nil,
          :storagePools => list(String.t()) | nil,
          :oauthScopes => list(String.t()) | nil,
          :soleTenantConfig => GoogleApi.Container.V1.Model.SoleTenantConfig.t() | nil,
          :workloadMetadataConfig =>
            GoogleApi.Container.V1.Model.WorkloadMetadataConfig.t() | nil,
          :reservationAffinity => GoogleApi.Container.V1.Model.ReservationAffinity.t() | nil
        }

  field(:sandboxConfig, as: GoogleApi.Container.V1.Model.SandboxConfig)
  field(:serviceAccount)
  field(:fastSocket, as: GoogleApi.Container.V1.Model.FastSocket)
  field(:labels, type: :map)
  field(:resourceManagerTags, as: GoogleApi.Container.V1.Model.ResourceManagerTags)
  field(:taints, as: GoogleApi.Container.V1.Model.NodeTaint, type: :list)
  field(:containerdConfig, as: GoogleApi.Container.V1.Model.ContainerdConfig)
  field(:kubeletConfig, as: GoogleApi.Container.V1.Model.NodeKubeletConfig)
  field(:bootDiskKmsKey)
  field(:advancedMachineFeatures, as: GoogleApi.Container.V1.Model.AdvancedMachineFeatures)
  field(:shieldedInstanceConfig, as: GoogleApi.Container.V1.Model.ShieldedInstanceConfig)
  field(:loggingConfig, as: GoogleApi.Container.V1.Model.NodePoolLoggingConfig)
  field(:confidentialNodes, as: GoogleApi.Container.V1.Model.ConfidentialNodes)
  field(:localNvmeSsdBlockConfig, as: GoogleApi.Container.V1.Model.LocalNvmeSsdBlockConfig)
  field(:localSsdCount)
  field(:metadata, type: :map)
  field(:enableConfidentialStorage)
  field(:gcfsConfig, as: GoogleApi.Container.V1.Model.GcfsConfig)
  field(:nodeGroup)
  field(:secondaryBootDisks, as: GoogleApi.Container.V1.Model.SecondaryBootDisk, type: :list)
  field(:accelerators, as: GoogleApi.Container.V1.Model.AcceleratorConfig, type: :list)
  field(:windowsNodeConfig, as: GoogleApi.Container.V1.Model.WindowsNodeConfig)
  field(:linuxNodeConfig, as: GoogleApi.Container.V1.Model.LinuxNodeConfig)
  field(:minCpuPlatform)
  field(:resourceLabels, type: :map)
  field(:tags, type: :list)

  field(:ephemeralStorageLocalSsdConfig,
    as: GoogleApi.Container.V1.Model.EphemeralStorageLocalSsdConfig
  )

  field(:gvnic, as: GoogleApi.Container.V1.Model.VirtualNIC)
  field(:diskType)

  field(:secondaryBootDiskUpdateStrategy,
    as: GoogleApi.Container.V1.Model.SecondaryBootDiskUpdateStrategy
  )

  field(:diskSizeGb)
  field(:machineType)
  field(:imageType)
  field(:preemptible)
  field(:spot)
  field(:storagePools, type: :list)
  field(:oauthScopes, type: :list)
  field(:soleTenantConfig, as: GoogleApi.Container.V1.Model.SoleTenantConfig)
  field(:workloadMetadataConfig, as: GoogleApi.Container.V1.Model.WorkloadMetadataConfig)
  field(:reservationAffinity, as: GoogleApi.Container.V1.Model.ReservationAffinity)
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.NodeConfig do
  def decode(value, options) do
    GoogleApi.Container.V1.Model.NodeConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Container.V1.Model.NodeConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
