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

defmodule GoogleApi.Compute.V1.Model.Router do
  @moduledoc """
  Represents a Cloud Router resource.

  For more information about Cloud Router, read the Cloud Router overview.

  ## Attributes

  *   `bgp` (*type:* `GoogleApi.Compute.V1.Model.RouterBgp.t`, *default:* `nil`) - BGP information specific to this router.
  *   `bgpPeers` (*type:* `list(GoogleApi.Compute.V1.Model.RouterBgpPeer.t)`, *default:* `nil`) - BGP information that must be configured into the routing stack to establish BGP peering. This information must specify the peer ASN and either the interface name, IP address, or peer IP address. Please refer to RFC4273.
  *   `creationTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Creation timestamp in RFC3339 text format.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of this resource. Provide this property when you create the resource.
  *   `encryptedInterconnectRouter` (*type:* `boolean()`, *default:* `nil`) - Field to indicate if a router is dedicated to use with encrypted Interconnect Attachment (IPsec-encrypted Cloud Interconnect feature).
      Not currently available in all Interconnect locations.
  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] The unique identifier for the resource. This identifier is defined by the server.
  *   `interfaces` (*type:* `list(GoogleApi.Compute.V1.Model.RouterInterface.t)`, *default:* `nil`) - Router interfaces. Each interface requires either one linked resource, (for example, linkedVpnTunnel), or IP address and IP address range (for example, ipRange), or both.
  *   `kind` (*type:* `String.t`, *default:* `compute#router`) - [Output Only] Type of resource. Always compute#router for routers.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  *   `nats` (*type:* `list(GoogleApi.Compute.V1.Model.RouterNat.t)`, *default:* `nil`) - A list of NAT services created in this router.
  *   `network` (*type:* `String.t`, *default:* `nil`) - URI of the network to which this router belongs.
  *   `region` (*type:* `String.t`, *default:* `nil`) - [Output Only] URI of the region where the router resides. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined URL for the resource.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bgp => GoogleApi.Compute.V1.Model.RouterBgp.t() | nil,
          :bgpPeers => list(GoogleApi.Compute.V1.Model.RouterBgpPeer.t()) | nil,
          :creationTimestamp => String.t() | nil,
          :description => String.t() | nil,
          :encryptedInterconnectRouter => boolean() | nil,
          :id => String.t() | nil,
          :interfaces => list(GoogleApi.Compute.V1.Model.RouterInterface.t()) | nil,
          :kind => String.t() | nil,
          :name => String.t() | nil,
          :nats => list(GoogleApi.Compute.V1.Model.RouterNat.t()) | nil,
          :network => String.t() | nil,
          :region => String.t() | nil,
          :selfLink => String.t() | nil
        }

  field(:bgp, as: GoogleApi.Compute.V1.Model.RouterBgp)
  field(:bgpPeers, as: GoogleApi.Compute.V1.Model.RouterBgpPeer, type: :list)
  field(:creationTimestamp)
  field(:description)
  field(:encryptedInterconnectRouter)
  field(:id)
  field(:interfaces, as: GoogleApi.Compute.V1.Model.RouterInterface, type: :list)
  field(:kind)
  field(:name)
  field(:nats, as: GoogleApi.Compute.V1.Model.RouterNat, type: :list)
  field(:network)
  field(:region)
  field(:selfLink)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.Router do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.Router.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.Router do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
