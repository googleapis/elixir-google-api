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

defmodule GoogleApi.ContentWarehouse.V1.Model.NlpSaftConstituencyNode do
  @moduledoc """
  Constituency parse tree node with tokens as the leaf nodes.

  ## Attributes

  *   `child` (*type:* `list(integer())`, *default:* `nil`) - An arbitrary number of children, ordered from left to right; empty for preterminals. Represented via indices into Document.constituency_node.
  *   `label` (*type:* `String.t`, *default:* `nil`) - The label of the current node.
  *   `phrase` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSaftPhrase.t`, *default:* `nil`) - A phrase that contains information about the span and the (optional) head token. For terminal nodes the head of the phrase holds the word.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :child => list(integer()) | nil,
          :label => String.t() | nil,
          :phrase => GoogleApi.ContentWarehouse.V1.Model.NlpSaftPhrase.t() | nil
        }

  field(:child, type: :list)
  field(:label)
  field(:phrase, as: GoogleApi.ContentWarehouse.V1.Model.NlpSaftPhrase)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.NlpSaftConstituencyNode do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.NlpSaftConstituencyNode.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.NlpSaftConstituencyNode do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
