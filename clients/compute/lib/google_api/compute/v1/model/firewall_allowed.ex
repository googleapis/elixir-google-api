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

defmodule GoogleApi.Compute.V1.Model.FirewallAllowed do
  @moduledoc """


  ## Attributes

  *   `IPProtocol` (*type:* `String.t`, *default:* `nil`) - The IP protocol to which this rule applies. The protocol type is required when creating a firewall rule. This value can either be one of the following well known protocol strings (tcp, udp, icmp, esp, ah, ipip, sctp) or the IP protocol number.
  *   `ports` (*type:* `list(String.t)`, *default:* `nil`) - An optional list of ports to which this rule applies. This field is only applicable for the UDP or TCP protocol. Each entry must be either an integer or a range. If not specified, this rule applies to connections through any port. Example inputs include: ["22"], ["80","443"], and ["12345-12349"].
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :IPProtocol => String.t() | nil,
          :ports => list(String.t()) | nil
        }

  field(:IPProtocol)
  field(:ports, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.FirewallAllowed do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.FirewallAllowed.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.FirewallAllowed do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
