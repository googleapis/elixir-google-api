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

defmodule GoogleApi.NetworkManagement.V1.Model.Step do
  @moduledoc """
  A simulated forwarding path is composed of multiple steps. Each step has a well-defined state and an associated configuration.

  ## Attributes

  *   `abort` (*type:* `GoogleApi.NetworkManagement.V1.Model.AbortInfo.t`, *default:* `nil`) - Display information of the final state "abort" and reason.
  *   `appEngineVersion` (*type:* `GoogleApi.NetworkManagement.V1.Model.AppEngineVersionInfo.t`, *default:* `nil`) - Display information of an App Engine service version.
  *   `causesDrop` (*type:* `boolean()`, *default:* `nil`) - This is a step that leads to the final state Drop.
  *   `cloudFunction` (*type:* `GoogleApi.NetworkManagement.V1.Model.CloudFunctionInfo.t`, *default:* `nil`) - Display information of a Cloud Function.
  *   `cloudRunRevision` (*type:* `GoogleApi.NetworkManagement.V1.Model.CloudRunRevisionInfo.t`, *default:* `nil`) - Display information of a Cloud Run revision.
  *   `cloudSqlInstance` (*type:* `GoogleApi.NetworkManagement.V1.Model.CloudSQLInstanceInfo.t`, *default:* `nil`) - Display information of a Cloud SQL instance.
  *   `deliver` (*type:* `GoogleApi.NetworkManagement.V1.Model.DeliverInfo.t`, *default:* `nil`) - Display information of the final state "deliver" and reason.
  *   `description` (*type:* `String.t`, *default:* `nil`) - A description of the step. Usually this is a summary of the state.
  *   `drop` (*type:* `GoogleApi.NetworkManagement.V1.Model.DropInfo.t`, *default:* `nil`) - Display information of the final state "drop" and reason.
  *   `endpoint` (*type:* `GoogleApi.NetworkManagement.V1.Model.EndpointInfo.t`, *default:* `nil`) - Display information of the source and destination under analysis. The endpoint information in an intermediate state may differ with the initial input, as it might be modified by state like NAT, or Connection Proxy.
  *   `firewall` (*type:* `GoogleApi.NetworkManagement.V1.Model.FirewallInfo.t`, *default:* `nil`) - Display information of a Compute Engine firewall rule.
  *   `forward` (*type:* `GoogleApi.NetworkManagement.V1.Model.ForwardInfo.t`, *default:* `nil`) - Display information of the final state "forward" and reason.
  *   `forwardingRule` (*type:* `GoogleApi.NetworkManagement.V1.Model.ForwardingRuleInfo.t`, *default:* `nil`) - Display information of a Compute Engine forwarding rule.
  *   `gkeMaster` (*type:* `GoogleApi.NetworkManagement.V1.Model.GKEMasterInfo.t`, *default:* `nil`) - Display information of a Google Kubernetes Engine cluster master.
  *   `googleService` (*type:* `GoogleApi.NetworkManagement.V1.Model.GoogleServiceInfo.t`, *default:* `nil`) - Display information of a Google service
  *   `instance` (*type:* `GoogleApi.NetworkManagement.V1.Model.InstanceInfo.t`, *default:* `nil`) - Display information of a Compute Engine instance.
  *   `loadBalancer` (*type:* `GoogleApi.NetworkManagement.V1.Model.LoadBalancerInfo.t`, *default:* `nil`) - Display information of the load balancers. Deprecated in favor of the `load_balancer_backend_info` field, not used in new tests.
  *   `loadBalancerBackendInfo` (*type:* `GoogleApi.NetworkManagement.V1.Model.LoadBalancerBackendInfo.t`, *default:* `nil`) - Display information of a specific load balancer backend.
  *   `nat` (*type:* `GoogleApi.NetworkManagement.V1.Model.NatInfo.t`, *default:* `nil`) - Display information of a NAT.
  *   `network` (*type:* `GoogleApi.NetworkManagement.V1.Model.NetworkInfo.t`, *default:* `nil`) - Display information of a Google Cloud network.
  *   `projectId` (*type:* `String.t`, *default:* `nil`) - Project ID that contains the configuration this step is validating.
  *   `proxyConnection` (*type:* `GoogleApi.NetworkManagement.V1.Model.ProxyConnectionInfo.t`, *default:* `nil`) - Display information of a ProxyConnection.
  *   `redisCluster` (*type:* `GoogleApi.NetworkManagement.V1.Model.RedisClusterInfo.t`, *default:* `nil`) - Display information of a Redis Cluster.
  *   `redisInstance` (*type:* `GoogleApi.NetworkManagement.V1.Model.RedisInstanceInfo.t`, *default:* `nil`) - Display information of a Redis Instance.
  *   `route` (*type:* `GoogleApi.NetworkManagement.V1.Model.RouteInfo.t`, *default:* `nil`) - Display information of a Compute Engine route.
  *   `serverlessNeg` (*type:* `GoogleApi.NetworkManagement.V1.Model.ServerlessNegInfo.t`, *default:* `nil`) - Display information of a Serverless network endpoint group backend. Used only for return traces.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Each step is in one of the pre-defined states.
  *   `storageBucket` (*type:* `GoogleApi.NetworkManagement.V1.Model.StorageBucketInfo.t`, *default:* `nil`) - Display information of a Storage Bucket. Used only for return traces.
  *   `vpcConnector` (*type:* `GoogleApi.NetworkManagement.V1.Model.VpcConnectorInfo.t`, *default:* `nil`) - Display information of a VPC connector.
  *   `vpnGateway` (*type:* `GoogleApi.NetworkManagement.V1.Model.VpnGatewayInfo.t`, *default:* `nil`) - Display information of a Compute Engine VPN gateway.
  *   `vpnTunnel` (*type:* `GoogleApi.NetworkManagement.V1.Model.VpnTunnelInfo.t`, *default:* `nil`) - Display information of a Compute Engine VPN tunnel.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :abort => GoogleApi.NetworkManagement.V1.Model.AbortInfo.t() | nil,
          :appEngineVersion =>
            GoogleApi.NetworkManagement.V1.Model.AppEngineVersionInfo.t() | nil,
          :causesDrop => boolean() | nil,
          :cloudFunction => GoogleApi.NetworkManagement.V1.Model.CloudFunctionInfo.t() | nil,
          :cloudRunRevision =>
            GoogleApi.NetworkManagement.V1.Model.CloudRunRevisionInfo.t() | nil,
          :cloudSqlInstance =>
            GoogleApi.NetworkManagement.V1.Model.CloudSQLInstanceInfo.t() | nil,
          :deliver => GoogleApi.NetworkManagement.V1.Model.DeliverInfo.t() | nil,
          :description => String.t() | nil,
          :drop => GoogleApi.NetworkManagement.V1.Model.DropInfo.t() | nil,
          :endpoint => GoogleApi.NetworkManagement.V1.Model.EndpointInfo.t() | nil,
          :firewall => GoogleApi.NetworkManagement.V1.Model.FirewallInfo.t() | nil,
          :forward => GoogleApi.NetworkManagement.V1.Model.ForwardInfo.t() | nil,
          :forwardingRule => GoogleApi.NetworkManagement.V1.Model.ForwardingRuleInfo.t() | nil,
          :gkeMaster => GoogleApi.NetworkManagement.V1.Model.GKEMasterInfo.t() | nil,
          :googleService => GoogleApi.NetworkManagement.V1.Model.GoogleServiceInfo.t() | nil,
          :instance => GoogleApi.NetworkManagement.V1.Model.InstanceInfo.t() | nil,
          :loadBalancer => GoogleApi.NetworkManagement.V1.Model.LoadBalancerInfo.t() | nil,
          :loadBalancerBackendInfo =>
            GoogleApi.NetworkManagement.V1.Model.LoadBalancerBackendInfo.t() | nil,
          :nat => GoogleApi.NetworkManagement.V1.Model.NatInfo.t() | nil,
          :network => GoogleApi.NetworkManagement.V1.Model.NetworkInfo.t() | nil,
          :projectId => String.t() | nil,
          :proxyConnection => GoogleApi.NetworkManagement.V1.Model.ProxyConnectionInfo.t() | nil,
          :redisCluster => GoogleApi.NetworkManagement.V1.Model.RedisClusterInfo.t() | nil,
          :redisInstance => GoogleApi.NetworkManagement.V1.Model.RedisInstanceInfo.t() | nil,
          :route => GoogleApi.NetworkManagement.V1.Model.RouteInfo.t() | nil,
          :serverlessNeg => GoogleApi.NetworkManagement.V1.Model.ServerlessNegInfo.t() | nil,
          :state => String.t() | nil,
          :storageBucket => GoogleApi.NetworkManagement.V1.Model.StorageBucketInfo.t() | nil,
          :vpcConnector => GoogleApi.NetworkManagement.V1.Model.VpcConnectorInfo.t() | nil,
          :vpnGateway => GoogleApi.NetworkManagement.V1.Model.VpnGatewayInfo.t() | nil,
          :vpnTunnel => GoogleApi.NetworkManagement.V1.Model.VpnTunnelInfo.t() | nil
        }

  field(:abort, as: GoogleApi.NetworkManagement.V1.Model.AbortInfo)
  field(:appEngineVersion, as: GoogleApi.NetworkManagement.V1.Model.AppEngineVersionInfo)
  field(:causesDrop)
  field(:cloudFunction, as: GoogleApi.NetworkManagement.V1.Model.CloudFunctionInfo)
  field(:cloudRunRevision, as: GoogleApi.NetworkManagement.V1.Model.CloudRunRevisionInfo)
  field(:cloudSqlInstance, as: GoogleApi.NetworkManagement.V1.Model.CloudSQLInstanceInfo)
  field(:deliver, as: GoogleApi.NetworkManagement.V1.Model.DeliverInfo)
  field(:description)
  field(:drop, as: GoogleApi.NetworkManagement.V1.Model.DropInfo)
  field(:endpoint, as: GoogleApi.NetworkManagement.V1.Model.EndpointInfo)
  field(:firewall, as: GoogleApi.NetworkManagement.V1.Model.FirewallInfo)
  field(:forward, as: GoogleApi.NetworkManagement.V1.Model.ForwardInfo)
  field(:forwardingRule, as: GoogleApi.NetworkManagement.V1.Model.ForwardingRuleInfo)
  field(:gkeMaster, as: GoogleApi.NetworkManagement.V1.Model.GKEMasterInfo)
  field(:googleService, as: GoogleApi.NetworkManagement.V1.Model.GoogleServiceInfo)
  field(:instance, as: GoogleApi.NetworkManagement.V1.Model.InstanceInfo)
  field(:loadBalancer, as: GoogleApi.NetworkManagement.V1.Model.LoadBalancerInfo)

  field(:loadBalancerBackendInfo, as: GoogleApi.NetworkManagement.V1.Model.LoadBalancerBackendInfo)

  field(:nat, as: GoogleApi.NetworkManagement.V1.Model.NatInfo)
  field(:network, as: GoogleApi.NetworkManagement.V1.Model.NetworkInfo)
  field(:projectId)
  field(:proxyConnection, as: GoogleApi.NetworkManagement.V1.Model.ProxyConnectionInfo)
  field(:redisCluster, as: GoogleApi.NetworkManagement.V1.Model.RedisClusterInfo)
  field(:redisInstance, as: GoogleApi.NetworkManagement.V1.Model.RedisInstanceInfo)
  field(:route, as: GoogleApi.NetworkManagement.V1.Model.RouteInfo)
  field(:serverlessNeg, as: GoogleApi.NetworkManagement.V1.Model.ServerlessNegInfo)
  field(:state)
  field(:storageBucket, as: GoogleApi.NetworkManagement.V1.Model.StorageBucketInfo)
  field(:vpcConnector, as: GoogleApi.NetworkManagement.V1.Model.VpcConnectorInfo)
  field(:vpnGateway, as: GoogleApi.NetworkManagement.V1.Model.VpnGatewayInfo)
  field(:vpnTunnel, as: GoogleApi.NetworkManagement.V1.Model.VpnTunnelInfo)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkManagement.V1.Model.Step do
  def decode(value, options) do
    GoogleApi.NetworkManagement.V1.Model.Step.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkManagement.V1.Model.Step do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
