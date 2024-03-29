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

defmodule GoogleApi.ServiceControl.V1.Model.Peer do
  @moduledoc """
  This message defines attributes for a node that handles a network request. The node can be either a service or an application that sends, forwards, or receives the request. Service peers should fill in `principal` and `labels` as appropriate.

  ## Attributes

  *   `ip` (*type:* `String.t`, *default:* `nil`) - The IP address of the peer.
  *   `labels` (*type:* `map()`, *default:* `nil`) - The labels associated with the peer.
  *   `port` (*type:* `String.t`, *default:* `nil`) - The network port of the peer.
  *   `principal` (*type:* `String.t`, *default:* `nil`) - The identity of this peer. Similar to `Request.auth.principal`, but relative to the peer instead of the request. For example, the identity associated with a load balancer that forwarded the request.
  *   `regionCode` (*type:* `String.t`, *default:* `nil`) - The CLDR country/region code associated with the above IP address. If the IP address is private, the `region_code` should reflect the physical location where this peer is running.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ip => String.t() | nil,
          :labels => map() | nil,
          :port => String.t() | nil,
          :principal => String.t() | nil,
          :regionCode => String.t() | nil
        }

  field(:ip)
  field(:labels, type: :map)
  field(:port)
  field(:principal)
  field(:regionCode)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceControl.V1.Model.Peer do
  def decode(value, options) do
    GoogleApi.ServiceControl.V1.Model.Peer.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceControl.V1.Model.Peer do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
