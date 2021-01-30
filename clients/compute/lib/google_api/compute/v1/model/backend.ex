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

defmodule GoogleApi.Compute.V1.Model.Backend do
  @moduledoc """
  Message containing information of one individual backend.

  ## Attributes

  *   `balancingMode` (*type:* `String.t`, *default:* `nil`) - Specifies how to determine whether the backend of a load balancer can handle additional traffic or is fully loaded. For usage guidelines, see  Connection balancing mode.
  *   `capacityScaler` (*type:* `number()`, *default:* `nil`) - A multiplier applied to the backend's target capacity of its balancing mode. The default value is 1, which means the group serves up to 100% of its configured capacity (depending on balancingMode). A setting of 0 means the group is completely drained, offering 0% of its available capacity. The valid ranges are 0.0 and [0.1,1.0]. You cannot configure a setting larger than 0 and smaller than 0.1. You cannot configure a setting of 0 when there is only one backend attached to the backend service.

      Not supported by:

      - Internal TCP/UDP Load Balancing - Network Load Balancing
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of this resource. Provide this property when you create the resource.
  *   `failover` (*type:* `boolean()`, *default:* `nil`) - This field designates whether this is a failover backend. More than one failover backend can be configured for a given BackendService.
  *   `group` (*type:* `String.t`, *default:* `nil`) - The fully-qualified URL of an instance group or network endpoint group (NEG) resource. The type of backend that a backend service supports depends on the backend service's loadBalancingScheme.

       
      - When the loadBalancingScheme for the backend service is EXTERNAL (except Network Load Balancing),  INTERNAL_SELF_MANAGED, or INTERNAL_MANAGED , the backend can be either an instance group or a NEG. The backends on the backend service must be either all instance groups or all NEGs. You cannot mix instance group and NEG backends on the same backend service. 


      - When the loadBalancingScheme for the backend service is EXTERNAL for Network Load Balancing or INTERNAL for Internal TCP/UDP Load Balancing, the backend must be an instance group. NEGs are not supported.  

      For regional services, the backend must be in the same region as the backend service.

      You must use the fully-qualified URL (starting with https://www.googleapis.com/) to specify the instance group or NEG. Partial URLs are not supported.
  *   `maxConnections` (*type:* `integer()`, *default:* `nil`) - Defines a target maximum number of simultaneous connections. For usage guidelines, see Connection balancing mode and Utilization balancing mode. Not available if the backend's balancingMode is RATE. Not supported by:

      - Internal TCP/UDP Load Balancing - Network Load Balancing
  *   `maxConnectionsPerEndpoint` (*type:* `integer()`, *default:* `nil`) - Defines a target maximum number of simultaneous connections. For usage guidelines, see Connection balancing mode and Utilization balancing mode.

      Not available if the backend's balancingMode is RATE. Not supported by:

      - Internal TCP/UDP Load Balancing - Network Load Balancing.
  *   `maxConnectionsPerInstance` (*type:* `integer()`, *default:* `nil`) - Defines a target maximum number of simultaneous connections. For usage guidelines, see Connection balancing mode and Utilization balancing mode.

      Not available if the backend's balancingMode is RATE. Not supported by:

      - Internal TCP/UDP Load Balancing - Network Load Balancing.
  *   `maxRate` (*type:* `integer()`, *default:* `nil`) - Defines a maximum number of HTTP requests per second (RPS). For usage guidelines, see Rate balancing mode and Utilization balancing mode.

      Not available if the backend's balancingMode is CONNECTION.
  *   `maxRatePerEndpoint` (*type:* `number()`, *default:* `nil`) - Defines a maximum target for requests per second (RPS). For usage guidelines, see Rate balancing mode and Utilization balancing mode.

      Not available if the backend's balancingMode is CONNECTION.
  *   `maxRatePerInstance` (*type:* `number()`, *default:* `nil`) - Defines a maximum target for requests per second (RPS). For usage guidelines, see Rate balancing mode and Utilization balancing mode.

      Not available if the backend's balancingMode is CONNECTION.
  *   `maxUtilization` (*type:* `number()`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :balancingMode => String.t(),
          :capacityScaler => number(),
          :description => String.t(),
          :failover => boolean(),
          :group => String.t(),
          :maxConnections => integer(),
          :maxConnectionsPerEndpoint => integer(),
          :maxConnectionsPerInstance => integer(),
          :maxRate => integer(),
          :maxRatePerEndpoint => number(),
          :maxRatePerInstance => number(),
          :maxUtilization => number()
        }

  field(:balancingMode)
  field(:capacityScaler)
  field(:description)
  field(:failover)
  field(:group)
  field(:maxConnections)
  field(:maxConnectionsPerEndpoint)
  field(:maxConnectionsPerInstance)
  field(:maxRate)
  field(:maxRatePerEndpoint)
  field(:maxRatePerInstance)
  field(:maxUtilization)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.Backend do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.Backend.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.Backend do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
