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

defmodule GoogleApi.Compute.V1.Model.InterconnectDiagnosticsLinkLACPStatus do
  @moduledoc """


  ## Attributes

  *   `googleSystemId` (*type:* `String.t`, *default:* `nil`) - System ID of the port on Google's side of the LACP exchange.
  *   `neighborSystemId` (*type:* `String.t`, *default:* `nil`) - System ID of the port on the neighbor's side of the LACP exchange.
  *   `state` (*type:* `String.t`, *default:* `nil`) - The state of a LACP link, which can take one of the following values: - ACTIVE: The link is configured and active within the bundle. - DETACHED: The link is not configured within the bundle. This means that the rest of the object should be empty. 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :googleSystemId => String.t() | nil,
          :neighborSystemId => String.t() | nil,
          :state => String.t() | nil
        }

  field(:googleSystemId)
  field(:neighborSystemId)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.InterconnectDiagnosticsLinkLACPStatus do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.InterconnectDiagnosticsLinkLACPStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.InterconnectDiagnosticsLinkLACPStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
