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

defmodule GoogleApi.Slides.V1.Model.InsertTextRequest do
  @moduledoc """
  Inserts text into a shape or a table cell.

  ## Attributes

  *   `cellLocation` (*type:* `GoogleApi.Slides.V1.Model.TableCellLocation.t`, *default:* `nil`) - The optional table cell location if the text is to be inserted into a table
      cell. If present, the object_id must refer to a table.
  *   `insertionIndex` (*type:* `integer()`, *default:* `nil`) - The index where the text will be inserted, in Unicode code units, based
      on TextElement indexes.

      The index is zero-based and is computed from the start of the string.
      The index may be adjusted to prevent insertions inside Unicode grapheme
      clusters. In these cases, the text will be inserted immediately after the
      grapheme cluster.
  *   `objectId` (*type:* `String.t`, *default:* `nil`) - The object ID of the shape or table where the text will be inserted.
  *   `text` (*type:* `String.t`, *default:* `nil`) - The text to be inserted.

      Inserting a newline character will implicitly create a new
      ParagraphMarker at that index.
      The paragraph style of the new paragraph will be copied from the paragraph
      at the current insertion index, including lists and bullets.

      Text styles for inserted text will be determined automatically, generally
      preserving the styling of neighboring text. In most cases, the text will be
      added to the TextRun that exists at the
      insertion index.

      Some control characters (U+0000-U+0008, U+000C-U+001F) and characters
      from the Unicode Basic Multilingual Plane Private Use Area (U+E000-U+F8FF)
      will be stripped out of the inserted text.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cellLocation => GoogleApi.Slides.V1.Model.TableCellLocation.t(),
          :insertionIndex => integer(),
          :objectId => String.t(),
          :text => String.t()
        }

  field(:cellLocation, as: GoogleApi.Slides.V1.Model.TableCellLocation)
  field(:insertionIndex)
  field(:objectId)
  field(:text)
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.InsertTextRequest do
  def decode(value, options) do
    GoogleApi.Slides.V1.Model.InsertTextRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.InsertTextRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
