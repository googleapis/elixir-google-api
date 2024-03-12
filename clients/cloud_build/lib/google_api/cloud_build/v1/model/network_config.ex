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

defmodule GoogleApi.CloudBuild.V1.Model.NetworkConfig do
  @moduledoc """
  Defines the network configuration for the pool.

  ## Attributes

  *   `egressOption` (*type:* `String.t`, *default:* `nil`) - Option to configure network egress for the workers.
  *   `peeredNetwork` (*type:* `String.t`, *default:* `nil`) - Required. Immutable. The network definition that the workers are peered to. If this section is left empty, the workers will be peered to `WorkerPool.project_id` on the service producer network. Must be in the format `projects/{project}/global/networks/{network}`, where `{project}` is a project number, such as `12345`, and `{network}` is the name of a VPC network in the project. See [Understanding network configuration options](https://cloud.google.com/build/docs/private-pools/set-up-private-pool-environment)
  *   `peeredNetworkIpRange` (*type:* `String.t`, *default:* `nil`) - Immutable. Subnet IP range within the peered network. This is specified in CIDR notation with a slash and the subnet prefix size. You can optionally specify an IP address before the subnet prefix value. e.g. `192.168.0.0/29` would specify an IP range starting at 192.168.0.0 with a prefix size of 29 bits. `/16` would specify a prefix size of 16 bits, with an automatically determined IP within the peered VPC. If unspecified, a value of `/24` will be used.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :egressOption => String.t() | nil,
          :peeredNetwork => String.t() | nil,
          :peeredNetworkIpRange => String.t() | nil
        }

  field(:egressOption)
  field(:peeredNetwork)
  field(:peeredNetworkIpRange)
end

defimpl Poison.Decoder, for: GoogleApi.CloudBuild.V1.Model.NetworkConfig do
  def decode(value, options) do
    GoogleApi.CloudBuild.V1.Model.NetworkConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudBuild.V1.Model.NetworkConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
