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

defmodule GoogleApi.MigrationCenter.V1.Model.NetworkAddress do
  @moduledoc """
  Details of network address.

  ## Attributes

  *   `assignment` (*type:* `String.t`, *default:* `nil`) - Whether DHCP is used to assign addresses.
  *   `bcast` (*type:* `String.t`, *default:* `nil`) - Broadcast address.
  *   `fqdn` (*type:* `String.t`, *default:* `nil`) - Fully qualified domain name.
  *   `ipAddress` (*type:* `String.t`, *default:* `nil`) - Assigned or configured IP Address.
  *   `subnetMask` (*type:* `String.t`, *default:* `nil`) - Subnet mask.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :assignment => String.t() | nil,
          :bcast => String.t() | nil,
          :fqdn => String.t() | nil,
          :ipAddress => String.t() | nil,
          :subnetMask => String.t() | nil
        }

  field(:assignment)
  field(:bcast)
  field(:fqdn)
  field(:ipAddress)
  field(:subnetMask)
end

defimpl Poison.Decoder, for: GoogleApi.MigrationCenter.V1.Model.NetworkAddress do
  def decode(value, options) do
    GoogleApi.MigrationCenter.V1.Model.NetworkAddress.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MigrationCenter.V1.Model.NetworkAddress do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
