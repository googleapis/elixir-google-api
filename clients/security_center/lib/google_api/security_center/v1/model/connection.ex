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

defmodule GoogleApi.SecurityCenter.V1.Model.Connection do
  @moduledoc """
  Contains information about the IP connection associated with the finding.

  ## Attributes

  *   `destinationIp` (*type:* `String.t`, *default:* `nil`) - Destination IP address. Not present for sockets that are listening and not connected.
  *   `destinationPort` (*type:* `integer()`, *default:* `nil`) - Destination port. Not present for sockets that are listening and not connected.
  *   `protocol` (*type:* `String.t`, *default:* `nil`) - IANA Internet Protocol Number such as TCP(6) and UDP(17).
  *   `sourceIp` (*type:* `String.t`, *default:* `nil`) - Source IP address.
  *   `sourcePort` (*type:* `integer()`, *default:* `nil`) - Source port.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :destinationIp => String.t() | nil,
          :destinationPort => integer() | nil,
          :protocol => String.t() | nil,
          :sourceIp => String.t() | nil,
          :sourcePort => integer() | nil
        }

  field(:destinationIp)
  field(:destinationPort)
  field(:protocol)
  field(:sourceIp)
  field(:sourcePort)
end

defimpl Poison.Decoder, for: GoogleApi.SecurityCenter.V1.Model.Connection do
  def decode(value, options) do
    GoogleApi.SecurityCenter.V1.Model.Connection.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SecurityCenter.V1.Model.Connection do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
