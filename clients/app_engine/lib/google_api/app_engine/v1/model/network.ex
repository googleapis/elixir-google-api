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

defmodule GoogleApi.AppEngine.V1.Model.Network do
  @moduledoc """
  Extra network settings. Only applicable in the App Engine flexible environment.

  ## Attributes

  *   `forwardedPorts` (*type:* `list(String.t)`, *default:* `nil`) - List of ports, or port pairs, to forward from the virtual machine to the application container. Only applicable in the App Engine flexible environment.
  *   `instanceIpMode` (*type:* `String.t`, *default:* `nil`) - The IP mode for instances. Only applicable in the App Engine flexible environment.
  *   `instanceTag` (*type:* `String.t`, *default:* `nil`) - Tag to apply to the instance during creation. Only applicable in the App Engine flexible environment.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Google Compute Engine network where the virtual machines are created. Specify the short name, not the resource path.Defaults to default.
  *   `sessionAffinity` (*type:* `boolean()`, *default:* `nil`) - Enable session affinity. Only applicable in the App Engine flexible environment.
  *   `subnetworkName` (*type:* `String.t`, *default:* `nil`) - Google Cloud Platform sub-network where the virtual machines are created. Specify the short name, not the resource path.If a subnetwork name is specified, a network name will also be required unless it is for the default network. If the network that the instance is being created in is a Legacy network, then the IP address is allocated from the IPv4Range. If the network that the instance is being created in is an auto Subnet Mode Network, then only network name should be specified (not the subnetwork_name) and the IP address is created from the IPCidrRange of the subnetwork that exists in that zone for that network. If the network that the instance is being created in is a custom Subnet Mode Network, then the subnetwork_name must be specified and the IP address is created from the IPCidrRange of the subnetwork.If specified, the subnetwork must exist in the same region as the App Engine flexible environment application.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :forwardedPorts => list(String.t()) | nil,
          :instanceIpMode => String.t() | nil,
          :instanceTag => String.t() | nil,
          :name => String.t() | nil,
          :sessionAffinity => boolean() | nil,
          :subnetworkName => String.t() | nil
        }

  field(:forwardedPorts, type: :list)
  field(:instanceIpMode)
  field(:instanceTag)
  field(:name)
  field(:sessionAffinity)
  field(:subnetworkName)
end

defimpl Poison.Decoder, for: GoogleApi.AppEngine.V1.Model.Network do
  def decode(value, options) do
    GoogleApi.AppEngine.V1.Model.Network.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AppEngine.V1.Model.Network do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
