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

defmodule GoogleApi.ContentWarehouse.V1.Model.BlogsearchConversationNode do
  @moduledoc """


  ## Attributes

  *   `authorName` (*type:* `String.t`, *default:* `nil`) - The username of the author of the microblog post represented by this node.
  *   `children` (*type:* `list(String.t)`, *default:* `nil`) - A list of docids of child nodes.
  *   `date` (*type:* `String.t`, *default:* `nil`) - The creation date of the doc.
  *   `docid` (*type:* `String.t`, *default:* `nil`) - Docid of the microblog post represented by this node.
  *   `parent` (*type:* `String.t`, *default:* `nil`) - The docid of the parent node. The root of the tree will leave this empty.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :authorName => String.t() | nil,
          :children => list(String.t()) | nil,
          :date => String.t() | nil,
          :docid => String.t() | nil,
          :parent => String.t() | nil
        }

  field(:authorName)
  field(:children, type: :list)
  field(:date)
  field(:docid)
  field(:parent)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.BlogsearchConversationNode do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.BlogsearchConversationNode.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.BlogsearchConversationNode do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end