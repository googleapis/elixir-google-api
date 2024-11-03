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

defmodule GoogleApi.AlloyDB.V1.Model.Instance do
  @moduledoc """
  An Instance is a computing unit that an end customer can connect to. It's the main unit of computing resources in AlloyDB.

  ## Attributes

  *   `annotations` (*type:* `map()`, *default:* `nil`) - Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
  *   `availabilityType` (*type:* `String.t`, *default:* `nil`) - Availability type of an Instance. If empty, defaults to REGIONAL for primary instances. For read pools, availability_type is always UNSPECIFIED. Instances in the read pools are evenly distributed across available zones within the region (i.e. read pools with more than one node will have a node in at least two zones).
  *   `clientConnectionConfig` (*type:* `GoogleApi.AlloyDB.V1.Model.ClientConnectionConfig.t`, *default:* `nil`) - Optional. Client connection specific configurations
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Create time stamp
  *   `databaseFlags` (*type:* `map()`, *default:* `nil`) - Database flags. Set at the instance level. They are copied from the primary instance on secondary instance creation. Flags that have restrictions default to the value at primary instance on read instances during creation. Read instances can set new flags or override existing flags that are relevant for reads, for example, for enabling columnar cache on a read instance. Flags set on read instance might or might not be present on the primary instance. This is a list of "key": "value" pairs. "key": The name of the flag. These flags are passed at instance setup time, so include both server options and system variables for Postgres. Flags are specified with underscores, not hyphens. "value": The value of the flag. Booleans are set to **on** for true and **off** for false. This field must be omitted if the flag doesn't take a value.
  *   `deleteTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Delete time stamp
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - User-settable and human-readable display name for the Instance.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - For Resource freshness validation (https://google.aip.dev/154)
  *   `gceZone` (*type:* `String.t`, *default:* `nil`) - The Compute Engine zone that the instance should serve from, per https://cloud.google.com/compute/docs/regions-zones This can ONLY be specified for ZONAL instances. If present for a REGIONAL instance, an error will be thrown. If this is absent for a ZONAL instance, instance is created in a random zone with available capacity.
  *   `instanceType` (*type:* `String.t`, *default:* `nil`) - Required. The type of the instance. Specified at creation time.
  *   `ipAddress` (*type:* `String.t`, *default:* `nil`) - Output only. The IP address for the Instance. This is the connection endpoint for an end-user application.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Labels as key value pairs
  *   `machineConfig` (*type:* `GoogleApi.AlloyDB.V1.Model.MachineConfig.t`, *default:* `nil`) - Configurations for the machines that host the underlying database engine.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The name of the instance resource with the format: * projects/{project}/locations/{region}/clusters/{cluster_id}/instances/{instance_id} where the cluster and instance ID segments should satisfy the regex expression `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`, e.g. 1-63 characters of lowercase letters, numbers, and dashes, starting with a letter, and ending with a letter or number. For more details see https://google.aip.dev/122. The prefix of the instance resource name is the name of the parent resource: * projects/{project}/locations/{region}/clusters/{cluster_id}
  *   `networkConfig` (*type:* `GoogleApi.AlloyDB.V1.Model.InstanceNetworkConfig.t`, *default:* `nil`) - Optional. Instance-level network configuration.
  *   `nodes` (*type:* `list(GoogleApi.AlloyDB.V1.Model.Node.t)`, *default:* `nil`) - Output only. List of available read-only VMs in this instance, including the standby for a PRIMARY instance.
  *   `outboundPublicIpAddresses` (*type:* `list(String.t)`, *default:* `nil`) - Output only. All outbound public IP addresses configured for the instance.
  *   `pscInstanceConfig` (*type:* `GoogleApi.AlloyDB.V1.Model.PscInstanceConfig.t`, *default:* `nil`) - Optional. The configuration for Private Service Connect (PSC) for the instance.
  *   `publicIpAddress` (*type:* `String.t`, *default:* `nil`) - Output only. The public IP addresses for the Instance. This is available ONLY when enable_public_ip is set. This is the connection endpoint for an end-user application.
  *   `queryInsightsConfig` (*type:* `GoogleApi.AlloyDB.V1.Model.QueryInsightsInstanceConfig.t`, *default:* `nil`) - Configuration for query insights.
  *   `readPoolConfig` (*type:* `GoogleApi.AlloyDB.V1.Model.ReadPoolConfig.t`, *default:* `nil`) - Read pool instance configuration. This is required if the value of instanceType is READ_POOL.
  *   `reconciling` (*type:* `boolean()`, *default:* `nil`) - Output only. Reconciling (https://google.aip.dev/128#reconciliation). Set to true if the current state of Instance does not match the user's intended state, and the service is actively updating the resource to reconcile them. This can happen due to user-triggered updates or system actions like failover or maintenance.
  *   `satisfiesPzs` (*type:* `boolean()`, *default:* `nil`) - Output only. Reserved for future use.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The current serving state of the instance.
  *   `uid` (*type:* `String.t`, *default:* `nil`) - Output only. The system-generated UID of the resource. The UID is assigned when the resource is created, and it is retained until it is deleted.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Update time stamp
  *   `writableNode` (*type:* `GoogleApi.AlloyDB.V1.Model.Node.t`, *default:* `nil`) - Output only. This is set for the read-write VM of the PRIMARY instance only.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :annotations => map() | nil,
          :availabilityType => String.t() | nil,
          :clientConnectionConfig => GoogleApi.AlloyDB.V1.Model.ClientConnectionConfig.t() | nil,
          :createTime => DateTime.t() | nil,
          :databaseFlags => map() | nil,
          :deleteTime => DateTime.t() | nil,
          :displayName => String.t() | nil,
          :etag => String.t() | nil,
          :gceZone => String.t() | nil,
          :instanceType => String.t() | nil,
          :ipAddress => String.t() | nil,
          :labels => map() | nil,
          :machineConfig => GoogleApi.AlloyDB.V1.Model.MachineConfig.t() | nil,
          :name => String.t() | nil,
          :networkConfig => GoogleApi.AlloyDB.V1.Model.InstanceNetworkConfig.t() | nil,
          :nodes => list(GoogleApi.AlloyDB.V1.Model.Node.t()) | nil,
          :outboundPublicIpAddresses => list(String.t()) | nil,
          :pscInstanceConfig => GoogleApi.AlloyDB.V1.Model.PscInstanceConfig.t() | nil,
          :publicIpAddress => String.t() | nil,
          :queryInsightsConfig =>
            GoogleApi.AlloyDB.V1.Model.QueryInsightsInstanceConfig.t() | nil,
          :readPoolConfig => GoogleApi.AlloyDB.V1.Model.ReadPoolConfig.t() | nil,
          :reconciling => boolean() | nil,
          :satisfiesPzs => boolean() | nil,
          :state => String.t() | nil,
          :uid => String.t() | nil,
          :updateTime => DateTime.t() | nil,
          :writableNode => GoogleApi.AlloyDB.V1.Model.Node.t() | nil
        }

  field(:annotations, type: :map)
  field(:availabilityType)
  field(:clientConnectionConfig, as: GoogleApi.AlloyDB.V1.Model.ClientConnectionConfig)
  field(:createTime, as: DateTime)
  field(:databaseFlags, type: :map)
  field(:deleteTime, as: DateTime)
  field(:displayName)
  field(:etag)
  field(:gceZone)
  field(:instanceType)
  field(:ipAddress)
  field(:labels, type: :map)
  field(:machineConfig, as: GoogleApi.AlloyDB.V1.Model.MachineConfig)
  field(:name)
  field(:networkConfig, as: GoogleApi.AlloyDB.V1.Model.InstanceNetworkConfig)
  field(:nodes, as: GoogleApi.AlloyDB.V1.Model.Node, type: :list)
  field(:outboundPublicIpAddresses, type: :list)
  field(:pscInstanceConfig, as: GoogleApi.AlloyDB.V1.Model.PscInstanceConfig)
  field(:publicIpAddress)
  field(:queryInsightsConfig, as: GoogleApi.AlloyDB.V1.Model.QueryInsightsInstanceConfig)
  field(:readPoolConfig, as: GoogleApi.AlloyDB.V1.Model.ReadPoolConfig)
  field(:reconciling)
  field(:satisfiesPzs)
  field(:state)
  field(:uid)
  field(:updateTime, as: DateTime)
  field(:writableNode, as: GoogleApi.AlloyDB.V1.Model.Node)
end

defimpl Poison.Decoder, for: GoogleApi.AlloyDB.V1.Model.Instance do
  def decode(value, options) do
    GoogleApi.AlloyDB.V1.Model.Instance.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AlloyDB.V1.Model.Instance do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
