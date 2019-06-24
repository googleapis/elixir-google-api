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

defmodule GoogleApi.Sheets.V4.Model.BatchUpdateSpreadsheetResponse do
  @moduledoc """
  The reply for batch updating a spreadsheet.

  ## Attributes

  *   `replies` (*type:* `list(GoogleApi.Sheets.V4.Model.Response.t)`, *default:* `nil`) - The reply of the updates.  This maps 1:1 with the updates, although
      replies to some requests may be empty.
  *   `spreadsheetId` (*type:* `String.t`, *default:* `nil`) - The spreadsheet the updates were applied to.
  *   `updatedSpreadsheet` (*type:* `GoogleApi.Sheets.V4.Model.Spreadsheet.t`, *default:* `nil`) - The spreadsheet after updates were applied. This is only set if
      [BatchUpdateSpreadsheetRequest.include_spreadsheet_in_response] is `true`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :replies => list(GoogleApi.Sheets.V4.Model.Response.t()),
          :spreadsheetId => String.t(),
          :updatedSpreadsheet => GoogleApi.Sheets.V4.Model.Spreadsheet.t()
        }

  field(:replies, as: GoogleApi.Sheets.V4.Model.Response, type: :list)
  field(:spreadsheetId)
  field(:updatedSpreadsheet, as: GoogleApi.Sheets.V4.Model.Spreadsheet)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.BatchUpdateSpreadsheetResponse do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.BatchUpdateSpreadsheetResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.BatchUpdateSpreadsheetResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
