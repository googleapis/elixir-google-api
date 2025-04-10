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

defmodule GoogleApi.Container.V1.Model.AutoprovisioningNodePoolDefaults do
  @moduledoc """
  AutoprovisioningNodePoolDefaults contains defaults for a node pool created by NAP.

  ## Attributes

  *   `bootDiskKmsKey` (*type:* `String.t`, *default:* `nil`) - The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool. This should be of the form projects/[KEY_PROJECT_ID]/locations/[LOCATION]/keyRings/[RING_NAME]/cryptoKeys/[KEY_NAME]. For more information about protecting resources with Cloud KMS Keys please see: https://cloud.google.com/compute/docs/disks/customer-managed-encryption
  *   `diskSizeGb` (*type:* `integer()`, *default:* `nil`) - Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB. If unspecified, the default disk size is 100GB.
  *   `diskType` (*type:* `String.t`, *default:* `nil`) - Type of the disk attached to each node (e.g. 'pd-standard', 'pd-ssd' or 'pd-balanced') If unspecified, the default disk type is 'pd-standard'
  *   `imageType` (*type:* `String.t`, *default:* `nil`) - The image type to use for NAP created node. Please see https://cloud.google.com/kubernetes-engine/docs/concepts/node-images for available image types.
  *   `insecureKubeletReadonlyPortEnabled` (*type:* `boolean()`, *default:* `nil`) - DEPRECATED. Use NodePoolAutoConfig.NodeKubeletConfig instead.
  *   `management` (*type:* `GoogleApi.Container.V1.Model.NodeManagement.t`, *default:* `nil`) - Specifies the node management options for NAP created node-pools.
  *   `minCpuPlatform` (*type:* `String.t`, *default:* `nil`) - Deprecated. Minimum CPU platform to be used for NAP created node pools. The instance may be scheduled on the specified or newer CPU platform. Applicable values are the friendly names of CPU platforms, such as minCpuPlatform: Intel Haswell or minCpuPlatform: Intel Sandy Bridge. For more information, read [how to specify min CPU platform](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform). This field is deprecated, min_cpu_platform should be specified using `cloud.google.com/requested-min-cpu-platform` label selector on the pod. To unset the min cpu platform field pass "automatic" as field value.
  *   `oauthScopes` (*type:* `list(String.t)`, *default:* `nil`) - Scopes that are used by NAP when creating node pools.
  *   `serviceAccount` (*type:* `String.t`, *default:* `nil`) - The Google Cloud Platform Service Account to be used by the node VMs.
  *   `shieldedInstanceConfig` (*type:* `GoogleApi.Container.V1.Model.ShieldedInstanceConfig.t`, *default:* `nil`) - Shielded Instance options.
  *   `upgradeSettings` (*type:* `GoogleApi.Container.V1.Model.UpgradeSettings.t`, *default:* `nil`) - Specifies the upgrade settings for NAP created node pools
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bootDiskKmsKey => String.t() | nil,
          :diskSizeGb => integer() | nil,
          :diskType => String.t() | nil,
          :imageType => String.t() | nil,
          :insecureKubeletReadonlyPortEnabled => boolean() | nil,
          :management => GoogleApi.Container.V1.Model.NodeManagement.t() | nil,
          :minCpuPlatform => String.t() | nil,
          :oauthScopes => list(String.t()) | nil,
          :serviceAccount => String.t() | nil,
          :shieldedInstanceConfig =>
            GoogleApi.Container.V1.Model.ShieldedInstanceConfig.t() | nil,
          :upgradeSettings => GoogleApi.Container.V1.Model.UpgradeSettings.t() | nil
        }

  field(:bootDiskKmsKey)
  field(:diskSizeGb)
  field(:diskType)
  field(:imageType)
  field(:insecureKubeletReadonlyPortEnabled)
  field(:management, as: GoogleApi.Container.V1.Model.NodeManagement)
  field(:minCpuPlatform)
  field(:oauthScopes, type: :list)
  field(:serviceAccount)
  field(:shieldedInstanceConfig, as: GoogleApi.Container.V1.Model.ShieldedInstanceConfig)
  field(:upgradeSettings, as: GoogleApi.Container.V1.Model.UpgradeSettings)
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.AutoprovisioningNodePoolDefaults do
  def decode(value, options) do
    GoogleApi.Container.V1.Model.AutoprovisioningNodePoolDefaults.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Container.V1.Model.AutoprovisioningNodePoolDefaults do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
