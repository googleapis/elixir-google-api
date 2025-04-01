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

defmodule GoogleApi.GKEOnPrem.V1.Model.VmwareCluster do
  @moduledoc """
  Resource that represents a VMware user cluster. ##

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time at which VMware user cluster was created.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The current state of VMware user cluster.
  *   `dataplaneV2` (*type:* `GoogleApi.GKEOnPrem.V1.Model.VmwareDataplaneV2Config.t`, *default:* `nil`) - VmwareDataplaneV2Config specifies configuration for Dataplane V2.
  *   `annotations` (*type:* `map()`, *default:* `nil`) - Annotations on the VMware user cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Immutable. The VMware user cluster resource name.
  *   `controlPlaneNode` (*type:* `GoogleApi.GKEOnPrem.V1.Model.VmwareControlPlaneNodeConfig.t`, *default:* `nil`) - VMware user cluster control plane nodes must have either 1 or 3 replicas.
  *   `description` (*type:* `String.t`, *default:* `nil`) - A human readable description of this VMware user cluster.
  *   `loadBalancer` (*type:* `GoogleApi.GKEOnPrem.V1.Model.VmwareLoadBalancerConfig.t`, *default:* `nil`) - Load balancer configuration.
  *   `localName` (*type:* `String.t`, *default:* `nil`) - Output only. The object name of the VMware OnPremUserCluster custom resource on the associated admin cluster. This field is used to support conflicting names when enrolling existing clusters to the API. When used as a part of cluster enrollment, this field will differ from the ID in the resource name. For new clusters, this field will match the user provided cluster name and be visible in the last component of the resource name. It is not modifiable. All users should use this name to access their cluster using gkectl or kubectl and should expect to see the local name when viewing admin cluster controller logs.
  *   `authorization` (*type:* `GoogleApi.GKEOnPrem.V1.Model.Authorization.t`, *default:* `nil`) - RBAC policy that will be applied and managed by the Anthos On-Prem API.
  *   `vcenter` (*type:* `GoogleApi.GKEOnPrem.V1.Model.VmwareVCenterConfig.t`, *default:* `nil`) - VmwareVCenterConfig specifies vCenter config for the user cluster. If unspecified, it is inherited from the admin cluster.
  *   `deleteTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time at which VMware user cluster was deleted.
  *   `binaryAuthorization` (*type:* `GoogleApi.GKEOnPrem.V1.Model.BinaryAuthorization.t`, *default:* `nil`) - Binary Authorization related configurations.
  *   `onPremVersion` (*type:* `String.t`, *default:* `nil`) - Required. The Anthos clusters on the VMware version for your user cluster.
  *   `reconciling` (*type:* `boolean()`, *default:* `nil`) - Output only. If set, there are currently changes in flight to the VMware user cluster.
  *   `adminClusterMembership` (*type:* `String.t`, *default:* `nil`) - Required. The admin cluster this VMware user cluster belongs to. This is the full resource name of the admin cluster's fleet membership. In the future, references to other resource types might be allowed if admin clusters are modeled as their own resources.
  *   `vmTrackingEnabled` (*type:* `boolean()`, *default:* `nil`) - Enable VM tracking.
  *   `endpoint` (*type:* `String.t`, *default:* `nil`) - Output only. The DNS name of VMware user cluster's API server.
  *   `storage` (*type:* `GoogleApi.GKEOnPrem.V1.Model.VmwareStorageConfig.t`, *default:* `nil`) - Storage configuration.
  *   `upgradePolicy` (*type:* `GoogleApi.GKEOnPrem.V1.Model.VmwareClusterUpgradePolicy.t`, *default:* `nil`) - Specifies upgrade policy for the cluster.
  *   `validationCheck` (*type:* `GoogleApi.GKEOnPrem.V1.Model.ValidationCheck.t`, *default:* `nil`) - Output only. ValidationCheck represents the result of the preflight check job.
  *   `uid` (*type:* `String.t`, *default:* `nil`) - Output only. The unique identifier of the VMware user cluster.
  *   `enableAdvancedCluster` (*type:* `boolean()`, *default:* `nil`) - Enable advanced cluster.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time at which VMware user cluster was last updated.
  *   `autoRepairConfig` (*type:* `GoogleApi.GKEOnPrem.V1.Model.VmwareAutoRepairConfig.t`, *default:* `nil`) - Configuration for auto repairing.
  *   `antiAffinityGroups` (*type:* `GoogleApi.GKEOnPrem.V1.Model.VmwareAAGConfig.t`, *default:* `nil`) - AAGConfig specifies whether to spread VMware user cluster nodes across at least three physical hosts in the datacenter.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding. Allows clients to perform consistent read-modify-writes through optimistic concurrency control.
  *   `disableBundledIngress` (*type:* `boolean()`, *default:* `nil`) - Disable bundled ingress.
  *   `status` (*type:* `GoogleApi.GKEOnPrem.V1.Model.ResourceStatus.t`, *default:* `nil`) - Output only. ResourceStatus representing detailed cluster state.
  *   `adminClusterName` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the VMware admin cluster hosting this user cluster.
  *   `enableControlPlaneV2` (*type:* `boolean()`, *default:* `nil`) - Enable control plane V2. Default to false.
  *   `fleet` (*type:* `GoogleApi.GKEOnPrem.V1.Model.Fleet.t`, *default:* `nil`) - Output only. Fleet configuration for the cluster.
  *   `networkConfig` (*type:* `GoogleApi.GKEOnPrem.V1.Model.VmwareNetworkConfig.t`, *default:* `nil`) - The VMware user cluster network configuration.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :state => String.t() | nil,
          :dataplaneV2 => GoogleApi.GKEOnPrem.V1.Model.VmwareDataplaneV2Config.t() | nil,
          :annotations => map() | nil,
          :name => String.t() | nil,
          :controlPlaneNode =>
            GoogleApi.GKEOnPrem.V1.Model.VmwareControlPlaneNodeConfig.t() | nil,
          :description => String.t() | nil,
          :loadBalancer => GoogleApi.GKEOnPrem.V1.Model.VmwareLoadBalancerConfig.t() | nil,
          :localName => String.t() | nil,
          :authorization => GoogleApi.GKEOnPrem.V1.Model.Authorization.t() | nil,
          :vcenter => GoogleApi.GKEOnPrem.V1.Model.VmwareVCenterConfig.t() | nil,
          :deleteTime => DateTime.t() | nil,
          :binaryAuthorization => GoogleApi.GKEOnPrem.V1.Model.BinaryAuthorization.t() | nil,
          :onPremVersion => String.t() | nil,
          :reconciling => boolean() | nil,
          :adminClusterMembership => String.t() | nil,
          :vmTrackingEnabled => boolean() | nil,
          :endpoint => String.t() | nil,
          :storage => GoogleApi.GKEOnPrem.V1.Model.VmwareStorageConfig.t() | nil,
          :upgradePolicy => GoogleApi.GKEOnPrem.V1.Model.VmwareClusterUpgradePolicy.t() | nil,
          :validationCheck => GoogleApi.GKEOnPrem.V1.Model.ValidationCheck.t() | nil,
          :uid => String.t() | nil,
          :enableAdvancedCluster => boolean() | nil,
          :updateTime => DateTime.t() | nil,
          :autoRepairConfig => GoogleApi.GKEOnPrem.V1.Model.VmwareAutoRepairConfig.t() | nil,
          :antiAffinityGroups => GoogleApi.GKEOnPrem.V1.Model.VmwareAAGConfig.t() | nil,
          :etag => String.t() | nil,
          :disableBundledIngress => boolean() | nil,
          :status => GoogleApi.GKEOnPrem.V1.Model.ResourceStatus.t() | nil,
          :adminClusterName => String.t() | nil,
          :enableControlPlaneV2 => boolean() | nil,
          :fleet => GoogleApi.GKEOnPrem.V1.Model.Fleet.t() | nil,
          :networkConfig => GoogleApi.GKEOnPrem.V1.Model.VmwareNetworkConfig.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:state)
  field(:dataplaneV2, as: GoogleApi.GKEOnPrem.V1.Model.VmwareDataplaneV2Config)
  field(:annotations, type: :map)
  field(:name)
  field(:controlPlaneNode, as: GoogleApi.GKEOnPrem.V1.Model.VmwareControlPlaneNodeConfig)
  field(:description)
  field(:loadBalancer, as: GoogleApi.GKEOnPrem.V1.Model.VmwareLoadBalancerConfig)
  field(:localName)
  field(:authorization, as: GoogleApi.GKEOnPrem.V1.Model.Authorization)
  field(:vcenter, as: GoogleApi.GKEOnPrem.V1.Model.VmwareVCenterConfig)
  field(:deleteTime, as: DateTime)
  field(:binaryAuthorization, as: GoogleApi.GKEOnPrem.V1.Model.BinaryAuthorization)
  field(:onPremVersion)
  field(:reconciling)
  field(:adminClusterMembership)
  field(:vmTrackingEnabled)
  field(:endpoint)
  field(:storage, as: GoogleApi.GKEOnPrem.V1.Model.VmwareStorageConfig)
  field(:upgradePolicy, as: GoogleApi.GKEOnPrem.V1.Model.VmwareClusterUpgradePolicy)
  field(:validationCheck, as: GoogleApi.GKEOnPrem.V1.Model.ValidationCheck)
  field(:uid)
  field(:enableAdvancedCluster)
  field(:updateTime, as: DateTime)
  field(:autoRepairConfig, as: GoogleApi.GKEOnPrem.V1.Model.VmwareAutoRepairConfig)
  field(:antiAffinityGroups, as: GoogleApi.GKEOnPrem.V1.Model.VmwareAAGConfig)
  field(:etag)
  field(:disableBundledIngress)
  field(:status, as: GoogleApi.GKEOnPrem.V1.Model.ResourceStatus)
  field(:adminClusterName)
  field(:enableControlPlaneV2)
  field(:fleet, as: GoogleApi.GKEOnPrem.V1.Model.Fleet)
  field(:networkConfig, as: GoogleApi.GKEOnPrem.V1.Model.VmwareNetworkConfig)
end

defimpl Poison.Decoder, for: GoogleApi.GKEOnPrem.V1.Model.VmwareCluster do
  def decode(value, options) do
    GoogleApi.GKEOnPrem.V1.Model.VmwareCluster.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GKEOnPrem.V1.Model.VmwareCluster do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
