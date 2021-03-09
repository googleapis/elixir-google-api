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

defmodule GoogleApi.Compute.V1.Model.RouterInterface do
  @moduledoc """


  ## Attributes

  *   `ipRange` (*type:* `String.t`, *default:* `nil`) - IP address and range of the interface. The IP range must be in the RFC3927 link-local IP address space. The value must be a CIDR-formatted string, for example: 169.254.0.1/30. NOTE: Do not truncate the address as it represents the IP address of the interface.
  *   `linkedInterconnectAttachment` (*type:* `String.t`, *default:* `nil`) - URI of the linked Interconnect attachment. It must be in the same region as the router. Each interface can have one linked resource, which can be a VPN tunnel, an Interconnect attachment, or a virtual machine instance.
  *   `linkedVpnTunnel` (*type:* `String.t`, *default:* `nil`) - URI of the linked VPN tunnel, which must be in the same region as the router. Each interface can have one linked resource, which can be a VPN tunnel, an Interconnect attachment, or a virtual machine instance.
  *   `managementType` (*type:* `String.t`, *default:* `nil`) - [Output Only] The resource that configures and manages this interface. 
      - MANAGED_BY_USER is the default value and can be managed directly by users. 
      - MANAGED_BY_ATTACHMENT is an interface that is configured and managed by Cloud Interconnect, specifically, by an InterconnectAttachment of type PARTNER. Google automatically creates, updates, and deletes this type of interface when the PARTNER InterconnectAttachment is created, updated, or deleted.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of this interface entry. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ipRange => String.t() | nil,
          :linkedInterconnectAttachment => String.t() | nil,
          :linkedVpnTunnel => String.t() | nil,
          :managementType => String.t() | nil,
          :name => String.t() | nil
        }

  field(:ipRange)
  field(:linkedInterconnectAttachment)
  field(:linkedVpnTunnel)
  field(:managementType)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.RouterInterface do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.RouterInterface.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.RouterInterface do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
