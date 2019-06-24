# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Spanner.V1.Model.ShortRepresentation do
  @moduledoc """
  Condensed representation of a node and its subtree. Only present for
  `SCALAR` PlanNode(s).

  ## Attributes

  *   `description` (*type:* `String.t`, *default:* `nil`) - A string representation of the expression subtree rooted at this node.
  *   `subqueries` (*type:* `map()`, *default:* `nil`) - A mapping of (subquery variable name) -> (subquery node id) for cases
      where the `description` string of this node references a `SCALAR`
      subquery contained in the expression subtree rooted at this node. The
      referenced `SCALAR` subquery may not necessarily be a direct child of
      this node.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => String.t(),
          :subqueries => map()
        }

  field(:description)
  field(:subqueries, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.ShortRepresentation do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.ShortRepresentation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.ShortRepresentation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
