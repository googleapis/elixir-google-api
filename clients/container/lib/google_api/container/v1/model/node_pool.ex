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

defmodule GoogleApi.Container.V1.Model.NodePool do
  @moduledoc """
  NodePool contains the name and configuration for a cluster's node pool. Node pools are a set of nodes (i.e. VM's), with a common configuration and specification, under the control of the cluster master. They may have a set of Kubernetes labels applied to them, which may be used to reference them during pod scheduling. They may also be resized up or down, to accommodate the workload.

  ## Attributes

  *   `autoscaling` (*type:* `GoogleApi.Container.V1.Model.NodePoolAutoscaling.t`, *default:* `nil`) - Autoscaler configuration for this NodePool. Autoscaler is enabled only if a valid configuration is present.
  *   `bestEffortProvisioning` (*type:* `GoogleApi.Container.V1.Model.BestEffortProvisioning.t`, *default:* `nil`) - Enable best effort provisioning for nodes
  *   `conditions` (*type:* `list(GoogleApi.Container.V1.Model.StatusCondition.t)`, *default:* `nil`) - Which conditions caused the current node pool state.
  *   `config` (*type:* `GoogleApi.Container.V1.Model.NodeConfig.t`, *default:* `nil`) - The node configuration of the pool.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - This checksum is computed by the server based on the value of node pool fields, and may be sent on update requests to ensure the client has an up-to-date value before proceeding.
  *   `initialNodeCount` (*type:* `integer()`, *default:* `nil`) - The initial node count for the pool. You must ensure that your Compute Engine [resource quota](https://cloud.google.com/compute/quotas) is sufficient for this number of instances. You must also have available firewall and routes quota.
  *   `instanceGroupUrls` (*type:* `list(String.t)`, *default:* `nil`) - Output only. The resource URLs of the [managed instance groups](https://cloud.google.com/compute/docs/instance-groups/creating-groups-of-managed-instances) associated with this node pool. During the node pool blue-green upgrade operation, the URLs contain both blue and green resources.
  *   `locations` (*type:* `list(String.t)`, *default:* `nil`) - The list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the NodePool's nodes should be located. If this value is unspecified during node pool creation, the [Cluster.Locations](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters#Cluster.FIELDS.locations) value will be used, instead. Warning: changing node pool locations will result in nodes being added and/or removed.
  *   `management` (*type:* `GoogleApi.Container.V1.Model.NodeManagement.t`, *default:* `nil`) - NodeManagement configuration for this NodePool.
  *   `maxPodsConstraint` (*type:* `GoogleApi.Container.V1.Model.MaxPodsConstraint.t`, *default:* `nil`) - The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the node pool.
  *   `networkConfig` (*type:* `GoogleApi.Container.V1.Model.NodeNetworkConfig.t`, *default:* `nil`) - Networking configuration for this NodePool. If specified, it overrides the cluster-level defaults.
  *   `placementPolicy` (*type:* `GoogleApi.Container.V1.Model.PlacementPolicy.t`, *default:* `nil`) - Specifies the node placement policy.
  *   `podIpv4CidrSize` (*type:* `integer()`, *default:* `nil`) - Output only. The pod CIDR block size per node in this node pool.
  *   `queuedProvisioning` (*type:* `GoogleApi.Container.V1.Model.QueuedProvisioning.t`, *default:* `nil`) - Specifies the configuration of queued provisioning.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - Output only. Server-defined URL for the resource.
  *   `status` (*type:* `String.t`, *default:* `nil`) - Output only. The status of the nodes in this pool instance.
  *   `statusMessage` (*type:* `String.t`, *default:* `nil`) - Output only. Deprecated. Use conditions instead. Additional information about the current status of this node pool instance, if available.
  *   `updateInfo` (*type:* `GoogleApi.Container.V1.Model.UpdateInfo.t`, *default:* `nil`) - Output only. Update info contains relevant information during a node pool update.
  *   `upgradeSettings` (*type:* `GoogleApi.Container.V1.Model.UpgradeSettings.t`, *default:* `nil`) - Upgrade settings control disruption and speed of the upgrade.
  *   `version` (*type:* `String.t`, *default:* `nil`) - The version of Kubernetes running on this NodePool's nodes. If unspecified, it defaults as described [here](https://cloud.google.com/kubernetes-engine/versioning#specifying_node_version).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoscaling => GoogleApi.Container.V1.Model.NodePoolAutoscaling.t() | nil,
          :bestEffortProvisioning =>
            GoogleApi.Container.V1.Model.BestEffortProvisioning.t() | nil,
          :conditions => list(GoogleApi.Container.V1.Model.StatusCondition.t()) | nil,
          :config => GoogleApi.Container.V1.Model.NodeConfig.t() | nil,
          :etag => String.t() | nil,
          :initialNodeCount => integer() | nil,
          :instanceGroupUrls => list(String.t()) | nil,
          :locations => list(String.t()) | nil,
          :management => GoogleApi.Container.V1.Model.NodeManagement.t() | nil,
          :maxPodsConstraint => GoogleApi.Container.V1.Model.MaxPodsConstraint.t() | nil,
          :name => String.t() | nil,
          :networkConfig => GoogleApi.Container.V1.Model.NodeNetworkConfig.t() | nil,
          :placementPolicy => GoogleApi.Container.V1.Model.PlacementPolicy.t() | nil,
          :podIpv4CidrSize => integer() | nil,
          :queuedProvisioning => GoogleApi.Container.V1.Model.QueuedProvisioning.t() | nil,
          :selfLink => String.t() | nil,
          :status => String.t() | nil,
          :statusMessage => String.t() | nil,
          :updateInfo => GoogleApi.Container.V1.Model.UpdateInfo.t() | nil,
          :upgradeSettings => GoogleApi.Container.V1.Model.UpgradeSettings.t() | nil,
          :version => String.t() | nil
        }

  field(:autoscaling, as: GoogleApi.Container.V1.Model.NodePoolAutoscaling)
  field(:bestEffortProvisioning, as: GoogleApi.Container.V1.Model.BestEffortProvisioning)
  field(:conditions, as: GoogleApi.Container.V1.Model.StatusCondition, type: :list)
  field(:config, as: GoogleApi.Container.V1.Model.NodeConfig)
  field(:etag)
  field(:initialNodeCount)
  field(:instanceGroupUrls, type: :list)
  field(:locations, type: :list)
  field(:management, as: GoogleApi.Container.V1.Model.NodeManagement)
  field(:maxPodsConstraint, as: GoogleApi.Container.V1.Model.MaxPodsConstraint)
  field(:name)
  field(:networkConfig, as: GoogleApi.Container.V1.Model.NodeNetworkConfig)
  field(:placementPolicy, as: GoogleApi.Container.V1.Model.PlacementPolicy)
  field(:podIpv4CidrSize)
  field(:queuedProvisioning, as: GoogleApi.Container.V1.Model.QueuedProvisioning)
  field(:selfLink)
  field(:status)
  field(:statusMessage)
  field(:updateInfo, as: GoogleApi.Container.V1.Model.UpdateInfo)
  field(:upgradeSettings, as: GoogleApi.Container.V1.Model.UpgradeSettings)
  field(:version)
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.NodePool do
  def decode(value, options) do
    GoogleApi.Container.V1.Model.NodePool.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Container.V1.Model.NodePool do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
