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

defmodule GoogleApi.ContentWarehouse.V1.Model.SnapshotTextNode do
  @moduledoc """
  The SnapshotDocument contains a list of TextNode's. Each node contains a string of text of the webpage, its bounding box in the agove snapshot image, and its font size (in number of pixels in the snapshot, which could be a fraction number since the snapshot image is typically shrinked). This list of text nodes are extracted from the output from the rendering service: htmlrender_webkit_headless_proto.Document The extraction is done by TrimDocument defined in ./shared/doctrimmer.cc

  ## Attributes

  *   `boundingBox` (*type:* `GoogleApi.ContentWarehouse.V1.Model.SnapshotBox.t`, *default:* `nil`) - 
  *   `fontSize` (*type:* `number()`, *default:* `nil`) - 
  *   `inLink` (*type:* `integer()`, *default:* `nil`) - One if the current text node is within a link; otherwise zero/not present.
  *   `maxSplit` (*type:* `integer()`, *default:* `nil`) - A value in the range [0,7] (zero if not present) indicating the most "powerful" splitting tag since the last text node. See "enum Category" in mustang/snippets/taginfo.h.
  *   `text` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :boundingBox => GoogleApi.ContentWarehouse.V1.Model.SnapshotBox.t() | nil,
          :fontSize => number() | nil,
          :inLink => integer() | nil,
          :maxSplit => integer() | nil,
          :text => String.t() | nil
        }

  field(:boundingBox, as: GoogleApi.ContentWarehouse.V1.Model.SnapshotBox)
  field(:fontSize)
  field(:inLink)
  field(:maxSplit)
  field(:text)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.SnapshotTextNode do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.SnapshotTextNode.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.SnapshotTextNode do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end