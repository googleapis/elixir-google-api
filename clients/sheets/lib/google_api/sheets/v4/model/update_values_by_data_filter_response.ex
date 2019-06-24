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

defmodule GoogleApi.Sheets.V4.Model.UpdateValuesByDataFilterResponse do
  @moduledoc """
  The response when updating a range of values by a data filter in a
  spreadsheet.

  ## Attributes

  *   `dataFilter` (*type:* `GoogleApi.Sheets.V4.Model.DataFilter.t`, *default:* `nil`) - The data filter that selected the range that was updated.
  *   `updatedCells` (*type:* `integer()`, *default:* `nil`) - The number of cells updated.
  *   `updatedColumns` (*type:* `integer()`, *default:* `nil`) - The number of columns where at least one cell in the column was updated.
  *   `updatedData` (*type:* `GoogleApi.Sheets.V4.Model.ValueRange.t`, *default:* `nil`) - The values of the cells in the range matched by the dataFilter after all
      updates were applied. This is only included if the request's
      `includeValuesInResponse` field was `true`.
  *   `updatedRange` (*type:* `String.t`, *default:* `nil`) - The range (in A1 notation) that updates were applied to.
  *   `updatedRows` (*type:* `integer()`, *default:* `nil`) - The number of rows where at least one cell in the row was updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dataFilter => GoogleApi.Sheets.V4.Model.DataFilter.t(),
          :updatedCells => integer(),
          :updatedColumns => integer(),
          :updatedData => GoogleApi.Sheets.V4.Model.ValueRange.t(),
          :updatedRange => String.t(),
          :updatedRows => integer()
        }

  field(:dataFilter, as: GoogleApi.Sheets.V4.Model.DataFilter)
  field(:updatedCells)
  field(:updatedColumns)
  field(:updatedData, as: GoogleApi.Sheets.V4.Model.ValueRange)
  field(:updatedRange)
  field(:updatedRows)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.UpdateValuesByDataFilterResponse do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.UpdateValuesByDataFilterResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.UpdateValuesByDataFilterResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
