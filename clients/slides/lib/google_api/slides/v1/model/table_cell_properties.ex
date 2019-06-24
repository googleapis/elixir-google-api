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

defmodule GoogleApi.Slides.V1.Model.TableCellProperties do
  @moduledoc """
  The properties of the TableCell.

  ## Attributes

  *   `contentAlignment` (*type:* `String.t`, *default:* `nil`) - The alignment of the content in the table cell. The default alignment
      matches the alignment for newly created table cells in the Slides editor.
  *   `tableCellBackgroundFill` (*type:* `GoogleApi.Slides.V1.Model.TableCellBackgroundFill.t`, *default:* `nil`) - The background fill of the table cell. The default fill matches the fill
      for newly created table cells in the Slides editor.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contentAlignment => String.t(),
          :tableCellBackgroundFill => GoogleApi.Slides.V1.Model.TableCellBackgroundFill.t()
        }

  field(:contentAlignment)
  field(:tableCellBackgroundFill, as: GoogleApi.Slides.V1.Model.TableCellBackgroundFill)
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.TableCellProperties do
  def decode(value, options) do
    GoogleApi.Slides.V1.Model.TableCellProperties.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.TableCellProperties do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
