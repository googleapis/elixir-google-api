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

defmodule GoogleApi.Slides.V1.Model.InsertTableRowsRequest do
  @moduledoc """
  Inserts rows into a table.

  ## Attributes

  *   `cellLocation` (*type:* `GoogleApi.Slides.V1.Model.TableCellLocation.t`, *default:* `nil`) - The reference table cell location from which rows will be inserted.

      A new row will be inserted above (or below) the row where the reference
      cell is. If the reference cell is a merged cell, a new row will be
      inserted above (or below) the merged cell.
  *   `insertBelow` (*type:* `boolean()`, *default:* `nil`) - Whether to insert new rows below the reference cell location.

      - `True`: insert below the cell.
      - `False`: insert above the cell.
  *   `number` (*type:* `integer()`, *default:* `nil`) - The number of rows to be inserted. Maximum 20 per request.
  *   `tableObjectId` (*type:* `String.t`, *default:* `nil`) - The table to insert rows into.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cellLocation => GoogleApi.Slides.V1.Model.TableCellLocation.t(),
          :insertBelow => boolean(),
          :number => integer(),
          :tableObjectId => String.t()
        }

  field(:cellLocation, as: GoogleApi.Slides.V1.Model.TableCellLocation)
  field(:insertBelow)
  field(:number)
  field(:tableObjectId)
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.InsertTableRowsRequest do
  def decode(value, options) do
    GoogleApi.Slides.V1.Model.InsertTableRowsRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.InsertTableRowsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
