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

defmodule GoogleApi.NetworkManagement.V1beta1.Model.EndpointInfo do
  @moduledoc """
  For display only. The specification of the endpoints for the test. EndpointInfo is derived from source and destination Endpoint and validated by the backend data plane model.

  ## Attributes

  *   `destinationIp` (*type:* `String.t`, *default:* `nil`) - Destination IP address.
  *   `destinationNetworkUri` (*type:* `String.t`, *default:* `nil`) - URI of the network where this packet is sent to.
  *   `destinationPort` (*type:* `integer()`, *default:* `nil`) - Destination port. Only valid when protocol is TCP or UDP.
  *   `protocol` (*type:* `String.t`, *default:* `nil`) - IP protocol in string format, for example: "TCP", "UDP", "ICMP".
  *   `sourceAgentUri` (*type:* `String.t`, *default:* `nil`) - URI of the source telemetry agent this packet originates from.
  *   `sourceIp` (*type:* `String.t`, *default:* `nil`) - Source IP address.
  *   `sourceNetworkUri` (*type:* `String.t`, *default:* `nil`) - URI of the network where this packet originates from.
  *   `sourcePort` (*type:* `integer()`, *default:* `nil`) - Source port. Only valid when protocol is TCP or UDP.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :destinationIp => String.t() | nil,
          :destinationNetworkUri => String.t() | nil,
          :destinationPort => integer() | nil,
          :protocol => String.t() | nil,
          :sourceAgentUri => String.t() | nil,
          :sourceIp => String.t() | nil,
          :sourceNetworkUri => String.t() | nil,
          :sourcePort => integer() | nil
        }

  field(:destinationIp)
  field(:destinationNetworkUri)
  field(:destinationPort)
  field(:protocol)
  field(:sourceAgentUri)
  field(:sourceIp)
  field(:sourceNetworkUri)
  field(:sourcePort)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkManagement.V1beta1.Model.EndpointInfo do
  def decode(value, options) do
    GoogleApi.NetworkManagement.V1beta1.Model.EndpointInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkManagement.V1beta1.Model.EndpointInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
