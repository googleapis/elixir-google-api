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

defmodule GoogleApi.Sheets.V4.Model.GridData do
  @moduledoc """
  Data in the grid, as well as metadata about the dimensions.

  ## Attributes

  *   `columnMetadata` (*type:* `list(GoogleApi.Sheets.V4.Model.DimensionProperties.t)`, *default:* `nil`) - Metadata about the requested columns in the grid, starting with the column in start_column.
  *   `rowData` (*type:* `list(GoogleApi.Sheets.V4.Model.RowData.t)`, *default:* `nil`) - The data in the grid, one entry per row, starting with the row in startRow. The values in RowData will correspond to columns starting at start_column.
  *   `rowMetadata` (*type:* `list(GoogleApi.Sheets.V4.Model.DimensionProperties.t)`, *default:* `nil`) - Metadata about the requested rows in the grid, starting with the row in start_row.
  *   `startColumn` (*type:* `integer()`, *default:* `nil`) - The first column this GridData refers to, zero-based.
  *   `startRow` (*type:* `integer()`, *default:* `nil`) - The first row this GridData refers to, zero-based.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :columnMetadata => list(GoogleApi.Sheets.V4.Model.DimensionProperties.t()) | nil,
          :rowData => list(GoogleApi.Sheets.V4.Model.RowData.t()) | nil,
          :rowMetadata => list(GoogleApi.Sheets.V4.Model.DimensionProperties.t()) | nil,
          :startColumn => integer() | nil,
          :startRow => integer() | nil
        }

  field(:columnMetadata, as: GoogleApi.Sheets.V4.Model.DimensionProperties, type: :list)
  field(:rowData, as: GoogleApi.Sheets.V4.Model.RowData, type: :list)
  field(:rowMetadata, as: GoogleApi.Sheets.V4.Model.DimensionProperties, type: :list)
  field(:startColumn)
  field(:startRow)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.GridData do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.GridData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.GridData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
