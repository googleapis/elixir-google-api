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

defmodule GoogleApi.Compute.V1.Model.PacketMirroringMirroredResourceInfo do
  @moduledoc """


  ## Attributes

  *   `instances` (*type:* `list(GoogleApi.Compute.V1.Model.PacketMirroringMirroredResourceInfoInstanceInfo.t)`, *default:* `nil`) - A set of virtual machine instances that are being mirrored. They must live in zones contained in the same region as this packetMirroring.

      Note that this config will apply only to those network interfaces of the Instances that belong to the network specified in this packetMirroring.

      You may specify a maximum of 50 Instances.
  *   `subnetworks` (*type:* `list(GoogleApi.Compute.V1.Model.PacketMirroringMirroredResourceInfoSubnetInfo.t)`, *default:* `nil`) - A set of subnetworks for which traffic from/to all VM instances will be mirrored. They must live in the same region as this packetMirroring.

      You may specify a maximum of 5 subnetworks.
  *   `tags` (*type:* `list(String.t)`, *default:* `nil`) - A set of mirrored tags. Traffic from/to all VM instances that have one or more of these tags will be mirrored.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :instances =>
            list(GoogleApi.Compute.V1.Model.PacketMirroringMirroredResourceInfoInstanceInfo.t())
            | nil,
          :subnetworks =>
            list(GoogleApi.Compute.V1.Model.PacketMirroringMirroredResourceInfoSubnetInfo.t())
            | nil,
          :tags => list(String.t()) | nil
        }

  field(:instances,
    as: GoogleApi.Compute.V1.Model.PacketMirroringMirroredResourceInfoInstanceInfo,
    type: :list
  )

  field(:subnetworks,
    as: GoogleApi.Compute.V1.Model.PacketMirroringMirroredResourceInfoSubnetInfo,
    type: :list
  )

  field(:tags, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.PacketMirroringMirroredResourceInfo do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.PacketMirroringMirroredResourceInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.PacketMirroringMirroredResourceInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
