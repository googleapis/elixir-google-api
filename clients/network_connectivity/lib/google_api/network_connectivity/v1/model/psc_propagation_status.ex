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

defmodule GoogleApi.NetworkConnectivity.V1.Model.PscPropagationStatus do
  @moduledoc """
  The PSC propagation status in a hub.

  ## Attributes

  *   `code` (*type:* `String.t`, *default:* `nil`) - The propagation status.
  *   `message` (*type:* `String.t`, *default:* `nil`) - The human-readable summary of the PSC connection propagation status.
  *   `sourceForwardingRule` (*type:* `String.t`, *default:* `nil`) - The name of the forwarding rule exported to the hub.
  *   `sourceGroup` (*type:* `String.t`, *default:* `nil`) - The name of the group that the source spoke belongs to.
  *   `sourceSpoke` (*type:* `String.t`, *default:* `nil`) - The name of the spoke that the source forwarding rule belongs to.
  *   `targetGroup` (*type:* `String.t`, *default:* `nil`) - The name of the group that the target spoke belongs to.
  *   `targetSpoke` (*type:* `String.t`, *default:* `nil`) - The name of the spoke that the source forwarding rule propagates to.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :code => String.t() | nil,
          :message => String.t() | nil,
          :sourceForwardingRule => String.t() | nil,
          :sourceGroup => String.t() | nil,
          :sourceSpoke => String.t() | nil,
          :targetGroup => String.t() | nil,
          :targetSpoke => String.t() | nil
        }

  field(:code)
  field(:message)
  field(:sourceForwardingRule)
  field(:sourceGroup)
  field(:sourceSpoke)
  field(:targetGroup)
  field(:targetSpoke)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkConnectivity.V1.Model.PscPropagationStatus do
  def decode(value, options) do
    GoogleApi.NetworkConnectivity.V1.Model.PscPropagationStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkConnectivity.V1.Model.PscPropagationStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
