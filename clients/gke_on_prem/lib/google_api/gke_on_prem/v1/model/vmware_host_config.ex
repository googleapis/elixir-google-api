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

defmodule GoogleApi.GKEOnPrem.V1.Model.VmwareHostConfig do
  @moduledoc """
  Represents the common parameters for all the hosts irrespective of their IP address.

  ## Attributes

  *   `dnsSearchDomains` (*type:* `list(String.t)`, *default:* `nil`) - DNS search domains.
  *   `dnsServers` (*type:* `list(String.t)`, *default:* `nil`) - DNS servers.
  *   `ntpServers` (*type:* `list(String.t)`, *default:* `nil`) - NTP servers.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dnsSearchDomains => list(String.t()) | nil,
          :dnsServers => list(String.t()) | nil,
          :ntpServers => list(String.t()) | nil
        }

  field(:dnsSearchDomains, type: :list)
  field(:dnsServers, type: :list)
  field(:ntpServers, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.GKEOnPrem.V1.Model.VmwareHostConfig do
  def decode(value, options) do
    GoogleApi.GKEOnPrem.V1.Model.VmwareHostConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GKEOnPrem.V1.Model.VmwareHostConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end