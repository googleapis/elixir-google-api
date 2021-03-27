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

defmodule GoogleApi.Compute.V1.Model.VpnGatewayVpnGatewayInterface do
  @moduledoc """
  A VPN gateway interface.

  ## Attributes

  *   `id` (*type:* `integer()`, *default:* `nil`) - The numeric ID of this VPN gateway interface.
  *   `interconnectAttachment` (*type:* `String.t`, *default:* `nil`) - URL of the interconnect attachment resource. When the value of this field is present, the VPN Gateway will be used for IPsec-encrypted Cloud Interconnect; all Egress or Ingress traffic for this VPN Gateway interface will go through the specified interconnect attachment resource.
      Not currently available in all Interconnect locations.
  *   `ipAddress` (*type:* `String.t`, *default:* `nil`) - [Output Only] The external IP address for this VPN gateway interface.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :interconnectAttachment => String.t() | nil,
          :ipAddress => String.t() | nil
        }

  field(:id)
  field(:interconnectAttachment)
  field(:ipAddress)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.VpnGatewayVpnGatewayInterface do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.VpnGatewayVpnGatewayInterface.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.VpnGatewayVpnGatewayInterface do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
