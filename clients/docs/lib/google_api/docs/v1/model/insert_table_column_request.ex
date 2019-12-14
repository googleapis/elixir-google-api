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

defmodule GoogleApi.Docs.V1.Model.InsertTableColumnRequest do
  @moduledoc """
  Inserts an empty column into a table.

  ## Attributes

  *   `insertRight` (*type:* `boolean()`, *default:* `nil`) - Whether to insert new column to the right of the reference cell location.

      - `True`: insert to the right.
      - `False`: insert to the left.
  *   `tableCellLocation` (*type:* `GoogleApi.Docs.V1.Model.TableCellLocation.t`, *default:* `nil`) - The reference table cell location from which columns will be inserted.

      A new column will be inserted to the left (or right) of the column where
      the reference cell is. If the reference cell is a merged cell, a new
      column will be inserted to the left (or right) of the merged cell.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :insertRight => boolean(),
          :tableCellLocation => GoogleApi.Docs.V1.Model.TableCellLocation.t()
        }

  field(:insertRight)
  field(:tableCellLocation, as: GoogleApi.Docs.V1.Model.TableCellLocation)
end

defimpl Poison.Decoder, for: GoogleApi.Docs.V1.Model.InsertTableColumnRequest do
  def decode(value, options) do
    GoogleApi.Docs.V1.Model.InsertTableColumnRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Docs.V1.Model.InsertTableColumnRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
