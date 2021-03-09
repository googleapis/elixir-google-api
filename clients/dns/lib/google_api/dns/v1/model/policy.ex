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

defmodule GoogleApi.DNS.V1.Model.Policy do
  @moduledoc """
  A policy is a collection of DNS rules applied to one or more Virtual Private Cloud resources.

  ## Attributes

  *   `alternativeNameServerConfig` (*type:* `GoogleApi.DNS.V1.Model.PolicyAlternativeNameServerConfig.t`, *default:* `nil`) - Sets an alternative name server for the associated networks. When specified, all DNS queries are forwarded to a name server that you choose. Names such as .internal are not available when an alternative name server is specified.
  *   `description` (*type:* `String.t`, *default:* `nil`) - A mutable string of at most 1024 characters associated with this resource for the user's convenience. Has no effect on the policy's function.
  *   `enableInboundForwarding` (*type:* `boolean()`, *default:* `nil`) - Allows networks bound to this policy to receive DNS queries sent by VMs or applications over VPN connections. When enabled, a virtual IP address is allocated from each of the subnetworks that are bound to this policy.
  *   `enableLogging` (*type:* `boolean()`, *default:* `nil`) - Controls whether logging is enabled for the networks bound to this policy. Defaults to no logging if not set.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Unique identifier for the resource; defined by the server (output only).
  *   `kind` (*type:* `String.t`, *default:* `dns#policy`) - 
  *   `name` (*type:* `String.t`, *default:* `nil`) - User-assigned name for this policy.
  *   `networks` (*type:* `list(GoogleApi.DNS.V1.Model.PolicyNetwork.t)`, *default:* `nil`) - List of network names specifying networks to which this policy is applied.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :alternativeNameServerConfig =>
            GoogleApi.DNS.V1.Model.PolicyAlternativeNameServerConfig.t() | nil,
          :description => String.t() | nil,
          :enableInboundForwarding => boolean() | nil,
          :enableLogging => boolean() | nil,
          :id => String.t() | nil,
          :kind => String.t() | nil,
          :name => String.t() | nil,
          :networks => list(GoogleApi.DNS.V1.Model.PolicyNetwork.t()) | nil
        }

  field(:alternativeNameServerConfig, as: GoogleApi.DNS.V1.Model.PolicyAlternativeNameServerConfig)

  field(:description)
  field(:enableInboundForwarding)
  field(:enableLogging)
  field(:id)
  field(:kind)
  field(:name)
  field(:networks, as: GoogleApi.DNS.V1.Model.PolicyNetwork, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DNS.V1.Model.Policy do
  def decode(value, options) do
    GoogleApi.DNS.V1.Model.Policy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DNS.V1.Model.Policy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
