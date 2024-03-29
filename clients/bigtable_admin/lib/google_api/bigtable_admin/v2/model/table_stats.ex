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

defmodule GoogleApi.BigtableAdmin.V2.Model.TableStats do
  @moduledoc """
  Approximate statistics related to a table. These statistics are calculated infrequently, while simultaneously, data in the table can change rapidly. Thus the values reported here (e.g. row count) are very likely out-of date, even the instant they are received in this API. Thus, only treat these values as approximate. IMPORTANT: Everything below is approximate, unless otherwise specified.

  ## Attributes

  *   `averageCellsPerColumn` (*type:* `float()`, *default:* `nil`) - How many cells are present per column (column family, column qualifier) combinations, averaged over all columns in all rows in the table. e.g. A table with 2 rows: * A row with 3 cells in "family:col" and 1 cell in "other:col" (4 cells / 2 columns) * A row with 1 cell in "family:col", 7 cells in "family:other_col", and 7 cells in "other:data" (15 cells / 3 columns) would report (4 + 15)/(2 + 3) = 3.8 in this field.
  *   `averageColumnsPerRow` (*type:* `float()`, *default:* `nil`) - How many (column family, column qualifier) combinations are present per row in the table, averaged over all rows in the table. e.g. A table with 2 rows: * A row with cells in "family:col" and "other:col" (2 distinct columns) * A row with cells in "family:col", "family:other_col", and "other:data" (3 distinct columns) would report (2 + 3)/2 = 2.5 in this field.
  *   `logicalDataBytes` (*type:* `String.t`, *default:* `nil`) - This is roughly how many bytes would be needed to read the entire table (e.g. by streaming all contents out).
  *   `rowCount` (*type:* `String.t`, *default:* `nil`) - How many rows are in the table.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :averageCellsPerColumn => float() | nil,
          :averageColumnsPerRow => float() | nil,
          :logicalDataBytes => String.t() | nil,
          :rowCount => String.t() | nil
        }

  field(:averageCellsPerColumn)
  field(:averageColumnsPerRow)
  field(:logicalDataBytes)
  field(:rowCount)
end

defimpl Poison.Decoder, for: GoogleApi.BigtableAdmin.V2.Model.TableStats do
  def decode(value, options) do
    GoogleApi.BigtableAdmin.V2.Model.TableStats.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigtableAdmin.V2.Model.TableStats do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
