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

defmodule GoogleApi.Container.V1.Model.NodePoolAutoscaling do
  @moduledoc """
  NodePoolAutoscaling contains information required by cluster autoscaler to adjust the size of the node pool to the current cluster usage.

  ## Attributes

  *   `autoprovisioned` (*type:* `boolean()`, *default:* `nil`) - Can this node pool be deleted automatically.
  *   `enabled` (*type:* `boolean()`, *default:* `nil`) - Is autoscaling enabled for this node pool.
  *   `maxNodeCount` (*type:* `integer()`, *default:* `nil`) - Maximum number of nodes in the NodePool. Must be >= min_node_count. There has to enough quota to scale up the cluster.
  *   `minNodeCount` (*type:* `integer()`, *default:* `nil`) - Minimum number of nodes in the NodePool. Must be >= 1 and <= max_node_count.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoprovisioned => boolean() | nil,
          :enabled => boolean() | nil,
          :maxNodeCount => integer() | nil,
          :minNodeCount => integer() | nil
        }

  field(:autoprovisioned)
  field(:enabled)
  field(:maxNodeCount)
  field(:minNodeCount)
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.NodePoolAutoscaling do
  def decode(value, options) do
    GoogleApi.Container.V1.Model.NodePoolAutoscaling.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Container.V1.Model.NodePoolAutoscaling do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
