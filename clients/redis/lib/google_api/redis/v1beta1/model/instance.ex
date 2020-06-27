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

defmodule GoogleApi.Redis.V1beta1.Model.Instance do
  @moduledoc """
  A Google Cloud Redis instance.

  ## Attributes

  *   `alternativeLocationId` (*type:* `String.t`, *default:* `nil`) - Optional. Only applicable to STANDARD_HA tier which protects the instance
      against zonal failures by provisioning it across two zones. If provided, it
      must be a different zone from the one provided in location_id.
  *   `authorizedNetwork` (*type:* `String.t`, *default:* `nil`) - Optional. The full name of the Google Compute Engine
      [network](https://cloud.google.com/vpc/docs/vpc) to which the
      instance is connected. If left unspecified, the `default` network
      will be used.
  *   `connectMode` (*type:* `String.t`, *default:* `nil`) - Optional. The network connect mode of the Redis instance.
      If not provided, the connect mode defaults to DIRECT_PEERING.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time the instance was created.
  *   `currentLocationId` (*type:* `String.t`, *default:* `nil`) - Output only. The current zone where the Redis endpoint is placed. For Basic
      Tier instances, this will always be the same as the location_id
      provided by the user at creation time. For Standard Tier instances,
      this can be either location_id or alternative_location_id and can
      change after a failover event.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - An arbitrary and optional user-provided name for the instance.
  *   `host` (*type:* `String.t`, *default:* `nil`) - Output only. Hostname or IP address of the exposed Redis endpoint used by
      clients to connect to the service.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Resource labels to represent user provided metadata
  *   `locationId` (*type:* `String.t`, *default:* `nil`) - Optional. The zone where the instance will be provisioned. If not provided,
      the service will choose a zone for the instance. For STANDARD_HA tier,
      instances will be created across two zones for protection against zonal
      failures. If alternative_location_id is also provided, it must be
      different from location_id.
  *   `memorySizeGb` (*type:* `integer()`, *default:* `nil`) - Required. Redis memory size in GiB.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. Unique name of the resource in this scope including project and
      location using the form:
          `projects/{project_id}/locations/{location_id}/instances/{instance_id}`

      Note: Redis instances are managed and addressed at regional level so
      location_id here refers to a GCP region; however, users may choose which
      specific zone (or collection of zones for cross-zone instances) an instance
      should be provisioned in. Refer to location_id and
      alternative_location_id fields for more details.
  *   `persistenceIamIdentity` (*type:* `String.t`, *default:* `nil`) - Output only. Cloud IAM identity used by import / export operations to
      transfer data to/from Cloud Storage. Format is
      "serviceAccount:<service_account_email>". The value may change over time
      for a given instance so should be checked before each import/export
      operation.
  *   `port` (*type:* `integer()`, *default:* `nil`) - Output only. The port number of the exposed Redis endpoint.
  *   `redisConfigs` (*type:* `map()`, *default:* `nil`) - Optional. Redis configuration parameters, according to
      http://redis.io/topics/config. Currently, the only supported parameters
      are:

       Redis version 3.2 and newer:

       *   maxmemory-policy
       *   notify-keyspace-events

       Redis version 4.0 and newer:

       *   activedefrag
       *   lfu-decay-time
       *   lfu-log-factor
       *   maxmemory-gb

       Redis version 5.0 and newer:

       *   stream-node-max-bytes
       *   stream-node-max-entries
  *   `redisVersion` (*type:* `String.t`, *default:* `nil`) - Optional. The version of Redis software.
      If not provided, latest supported version will be used. Currently, the
      supported values are:

       *   `REDIS_3_2` for Redis 3.2 compatibility
       *   `REDIS_4_0` for Redis 4.0 compatibility (default)
       *   `REDIS_5_0` for Redis 5.0 compatibility
  *   `reservedIpRange` (*type:* `String.t`, *default:* `nil`) - Optional. The CIDR range of internal addresses that are reserved for this
      instance. If not provided, the service will choose an unused /29 block,
      for example, 10.0.0.0/29 or 192.168.0.0/29. Ranges must be unique
      and non-overlapping with existing subnets in an authorized network.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The current state of this instance.
  *   `statusMessage` (*type:* `String.t`, *default:* `nil`) - Output only. Additional information about the current status of this
      instance, if available.
  *   `tier` (*type:* `String.t`, *default:* `nil`) - Required. The service tier of the instance.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :alternativeLocationId => String.t(),
          :authorizedNetwork => String.t(),
          :connectMode => String.t(),
          :createTime => DateTime.t(),
          :currentLocationId => String.t(),
          :displayName => String.t(),
          :host => String.t(),
          :labels => map(),
          :locationId => String.t(),
          :memorySizeGb => integer(),
          :name => String.t(),
          :persistenceIamIdentity => String.t(),
          :port => integer(),
          :redisConfigs => map(),
          :redisVersion => String.t(),
          :reservedIpRange => String.t(),
          :state => String.t(),
          :statusMessage => String.t(),
          :tier => String.t()
        }

  field(:alternativeLocationId)
  field(:authorizedNetwork)
  field(:connectMode)
  field(:createTime, as: DateTime)
  field(:currentLocationId)
  field(:displayName)
  field(:host)
  field(:labels, type: :map)
  field(:locationId)
  field(:memorySizeGb)
  field(:name)
  field(:persistenceIamIdentity)
  field(:port)
  field(:redisConfigs, type: :map)
  field(:redisVersion)
  field(:reservedIpRange)
  field(:state)
  field(:statusMessage)
  field(:tier)
end

defimpl Poison.Decoder, for: GoogleApi.Redis.V1beta1.Model.Instance do
  def decode(value, options) do
    GoogleApi.Redis.V1beta1.Model.Instance.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Redis.V1beta1.Model.Instance do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
