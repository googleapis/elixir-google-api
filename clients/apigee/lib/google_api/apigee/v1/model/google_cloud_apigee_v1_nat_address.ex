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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1NatAddress do
  @moduledoc """
  Apigee NAT(network address translation) address. A NAT address is a static external IP address used for Internet egress traffic.

  ## Attributes

  *   `ipAddress` (*type:* `String.t`, *default:* `nil`) - Output only. The static IPV4 address.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. Resource ID of the NAT address.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. State of the nat address.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ipAddress => String.t() | nil,
          :name => String.t() | nil,
          :state => String.t() | nil
        }

  field(:ipAddress)
  field(:name)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1NatAddress do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1NatAddress.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1NatAddress do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
