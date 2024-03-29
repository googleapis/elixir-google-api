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

defmodule GoogleApi.GKEOnPrem.V1.Model.VmwareNetworkConfig do
  @moduledoc """
  Specifies network config for the VMware user cluster.

  ## Attributes

  *   `controlPlaneV2Config` (*type:* `GoogleApi.GKEOnPrem.V1.Model.VmwareControlPlaneV2Config.t`, *default:* `nil`) - Configuration for control plane V2 mode.
  *   `dhcpIpConfig` (*type:* `GoogleApi.GKEOnPrem.V1.Model.VmwareDhcpIpConfig.t`, *default:* `nil`) - Configuration settings for a DHCP IP configuration.
  *   `hostConfig` (*type:* `GoogleApi.GKEOnPrem.V1.Model.VmwareHostConfig.t`, *default:* `nil`) - Represents common network settings irrespective of the host's IP address.
  *   `podAddressCidrBlocks` (*type:* `list(String.t)`, *default:* `nil`) - Required. All pods in the cluster are assigned an RFC1918 IPv4 address from these ranges. Only a single range is supported. This field cannot be changed after creation.
  *   `serviceAddressCidrBlocks` (*type:* `list(String.t)`, *default:* `nil`) - Required. All services in the cluster are assigned an RFC1918 IPv4 address from these ranges. Only a single range is supported. This field cannot be changed after creation.
  *   `staticIpConfig` (*type:* `GoogleApi.GKEOnPrem.V1.Model.VmwareStaticIpConfig.t`, *default:* `nil`) - Configuration settings for a static IP configuration.
  *   `vcenterNetwork` (*type:* `String.t`, *default:* `nil`) - vcenter_network specifies vCenter network name. Inherited from the admin cluster.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :controlPlaneV2Config =>
            GoogleApi.GKEOnPrem.V1.Model.VmwareControlPlaneV2Config.t() | nil,
          :dhcpIpConfig => GoogleApi.GKEOnPrem.V1.Model.VmwareDhcpIpConfig.t() | nil,
          :hostConfig => GoogleApi.GKEOnPrem.V1.Model.VmwareHostConfig.t() | nil,
          :podAddressCidrBlocks => list(String.t()) | nil,
          :serviceAddressCidrBlocks => list(String.t()) | nil,
          :staticIpConfig => GoogleApi.GKEOnPrem.V1.Model.VmwareStaticIpConfig.t() | nil,
          :vcenterNetwork => String.t() | nil
        }

  field(:controlPlaneV2Config, as: GoogleApi.GKEOnPrem.V1.Model.VmwareControlPlaneV2Config)
  field(:dhcpIpConfig, as: GoogleApi.GKEOnPrem.V1.Model.VmwareDhcpIpConfig)
  field(:hostConfig, as: GoogleApi.GKEOnPrem.V1.Model.VmwareHostConfig)
  field(:podAddressCidrBlocks, type: :list)
  field(:serviceAddressCidrBlocks, type: :list)
  field(:staticIpConfig, as: GoogleApi.GKEOnPrem.V1.Model.VmwareStaticIpConfig)
  field(:vcenterNetwork)
end

defimpl Poison.Decoder, for: GoogleApi.GKEOnPrem.V1.Model.VmwareNetworkConfig do
  def decode(value, options) do
    GoogleApi.GKEOnPrem.V1.Model.VmwareNetworkConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GKEOnPrem.V1.Model.VmwareNetworkConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
