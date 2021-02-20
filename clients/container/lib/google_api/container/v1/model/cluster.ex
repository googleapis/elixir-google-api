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

defmodule GoogleApi.Container.V1.Model.Cluster do
  @moduledoc """
  A Google Kubernetes Engine cluster.

  ## Attributes

  *   `authenticatorGroupsConfig` (*type:* `GoogleApi.Container.V1.Model.AuthenticatorGroupsConfig.t`, *default:* `nil`) - Configuration controlling RBAC group membership information.
  *   `clusterIpv4Cidr` (*type:* `String.t`, *default:* `nil`) - The IP address range of the container pods in this cluster, in [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`). Leave blank to have one automatically chosen or specify a `/14` block in `10.0.0.0/8`.
  *   `instanceGroupUrls` (*type:* `list(String.t)`, *default:* `nil`) - Deprecated. Use node_pools.instance_group_urls.
  *   `currentMasterVersion` (*type:* `String.t`, *default:* `nil`) - [Output only] The current software version of the master endpoint.
  *   `enableTpu` (*type:* `boolean()`, *default:* `nil`) - Enable the ability to use Cloud TPUs in this cluster.
  *   `nodeIpv4CidrSize` (*type:* `integer()`, *default:* `nil`) - [Output only] The size of the address space on each node for hosting containers. This is provisioned from within the `container_ipv4_cidr` range. This field will only be set when cluster is in route-based network mode.
  *   `legacyAbac` (*type:* `GoogleApi.Container.V1.Model.LegacyAbac.t`, *default:* `nil`) - Configuration for the legacy ABAC authorization mode.
  *   `shieldedNodes` (*type:* `GoogleApi.Container.V1.Model.ShieldedNodes.t`, *default:* `nil`) - Shielded Nodes configuration.
  *   `statusMessage` (*type:* `String.t`, *default:* `nil`) - [Output only] Deprecated. Use conditions instead. Additional information about the current status of this cluster, if available.
  *   `createTime` (*type:* `String.t`, *default:* `nil`) - [Output only] The time the cluster was created, in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  *   `currentNodeVersion` (*type:* `String.t`, *default:* `nil`) - [Output only] Deprecated, use [NodePools.version](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters.nodePools) instead. The current version of the node software components. If they are currently at multiple versions because they're in the process of being upgraded, this reflects the minimum version of all nodes.
  *   `autoscaling` (*type:* `GoogleApi.Container.V1.Model.ClusterAutoscaling.t`, *default:* `nil`) - Cluster-level autoscaling configuration.
  *   `conditions` (*type:* `list(GoogleApi.Container.V1.Model.StatusCondition.t)`, *default:* `nil`) - Which conditions caused the current cluster state.
  *   `monitoringService` (*type:* `String.t`, *default:* `nil`) - The monitoring service the cluster should use to write metrics. Currently available options: * "monitoring.googleapis.com/kubernetes" - The Cloud Monitoring service with a Kubernetes-native resource model * `monitoring.googleapis.com` - The legacy Cloud Monitoring service (no longer available as of GKE 1.15). * `none` - No metrics will be exported from the cluster. If left as an empty string,`monitoring.googleapis.com/kubernetes` will be used for GKE 1.14+ or `monitoring.googleapis.com` for earlier versions.
  *   `workloadIdentityConfig` (*type:* `GoogleApi.Container.V1.Model.WorkloadIdentityConfig.t`, *default:* `nil`) - Configuration for the use of Kubernetes Service Accounts in GCP IAM policies.
  *   `zone` (*type:* `String.t`, *default:* `nil`) - [Output only] The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field is deprecated, use location instead.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of this cluster.
  *   `privateClusterConfig` (*type:* `GoogleApi.Container.V1.Model.PrivateClusterConfig.t`, *default:* `nil`) - Configuration for private cluster.
  *   `enableKubernetesAlpha` (*type:* `boolean()`, *default:* `nil`) - Kubernetes alpha features are enabled on this cluster. This includes alpha API groups (e.g. v1alpha1) and features that may not be production ready in the kubernetes version of the master and nodes. The cluster has no SLA for uptime and master/node upgrades are disabled. Alpha enabled clusters are automatically deleted thirty days after creation.
  *   `loggingService` (*type:* `String.t`, *default:* `nil`) - The logging service the cluster should use to write logs. Currently available options: * `logging.googleapis.com/kubernetes` - The Cloud Logging service with a Kubernetes-native resource model * `logging.googleapis.com` - The legacy Cloud Logging service (no longer available as of GKE 1.15). * `none` - no logs will be exported from the cluster. If left as an empty string,`logging.googleapis.com/kubernetes` will be used for GKE 1.14+ or `logging.googleapis.com` for earlier versions.
  *   `resourceUsageExportConfig` (*type:* `GoogleApi.Container.V1.Model.ResourceUsageExportConfig.t`, *default:* `nil`) - Configuration for exporting resource usages. Resource usage export is disabled when this config is unspecified.
  *   `endpoint` (*type:* `String.t`, *default:* `nil`) - [Output only] The IP address of this cluster's master endpoint. The endpoint can be accessed from the internet at `https://username:password@endpoint/`. See the `masterAuth` property of this resource for username and password information.
  *   `initialNodeCount` (*type:* `integer()`, *default:* `nil`) - The number of nodes to create in this cluster. You must ensure that your Compute Engine [resource quota](https://cloud.google.com/compute/quotas) is sufficient for this number of instances. You must also have available firewall and routes quota. For requests, this field should only be used in lieu of a "node_pool" object, since this configuration (along with the "node_config") will be used to create a "NodePool" object with an auto-generated name. Do not use this and a node_pool at the same time. This field is deprecated, use node_pool.initial_node_count instead.
  *   `networkConfig` (*type:* `GoogleApi.Container.V1.Model.NetworkConfig.t`, *default:* `nil`) - Configuration for cluster networking.
  *   `masterAuthorizedNetworksConfig` (*type:* `GoogleApi.Container.V1.Model.MasterAuthorizedNetworksConfig.t`, *default:* `nil`) - The configuration options for master authorized networks feature.
  *   `networkPolicy` (*type:* `GoogleApi.Container.V1.Model.NetworkPolicy.t`, *default:* `nil`) - Configuration options for the NetworkPolicy feature.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of this cluster. The name must be unique within this project and location (e.g. zone or region), and can be up to 40 characters with the following restrictions: * Lowercase letters, numbers, and hyphens only. * Must start with a letter. * Must end with a number or a letter.
  *   `releaseChannel` (*type:* `GoogleApi.Container.V1.Model.ReleaseChannel.t`, *default:* `nil`) - Release channel configuration.
  *   `masterAuth` (*type:* `GoogleApi.Container.V1.Model.MasterAuth.t`, *default:* `nil`) - The authentication information for accessing the master endpoint. If unspecified, the defaults are used: For clusters before v1.12, if master_auth is unspecified, `username` will be set to "admin", a random password will be generated, and a client certificate will be issued.
  *   `location` (*type:* `String.t`, *default:* `nil`) - [Output only] The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/regions-zones/regions-zones#available) or [region](https://cloud.google.com/compute/docs/regions-zones/regions-zones#available) in which the cluster resides.
  *   `subnetwork` (*type:* `String.t`, *default:* `nil`) - The name of the Google Compute Engine [subnetwork](https://cloud.google.com/compute/docs/subnetworks) to which the cluster is connected.
  *   `status` (*type:* `String.t`, *default:* `nil`) - [Output only] The current status of this cluster.
  *   `network` (*type:* `String.t`, *default:* `nil`) - The name of the Google Compute Engine [network](https://cloud.google.com/compute/docs/networks-and-firewalls#networks) to which the cluster is connected. If left unspecified, the `default` network will be used.
  *   `nodeConfig` (*type:* `GoogleApi.Container.V1.Model.NodeConfig.t`, *default:* `nil`) - Parameters used in creating the cluster's nodes. For requests, this field should only be used in lieu of a "node_pool" object, since this configuration (along with the "initial_node_count") will be used to create a "NodePool" object with an auto-generated name. Do not use this and a node_pool at the same time. For responses, this field will be populated with the node configuration of the first node pool. (For configuration of each node pool, see `node_pool.config`) If unspecified, the defaults are used. This field is deprecated, use node_pool.config instead.
  *   `tpuIpv4CidrBlock` (*type:* `String.t`, *default:* `nil`) - [Output only] The IP address range of the Cloud TPUs in this cluster, in [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `1.2.3.4/29`).
  *   `ipAllocationPolicy` (*type:* `GoogleApi.Container.V1.Model.IPAllocationPolicy.t`, *default:* `nil`) - Configuration for cluster IP allocation.
  *   `addonsConfig` (*type:* `GoogleApi.Container.V1.Model.AddonsConfig.t`, *default:* `nil`) - Configurations for the various addons available to run in the cluster.
  *   `locations` (*type:* `list(String.t)`, *default:* `nil`) - The list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the cluster's nodes should be located. This field provides a default value if [NodePool.Locations](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters.nodePools#NodePool.FIELDS.locations) are not specified during node pool creation. Warning: changing cluster locations will update the [NodePool.Locations](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters.nodePools#NodePool.FIELDS.locations) of all node pools and will result in nodes being added and/or removed.
  *   `autopilot` (*type:* `GoogleApi.Container.V1.Model.Autopilot.t`, *default:* `nil`) - Autopilot configuration for the cluster. It has the same semantics as AutoGKE and overrides the setting in autogke.
  *   `resourceLabels` (*type:* `map()`, *default:* `nil`) - The resource labels for the cluster to use to annotate any related Google Compute Engine resources.
  *   `labelFingerprint` (*type:* `String.t`, *default:* `nil`) - The fingerprint of the set of labels for this cluster.
  *   `expireTime` (*type:* `String.t`, *default:* `nil`) - [Output only] The time the cluster will be automatically deleted in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  *   `currentNodeCount` (*type:* `integer()`, *default:* `nil`) - [Output only] The number of nodes currently in the cluster. Deprecated. Call Kubernetes API directly to retrieve node information.
  *   `defaultMaxPodsConstraint` (*type:* `GoogleApi.Container.V1.Model.MaxPodsConstraint.t`, *default:* `nil`) - The default constraint on the maximum number of pods that can be run simultaneously on a node in the node pool of this cluster. Only honored if cluster created with IP Alias support.
  *   `notificationConfig` (*type:* `GoogleApi.Container.V1.Model.NotificationConfig.t`, *default:* `nil`) - Notification configuration of the cluster.
  *   `binaryAuthorization` (*type:* `GoogleApi.Container.V1.Model.BinaryAuthorization.t`, *default:* `nil`) - Configuration for Binary Authorization.
  *   `initialClusterVersion` (*type:* `String.t`, *default:* `nil`) - The initial Kubernetes version for this cluster. Valid versions are those found in validMasterVersions returned by getServerConfig. The version can be upgraded over time; such upgrades are reflected in currentMasterVersion and currentNodeVersion. Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior: - "latest": picks the highest valid Kubernetes version - "1.X": picks the highest valid patch+gke.N patch in the 1.X version - "1.X.Y": picks the highest valid gke.N patch in the 1.X.Y version - "1.X.Y-gke.N": picks an explicit Kubernetes version - "","-": picks the default Kubernetes version
  *   `nodePools` (*type:* `list(GoogleApi.Container.V1.Model.NodePool.t)`, *default:* `nil`) - The node pools associated with this cluster. This field should not be set if "node_config" or "initial_node_count" are specified.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output only] Server-defined URL for the resource.
  *   `servicesIpv4Cidr` (*type:* `String.t`, *default:* `nil`) - [Output only] The IP address range of the Kubernetes services in this cluster, in [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `1.2.3.4/29`). Service addresses are typically put in the last `/16` from the container CIDR.
  *   `databaseEncryption` (*type:* `GoogleApi.Container.V1.Model.DatabaseEncryption.t`, *default:* `nil`) - Configuration of etcd encryption.
  *   `maintenancePolicy` (*type:* `GoogleApi.Container.V1.Model.MaintenancePolicy.t`, *default:* `nil`) - Configure the maintenance policy for this cluster.
  *   `verticalPodAutoscaling` (*type:* `GoogleApi.Container.V1.Model.VerticalPodAutoscaling.t`, *default:* `nil`) - Cluster-level Vertical Pod Autoscaling configuration.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :authenticatorGroupsConfig =>
            GoogleApi.Container.V1.Model.AuthenticatorGroupsConfig.t(),
          :clusterIpv4Cidr => String.t(),
          :instanceGroupUrls => list(String.t()),
          :currentMasterVersion => String.t(),
          :enableTpu => boolean(),
          :nodeIpv4CidrSize => integer(),
          :legacyAbac => GoogleApi.Container.V1.Model.LegacyAbac.t(),
          :shieldedNodes => GoogleApi.Container.V1.Model.ShieldedNodes.t(),
          :statusMessage => String.t(),
          :createTime => String.t(),
          :currentNodeVersion => String.t(),
          :autoscaling => GoogleApi.Container.V1.Model.ClusterAutoscaling.t(),
          :conditions => list(GoogleApi.Container.V1.Model.StatusCondition.t()),
          :monitoringService => String.t(),
          :workloadIdentityConfig => GoogleApi.Container.V1.Model.WorkloadIdentityConfig.t(),
          :zone => String.t(),
          :description => String.t(),
          :privateClusterConfig => GoogleApi.Container.V1.Model.PrivateClusterConfig.t(),
          :enableKubernetesAlpha => boolean(),
          :loggingService => String.t(),
          :resourceUsageExportConfig =>
            GoogleApi.Container.V1.Model.ResourceUsageExportConfig.t(),
          :endpoint => String.t(),
          :initialNodeCount => integer(),
          :networkConfig => GoogleApi.Container.V1.Model.NetworkConfig.t(),
          :masterAuthorizedNetworksConfig =>
            GoogleApi.Container.V1.Model.MasterAuthorizedNetworksConfig.t(),
          :networkPolicy => GoogleApi.Container.V1.Model.NetworkPolicy.t(),
          :name => String.t(),
          :releaseChannel => GoogleApi.Container.V1.Model.ReleaseChannel.t(),
          :masterAuth => GoogleApi.Container.V1.Model.MasterAuth.t(),
          :location => String.t(),
          :subnetwork => String.t(),
          :status => String.t(),
          :network => String.t(),
          :nodeConfig => GoogleApi.Container.V1.Model.NodeConfig.t(),
          :tpuIpv4CidrBlock => String.t(),
          :ipAllocationPolicy => GoogleApi.Container.V1.Model.IPAllocationPolicy.t(),
          :addonsConfig => GoogleApi.Container.V1.Model.AddonsConfig.t(),
          :locations => list(String.t()),
          :autopilot => GoogleApi.Container.V1.Model.Autopilot.t(),
          :resourceLabels => map(),
          :labelFingerprint => String.t(),
          :expireTime => String.t(),
          :currentNodeCount => integer(),
          :defaultMaxPodsConstraint => GoogleApi.Container.V1.Model.MaxPodsConstraint.t(),
          :notificationConfig => GoogleApi.Container.V1.Model.NotificationConfig.t(),
          :binaryAuthorization => GoogleApi.Container.V1.Model.BinaryAuthorization.t(),
          :initialClusterVersion => String.t(),
          :nodePools => list(GoogleApi.Container.V1.Model.NodePool.t()),
          :selfLink => String.t(),
          :servicesIpv4Cidr => String.t(),
          :databaseEncryption => GoogleApi.Container.V1.Model.DatabaseEncryption.t(),
          :maintenancePolicy => GoogleApi.Container.V1.Model.MaintenancePolicy.t(),
          :verticalPodAutoscaling => GoogleApi.Container.V1.Model.VerticalPodAutoscaling.t()
        }

  field(:authenticatorGroupsConfig, as: GoogleApi.Container.V1.Model.AuthenticatorGroupsConfig)
  field(:clusterIpv4Cidr)
  field(:instanceGroupUrls, type: :list)
  field(:currentMasterVersion)
  field(:enableTpu)
  field(:nodeIpv4CidrSize)
  field(:legacyAbac, as: GoogleApi.Container.V1.Model.LegacyAbac)
  field(:shieldedNodes, as: GoogleApi.Container.V1.Model.ShieldedNodes)
  field(:statusMessage)
  field(:createTime)
  field(:currentNodeVersion)
  field(:autoscaling, as: GoogleApi.Container.V1.Model.ClusterAutoscaling)
  field(:conditions, as: GoogleApi.Container.V1.Model.StatusCondition, type: :list)
  field(:monitoringService)
  field(:workloadIdentityConfig, as: GoogleApi.Container.V1.Model.WorkloadIdentityConfig)
  field(:zone)
  field(:description)
  field(:privateClusterConfig, as: GoogleApi.Container.V1.Model.PrivateClusterConfig)
  field(:enableKubernetesAlpha)
  field(:loggingService)
  field(:resourceUsageExportConfig, as: GoogleApi.Container.V1.Model.ResourceUsageExportConfig)
  field(:endpoint)
  field(:initialNodeCount)
  field(:networkConfig, as: GoogleApi.Container.V1.Model.NetworkConfig)

  field(:masterAuthorizedNetworksConfig,
    as: GoogleApi.Container.V1.Model.MasterAuthorizedNetworksConfig
  )

  field(:networkPolicy, as: GoogleApi.Container.V1.Model.NetworkPolicy)
  field(:name)
  field(:releaseChannel, as: GoogleApi.Container.V1.Model.ReleaseChannel)
  field(:masterAuth, as: GoogleApi.Container.V1.Model.MasterAuth)
  field(:location)
  field(:subnetwork)
  field(:status)
  field(:network)
  field(:nodeConfig, as: GoogleApi.Container.V1.Model.NodeConfig)
  field(:tpuIpv4CidrBlock)
  field(:ipAllocationPolicy, as: GoogleApi.Container.V1.Model.IPAllocationPolicy)
  field(:addonsConfig, as: GoogleApi.Container.V1.Model.AddonsConfig)
  field(:locations, type: :list)
  field(:autopilot, as: GoogleApi.Container.V1.Model.Autopilot)
  field(:resourceLabels, type: :map)
  field(:labelFingerprint)
  field(:expireTime)
  field(:currentNodeCount)
  field(:defaultMaxPodsConstraint, as: GoogleApi.Container.V1.Model.MaxPodsConstraint)
  field(:notificationConfig, as: GoogleApi.Container.V1.Model.NotificationConfig)
  field(:binaryAuthorization, as: GoogleApi.Container.V1.Model.BinaryAuthorization)
  field(:initialClusterVersion)
  field(:nodePools, as: GoogleApi.Container.V1.Model.NodePool, type: :list)
  field(:selfLink)
  field(:servicesIpv4Cidr)
  field(:databaseEncryption, as: GoogleApi.Container.V1.Model.DatabaseEncryption)
  field(:maintenancePolicy, as: GoogleApi.Container.V1.Model.MaintenancePolicy)
  field(:verticalPodAutoscaling, as: GoogleApi.Container.V1.Model.VerticalPodAutoscaling)
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.Cluster do
  def decode(value, options) do
    GoogleApi.Container.V1.Model.Cluster.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Container.V1.Model.Cluster do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
