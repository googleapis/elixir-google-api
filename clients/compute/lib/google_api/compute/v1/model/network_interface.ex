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

defmodule GoogleApi.Compute.V1.Model.NetworkInterface do
  @moduledoc """
  A network interface resource attached to an instance.

  ## Attributes

  *   `accessConfigs` (*type:* `list(GoogleApi.Compute.V1.Model.AccessConfig.t)`, *default:* `nil`) - An array of configurations for this interface. Currently, only one access config, ONE_TO_ONE_NAT, is supported. If there are no accessConfigs specified, then this instance will have no external internet access.
  *   `aliasIpRanges` (*type:* `list(GoogleApi.Compute.V1.Model.AliasIpRange.t)`, *default:* `nil`) - An array of alias IP ranges for this network interface. You can only specify this field for network interfaces in VPC networks.
  *   `fingerprint` (*type:* `String.t`, *default:* `nil`) - Fingerprint hash of contents stored in this network interface. This field will be ignored when inserting an Instance or adding a NetworkInterface. An up-to-date fingerprint must be provided in order to update the NetworkInterface. The request will fail with error 400 Bad Request if the fingerprint is not provided, or 412 Precondition Failed if the fingerprint is out of date.
  *   `ipv6AccessConfigs` (*type:* `list(GoogleApi.Compute.V1.Model.AccessConfig.t)`, *default:* `nil`) - An array of IPv6 access configurations for this interface. Currently, only one IPv6 access config, DIRECT_IPV6, is supported. If there is no ipv6AccessConfig specified, then this instance will have no external IPv6 Internet access.
  *   `ipv6AccessType` (*type:* `String.t`, *default:* `nil`) - [Output Only] One of EXTERNAL, INTERNAL to indicate whether the IP can be accessed from the Internet. This field is always inherited from its subnetwork. Valid only if stackType is IPV4_IPV6.
  *   `ipv6Address` (*type:* `String.t`, *default:* `nil`) - An IPv6 internal network address for this network interface.
  *   `kind` (*type:* `String.t`, *default:* `compute#networkInterface`) - [Output Only] Type of the resource. Always compute#networkInterface for network interfaces.
  *   `name` (*type:* `String.t`, *default:* `nil`) - [Output Only] The name of the network interface, which is generated by the server. For network devices, these are eth0, eth1, etc.
  *   `network` (*type:* `String.t`, *default:* `nil`) - URL of the VPC network resource for this instance. When creating an instance, if neither the network nor the subnetwork is specified, the default network global/networks/default is used. If the selected project doesn't have the default network, you must specify a network or subnet. If the network is not specified but the subnetwork is specified, the network is inferred. If you specify this property, you can specify the network as a full or partial URL. For example, the following are all valid URLs: - https://www.googleapis.com/compute/v1/projects/project/global/networks/ network - projects/project/global/networks/network - global/networks/default 
  *   `networkIP` (*type:* `String.t`, *default:* `nil`) - An IPv4 internal IP address to assign to the instance for this network interface. If not specified by the user, an unused internal IP is assigned by the system.
  *   `nicType` (*type:* `String.t`, *default:* `nil`) - The type of vNIC to be used on this interface. This may be gVNIC or VirtioNet.
  *   `queueCount` (*type:* `integer()`, *default:* `nil`) - The networking queue count that's specified by users for the network interface. Both Rx and Tx queues will be set to this number. It'll be empty if not specified by the users.
  *   `stackType` (*type:* `String.t`, *default:* `nil`) - The stack type for this network interface to identify whether the IPv6 feature is enabled or not. If not specified, IPV4_ONLY will be used. This field can be both set at instance creation and update network interface operations.
  *   `subnetwork` (*type:* `String.t`, *default:* `nil`) - The URL of the Subnetwork resource for this instance. If the network resource is in legacy mode, do not specify this field. If the network is in auto subnet mode, specifying the subnetwork is optional. If the network is in custom subnet mode, specifying the subnetwork is required. If you specify this field, you can specify the subnetwork as a full or partial URL. For example, the following are all valid URLs: - https://www.googleapis.com/compute/v1/projects/project/regions/region /subnetworks/subnetwork - regions/region/subnetworks/subnetwork 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accessConfigs => list(GoogleApi.Compute.V1.Model.AccessConfig.t()) | nil,
          :aliasIpRanges => list(GoogleApi.Compute.V1.Model.AliasIpRange.t()) | nil,
          :fingerprint => String.t() | nil,
          :ipv6AccessConfigs => list(GoogleApi.Compute.V1.Model.AccessConfig.t()) | nil,
          :ipv6AccessType => String.t() | nil,
          :ipv6Address => String.t() | nil,
          :kind => String.t() | nil,
          :name => String.t() | nil,
          :network => String.t() | nil,
          :networkIP => String.t() | nil,
          :nicType => String.t() | nil,
          :queueCount => integer() | nil,
          :stackType => String.t() | nil,
          :subnetwork => String.t() | nil
        }

  field(:accessConfigs, as: GoogleApi.Compute.V1.Model.AccessConfig, type: :list)
  field(:aliasIpRanges, as: GoogleApi.Compute.V1.Model.AliasIpRange, type: :list)
  field(:fingerprint)
  field(:ipv6AccessConfigs, as: GoogleApi.Compute.V1.Model.AccessConfig, type: :list)
  field(:ipv6AccessType)
  field(:ipv6Address)
  field(:kind)
  field(:name)
  field(:network)
  field(:networkIP)
  field(:nicType)
  field(:queueCount)
  field(:stackType)
  field(:subnetwork)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.NetworkInterface do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.NetworkInterface.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.NetworkInterface do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
