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

defmodule GoogleApi.NetworkManagement.V1.Model.Endpoint do
  @moduledoc """
  Source or destination of the Connectivity Test.

  ## Attributes

  *   `appEngineVersion` (*type:* `GoogleApi.NetworkManagement.V1.Model.AppEngineVersionEndpoint.t`, *default:* `nil`) - An [App Engine](https://cloud.google.com/appengine) [service version](https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions).
  *   `cloudFunction` (*type:* `GoogleApi.NetworkManagement.V1.Model.CloudFunctionEndpoint.t`, *default:* `nil`) - A [Cloud Function](https://cloud.google.com/functions).
  *   `cloudRunRevision` (*type:* `GoogleApi.NetworkManagement.V1.Model.CloudRunRevisionEndpoint.t`, *default:* `nil`) - A [Cloud Run](https://cloud.google.com/run) [revision](https://cloud.google.com/run/docs/reference/rest/v1/namespaces.revisions/get)
  *   `cloudSqlInstance` (*type:* `String.t`, *default:* `nil`) - A [Cloud SQL](https://cloud.google.com/sql) instance URI.
  *   `forwardingRule` (*type:* `String.t`, *default:* `nil`) - A forwarding rule and its corresponding IP address represent the frontend configuration of a Google Cloud load balancer. Forwarding rules are also used for protocol forwarding, Private Service Connect and other network services to provide forwarding information in the control plane. Format: projects/{project}/global/forwardingRules/{id} or projects/{project}/regions/{region}/forwardingRules/{id}
  *   `forwardingRuleTarget` (*type:* `String.t`, *default:* `nil`) - Output only. Specifies the type of the target of the forwarding rule.
  *   `fqdn` (*type:* `String.t`, *default:* `nil`) - DNS endpoint of [Google Kubernetes Engine cluster control plane](https://cloud.google.com/kubernetes-engine/docs/concepts/cluster-architecture). Requires gke_master_cluster to be set, can't be used simultaneoulsly with ip_address or network. Applicable only to destination endpoint.
  *   `gkeMasterCluster` (*type:* `String.t`, *default:* `nil`) - A cluster URI for [Google Kubernetes Engine cluster control plane](https://cloud.google.com/kubernetes-engine/docs/concepts/cluster-architecture).
  *   `instance` (*type:* `String.t`, *default:* `nil`) - A Compute Engine instance URI.
  *   `ipAddress` (*type:* `String.t`, *default:* `nil`) - The IP address of the endpoint, which can be an external or internal IP.
  *   `loadBalancerId` (*type:* `String.t`, *default:* `nil`) - Output only. ID of the load balancer the forwarding rule points to. Empty for forwarding rules not related to load balancers.
  *   `loadBalancerType` (*type:* `String.t`, *default:* `nil`) - Output only. Type of the load balancer the forwarding rule points to.
  *   `network` (*type:* `String.t`, *default:* `nil`) - A Compute Engine network URI.
  *   `networkType` (*type:* `String.t`, *default:* `nil`) - Type of the network where the endpoint is located. Applicable only to source endpoint, as destination network type can be inferred from the source.
  *   `port` (*type:* `integer()`, *default:* `nil`) - The IP protocol port of the endpoint. Only applicable when protocol is TCP or UDP.
  *   `projectId` (*type:* `String.t`, *default:* `nil`) - Project ID where the endpoint is located. The Project ID can be derived from the URI if you provide a VM instance or network URI. The following are two cases where you must provide the project ID: 1. Only the IP address is specified, and the IP address is within a Google Cloud project. 2. When you are using Shared VPC and the IP address that you provide is from the service project. In this case, the network that the IP address resides in is defined in the host project.
  *   `redisCluster` (*type:* `String.t`, *default:* `nil`) - A [Redis Cluster](https://cloud.google.com/memorystore/docs/cluster) URI.
  *   `redisInstance` (*type:* `String.t`, *default:* `nil`) - A [Redis Instance](https://cloud.google.com/memorystore/docs/redis) URI.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :appEngineVersion =>
            GoogleApi.NetworkManagement.V1.Model.AppEngineVersionEndpoint.t() | nil,
          :cloudFunction => GoogleApi.NetworkManagement.V1.Model.CloudFunctionEndpoint.t() | nil,
          :cloudRunRevision =>
            GoogleApi.NetworkManagement.V1.Model.CloudRunRevisionEndpoint.t() | nil,
          :cloudSqlInstance => String.t() | nil,
          :forwardingRule => String.t() | nil,
          :forwardingRuleTarget => String.t() | nil,
          :fqdn => String.t() | nil,
          :gkeMasterCluster => String.t() | nil,
          :instance => String.t() | nil,
          :ipAddress => String.t() | nil,
          :loadBalancerId => String.t() | nil,
          :loadBalancerType => String.t() | nil,
          :network => String.t() | nil,
          :networkType => String.t() | nil,
          :port => integer() | nil,
          :projectId => String.t() | nil,
          :redisCluster => String.t() | nil,
          :redisInstance => String.t() | nil
        }

  field(:appEngineVersion, as: GoogleApi.NetworkManagement.V1.Model.AppEngineVersionEndpoint)
  field(:cloudFunction, as: GoogleApi.NetworkManagement.V1.Model.CloudFunctionEndpoint)
  field(:cloudRunRevision, as: GoogleApi.NetworkManagement.V1.Model.CloudRunRevisionEndpoint)
  field(:cloudSqlInstance)
  field(:forwardingRule)
  field(:forwardingRuleTarget)
  field(:fqdn)
  field(:gkeMasterCluster)
  field(:instance)
  field(:ipAddress)
  field(:loadBalancerId)
  field(:loadBalancerType)
  field(:network)
  field(:networkType)
  field(:port)
  field(:projectId)
  field(:redisCluster)
  field(:redisInstance)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkManagement.V1.Model.Endpoint do
  def decode(value, options) do
    GoogleApi.NetworkManagement.V1.Model.Endpoint.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkManagement.V1.Model.Endpoint do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
