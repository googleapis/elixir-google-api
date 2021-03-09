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

defmodule GoogleApi.Sheets.V4.Model.GridRange do
  @moduledoc """
  A range on a sheet. All indexes are zero-based. Indexes are half open, i.e. the start index is inclusive and the end index is exclusive -- [start_index, end_index). Missing indexes indicate the range is unbounded on that side. For example, if `"Sheet1"` is sheet ID 0, then: `Sheet1!A1:A1 == sheet_id: 0, start_row_index: 0, end_row_index: 1, start_column_index: 0, end_column_index: 1` `Sheet1!A3:B4 == sheet_id: 0, start_row_index: 2, end_row_index: 4, start_column_index: 0, end_column_index: 2` `Sheet1!A:B == sheet_id: 0, start_column_index: 0, end_column_index: 2` `Sheet1!A5:B == sheet_id: 0, start_row_index: 4, start_column_index: 0, end_column_index: 2` `Sheet1 == sheet_id:0` The start index must always be less than or equal to the end index. If the start index equals the end index, then the range is empty. Empty ranges are typically not meaningful and are usually rendered in the UI as `#REF!`.

  ## Attributes

  *   `endColumnIndex` (*type:* `integer()`, *default:* `nil`) - The end column (exclusive) of the range, or not set if unbounded.
  *   `endRowIndex` (*type:* `integer()`, *default:* `nil`) - The end row (exclusive) of the range, or not set if unbounded.
  *   `sheetId` (*type:* `integer()`, *default:* `nil`) - The sheet this range is on.
  *   `startColumnIndex` (*type:* `integer()`, *default:* `nil`) - The start column (inclusive) of the range, or not set if unbounded.
  *   `startRowIndex` (*type:* `integer()`, *default:* `nil`) - The start row (inclusive) of the range, or not set if unbounded.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endColumnIndex => integer() | nil,
          :endRowIndex => integer() | nil,
          :sheetId => integer() | nil,
          :startColumnIndex => integer() | nil,
          :startRowIndex => integer() | nil
        }

  field(:endColumnIndex)
  field(:endRowIndex)
  field(:sheetId)
  field(:startColumnIndex)
  field(:startRowIndex)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.GridRange do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.GridRange.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.GridRange do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
