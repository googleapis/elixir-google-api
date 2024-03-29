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

defmodule GoogleApi.GKEOnPrem.V1.Model.VmwareIpBlock do
  @moduledoc """
  Represents a collection of IP addresses to assign to nodes.

  ## Attributes

  *   `gateway` (*type:* `String.t`, *default:* `nil`) - The network gateway used by the VMware user cluster.
  *   `ips` (*type:* `list(GoogleApi.GKEOnPrem.V1.Model.VmwareHostIp.t)`, *default:* `nil`) - The node's network configurations used by the VMware user cluster.
  *   `netmask` (*type:* `String.t`, *default:* `nil`) - The netmask used by the VMware user cluster.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :gateway => String.t() | nil,
          :ips => list(GoogleApi.GKEOnPrem.V1.Model.VmwareHostIp.t()) | nil,
          :netmask => String.t() | nil
        }

  field(:gateway)
  field(:ips, as: GoogleApi.GKEOnPrem.V1.Model.VmwareHostIp, type: :list)
  field(:netmask)
end

defimpl Poison.Decoder, for: GoogleApi.GKEOnPrem.V1.Model.VmwareIpBlock do
  def decode(value, options) do
    GoogleApi.GKEOnPrem.V1.Model.VmwareIpBlock.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GKEOnPrem.V1.Model.VmwareIpBlock do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
