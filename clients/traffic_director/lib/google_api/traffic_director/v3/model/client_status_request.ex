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

defmodule GoogleApi.TrafficDirector.V3.Model.ClientStatusRequest do
  @moduledoc """
  Request for client status of clients identified by a list of NodeMatchers.

  ## Attributes

  *   `excludeResourceContents` (*type:* `boolean()`, *default:* `nil`) - If true, the server will not include the resource contents in the response (i.e., the generic_xds_configs.xds_config field will not be populated). [#not-implemented-hide:]
  *   `node` (*type:* `GoogleApi.TrafficDirector.V3.Model.Node.t`, *default:* `nil`) - The node making the csds request.
  *   `nodeMatchers` (*type:* `list(GoogleApi.TrafficDirector.V3.Model.NodeMatcher.t)`, *default:* `nil`) - Management server can use these match criteria to identify clients. The match follows OR semantics.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :excludeResourceContents => boolean() | nil,
          :node => GoogleApi.TrafficDirector.V3.Model.Node.t() | nil,
          :nodeMatchers => list(GoogleApi.TrafficDirector.V3.Model.NodeMatcher.t()) | nil
        }

  field(:excludeResourceContents)
  field(:node, as: GoogleApi.TrafficDirector.V3.Model.Node)
  field(:nodeMatchers, as: GoogleApi.TrafficDirector.V3.Model.NodeMatcher, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.TrafficDirector.V3.Model.ClientStatusRequest do
  def decode(value, options) do
    GoogleApi.TrafficDirector.V3.Model.ClientStatusRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.TrafficDirector.V3.Model.ClientStatusRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end