# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Container.V1.Model.Cluster do
  @moduledoc """
  A Google Kubernetes Engine cluster.

  ## Attributes

  - addonsConfig (AddonsConfig): Configurations for the various addons available to run in the cluster. Defaults to: `null`.
  - clusterIpv4Cidr (String.t): The IP address range of the container pods in this cluster, in [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. &#x60;10.96.0.0/14&#x60;). Leave blank to have one automatically chosen or specify a &#x60;/14&#x60; block in &#x60;10.0.0.0/8&#x60;. Defaults to: `null`.
  - createTime (String.t): [Output only] The time the cluster was created, in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format. Defaults to: `null`.
  - currentMasterVersion (String.t): [Output only] The current software version of the master endpoint. Defaults to: `null`.
  - currentNodeCount (integer()): [Output only] The number of nodes currently in the cluster. Defaults to: `null`.
  - currentNodeVersion (String.t): [Output only] Deprecated, use [NodePool.version](/kubernetes-engine/docs/reference/rest/v1/projects.zones.clusters.nodePool) instead. The current version of the node software components. If they are currently at multiple versions because they&#39;re in the process of being upgraded, this reflects the minimum version of all nodes. Defaults to: `null`.
  - description (String.t): An optional description of this cluster. Defaults to: `null`.
  - enableKubernetesAlpha (boolean()): Kubernetes alpha features are enabled on this cluster. This includes alpha API groups (e.g. v1alpha1) and features that may not be production ready in the kubernetes version of the master and nodes. The cluster has no SLA for uptime and master/node upgrades are disabled. Alpha enabled clusters are automatically deleted thirty days after creation. Defaults to: `null`.
  - endpoint (String.t): [Output only] The IP address of this cluster&#39;s master endpoint. The endpoint can be accessed from the internet at &#x60;https://username:password@endpoint/&#x60;.  See the &#x60;masterAuth&#x60; property of this resource for username and password information. Defaults to: `null`.
  - expireTime (String.t): [Output only] The time the cluster will be automatically deleted in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format. Defaults to: `null`.
  - initialClusterVersion (String.t): The initial Kubernetes version for this cluster.  Valid versions are those found in validMasterVersions returned by getServerConfig.  The version can be upgraded over time; such upgrades are reflected in currentMasterVersion and currentNodeVersion.  Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior:  - \&quot;latest\&quot;: picks the highest valid Kubernetes version - \&quot;1.X\&quot;: picks the highest valid patch+gke.N patch in the 1.X version - \&quot;1.X.Y\&quot;: picks the highest valid gke.N patch in the 1.X.Y version - \&quot;1.X.Y-gke.N\&quot;: picks an explicit Kubernetes version - \&quot;\&quot;,\&quot;-\&quot;: picks the default Kubernetes version Defaults to: `null`.
  - initialNodeCount (integer()): The number of nodes to create in this cluster. You must ensure that your Compute Engine &lt;a href&#x3D;\&quot;/compute/docs/resource-quotas\&quot;&gt;resource quota&lt;/a&gt; is sufficient for this number of instances. You must also have available firewall and routes quota. For requests, this field should only be used in lieu of a \&quot;node_pool\&quot; object, since this configuration (along with the \&quot;node_config\&quot;) will be used to create a \&quot;NodePool\&quot; object with an auto-generated name. Do not use this and a node_pool at the same time. Defaults to: `null`.
  - instanceGroupUrls ([String.t]): Deprecated. Use node_pools.instance_group_urls. Defaults to: `null`.
  - ipAllocationPolicy (IpAllocationPolicy): Configuration for cluster IP allocation. Defaults to: `null`.
  - labelFingerprint (String.t): The fingerprint of the set of labels for this cluster. Defaults to: `null`.
  - legacyAbac (LegacyAbac): Configuration for the legacy ABAC authorization mode. Defaults to: `null`.
  - location (String.t): [Output only] The name of the Google Compute Engine [zone](/compute/docs/regions-zones/regions-zones#available) or [region](/compute/docs/regions-zones/regions-zones#available) in which the cluster resides. Defaults to: `null`.
  - locations ([String.t]): The list of Google Compute Engine [locations](/compute/docs/zones#available) in which the cluster&#39;s nodes should be located. Defaults to: `null`.
  - loggingService (String.t): The logging service the cluster should use to write logs. Currently available options:  * &#x60;logging.googleapis.com&#x60; - the Google Cloud Logging service. * &#x60;none&#x60; - no logs will be exported from the cluster. * if left as an empty string,&#x60;logging.googleapis.com&#x60; will be used. Defaults to: `null`.
  - maintenancePolicy (MaintenancePolicy): Configure the maintenance policy for this cluster. Defaults to: `null`.
  - masterAuth (MasterAuth): The authentication information for accessing the master endpoint. Defaults to: `null`.
  - masterAuthorizedNetworksConfig (MasterAuthorizedNetworksConfig): The configuration options for master authorized networks feature. Defaults to: `null`.
  - monitoringService (String.t): The monitoring service the cluster should use to write metrics. Currently available options:  * &#x60;monitoring.googleapis.com&#x60; - the Google Cloud Monitoring service. * &#x60;none&#x60; - no metrics will be exported from the cluster. * if left as an empty string, &#x60;monitoring.googleapis.com&#x60; will be used. Defaults to: `null`.
  - name (String.t): The name of this cluster. The name must be unique within this project and zone, and can be up to 40 characters with the following restrictions:  * Lowercase letters, numbers, and hyphens only. * Must start with a letter. * Must end with a number or a letter. Defaults to: `null`.
  - network (String.t): The name of the Google Compute Engine [network](/compute/docs/networks-and-firewalls#networks) to which the cluster is connected. If left unspecified, the &#x60;default&#x60; network will be used. Defaults to: `null`.
  - networkConfig (NetworkConfig): Configuration for cluster networking. Defaults to: `null`.
  - networkPolicy (NetworkPolicy): Configuration options for the NetworkPolicy feature. Defaults to: `null`.
  - nodeConfig (NodeConfig): Parameters used in creating the cluster&#39;s nodes. See &#x60;nodeConfig&#x60; for the description of its properties. For requests, this field should only be used in lieu of a \&quot;node_pool\&quot; object, since this configuration (along with the \&quot;initial_node_count\&quot;) will be used to create a \&quot;NodePool\&quot; object with an auto-generated name. Do not use this and a node_pool at the same time. For responses, this field will be populated with the node configuration of the first node pool.  If unspecified, the defaults are used. Defaults to: `null`.
  - nodeIpv4CidrSize (integer()): [Output only] The size of the address space on each node for hosting containers. This is provisioned from within the &#x60;container_ipv4_cidr&#x60; range. Defaults to: `null`.
  - nodePools ([NodePool]): The node pools associated with this cluster. This field should not be set if \&quot;node_config\&quot; or \&quot;initial_node_count\&quot; are specified. Defaults to: `null`.
  - privateClusterConfig (PrivateClusterConfig): Configuration for private cluster. Defaults to: `null`.
  - resourceLabels (%{optional(String.t) &#x3D;&gt; String.t}): The resource labels for the cluster to use to annotate any related Google Compute Engine resources. Defaults to: `null`.
  - selfLink (String.t): [Output only] Server-defined URL for the resource. Defaults to: `null`.
  - servicesIpv4Cidr (String.t): [Output only] The IP address range of the Kubernetes services in this cluster, in [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. &#x60;1.2.3.4/29&#x60;). Service addresses are typically put in the last &#x60;/16&#x60; from the container CIDR. Defaults to: `null`.
  - status (String.t): [Output only] The current status of this cluster. Defaults to: `null`.
    - Enum - one of [STATUS_UNSPECIFIED, PROVISIONING, RUNNING, RECONCILING, STOPPING, ERROR, DEGRADED]
  - statusMessage (String.t): [Output only] Additional information about the current status of this cluster, if available. Defaults to: `null`.
  - subnetwork (String.t): The name of the Google Compute Engine [subnetwork](/compute/docs/subnetworks) to which the cluster is connected. Defaults to: `null`.
  - zone (String.t): [Output only] The name of the Google Compute Engine [zone](/compute/docs/zones#available) in which the cluster resides. This field is deprecated, use location instead. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :addonsConfig => GoogleApi.Container.V1.Model.AddonsConfig.t(),
          :clusterIpv4Cidr => any(),
          :createTime => any(),
          :currentMasterVersion => any(),
          :currentNodeCount => any(),
          :currentNodeVersion => any(),
          :description => any(),
          :enableKubernetesAlpha => any(),
          :endpoint => any(),
          :expireTime => any(),
          :initialClusterVersion => any(),
          :initialNodeCount => any(),
          :instanceGroupUrls => list(any()),
          :ipAllocationPolicy => GoogleApi.Container.V1.Model.IpAllocationPolicy.t(),
          :labelFingerprint => any(),
          :legacyAbac => GoogleApi.Container.V1.Model.LegacyAbac.t(),
          :location => any(),
          :locations => list(any()),
          :loggingService => any(),
          :maintenancePolicy => GoogleApi.Container.V1.Model.MaintenancePolicy.t(),
          :masterAuth => GoogleApi.Container.V1.Model.MasterAuth.t(),
          :masterAuthorizedNetworksConfig =>
            GoogleApi.Container.V1.Model.MasterAuthorizedNetworksConfig.t(),
          :monitoringService => any(),
          :name => any(),
          :network => any(),
          :networkConfig => GoogleApi.Container.V1.Model.NetworkConfig.t(),
          :networkPolicy => GoogleApi.Container.V1.Model.NetworkPolicy.t(),
          :nodeConfig => GoogleApi.Container.V1.Model.NodeConfig.t(),
          :nodeIpv4CidrSize => any(),
          :nodePools => list(GoogleApi.Container.V1.Model.NodePool.t()),
          :privateClusterConfig => GoogleApi.Container.V1.Model.PrivateClusterConfig.t(),
          :resourceLabels => map(),
          :selfLink => any(),
          :servicesIpv4Cidr => any(),
          :status => any(),
          :statusMessage => any(),
          :subnetwork => any(),
          :zone => any()
        }

  field(:addonsConfig, as: GoogleApi.Container.V1.Model.AddonsConfig)
  field(:clusterIpv4Cidr)
  field(:createTime)
  field(:currentMasterVersion)
  field(:currentNodeCount)
  field(:currentNodeVersion)
  field(:description)
  field(:enableKubernetesAlpha)
  field(:endpoint)
  field(:expireTime)
  field(:initialClusterVersion)
  field(:initialNodeCount)
  field(:instanceGroupUrls, type: :list)
  field(:ipAllocationPolicy, as: GoogleApi.Container.V1.Model.IpAllocationPolicy)
  field(:labelFingerprint)
  field(:legacyAbac, as: GoogleApi.Container.V1.Model.LegacyAbac)
  field(:location)
  field(:locations, type: :list)
  field(:loggingService)
  field(:maintenancePolicy, as: GoogleApi.Container.V1.Model.MaintenancePolicy)
  field(:masterAuth, as: GoogleApi.Container.V1.Model.MasterAuth)

  field(:masterAuthorizedNetworksConfig,
    as: GoogleApi.Container.V1.Model.MasterAuthorizedNetworksConfig
  )

  field(:monitoringService)
  field(:name)
  field(:network)
  field(:networkConfig, as: GoogleApi.Container.V1.Model.NetworkConfig)
  field(:networkPolicy, as: GoogleApi.Container.V1.Model.NetworkPolicy)
  field(:nodeConfig, as: GoogleApi.Container.V1.Model.NodeConfig)
  field(:nodeIpv4CidrSize)
  field(:nodePools, as: GoogleApi.Container.V1.Model.NodePool, type: :list)
  field(:privateClusterConfig, as: GoogleApi.Container.V1.Model.PrivateClusterConfig)
  field(:resourceLabels, type: :map)
  field(:selfLink)
  field(:servicesIpv4Cidr)
  field(:status)
  field(:statusMessage)
  field(:subnetwork)
  field(:zone)
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
