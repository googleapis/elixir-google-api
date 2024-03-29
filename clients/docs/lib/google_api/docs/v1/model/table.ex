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

defmodule GoogleApi.Docs.V1.Model.Table do
  @moduledoc """
  A StructuralElement representing a table.

  ## Attributes

  *   `columns` (*type:* `integer()`, *default:* `nil`) - Number of columns in the table. It's possible for a table to be non-rectangular, so some rows may have a different number of cells.
  *   `rows` (*type:* `integer()`, *default:* `nil`) - Number of rows in the table.
  *   `suggestedDeletionIds` (*type:* `list(String.t)`, *default:* `nil`) - The suggested deletion IDs. If empty, then there are no suggested deletions of this content.
  *   `suggestedInsertionIds` (*type:* `list(String.t)`, *default:* `nil`) - The suggested insertion IDs. A Table may have multiple insertion IDs if it's a nested suggested change. If empty, then this is not a suggested insertion.
  *   `tableRows` (*type:* `list(GoogleApi.Docs.V1.Model.TableRow.t)`, *default:* `nil`) - The contents and style of each row.
  *   `tableStyle` (*type:* `GoogleApi.Docs.V1.Model.TableStyle.t`, *default:* `nil`) - The style of the table.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :columns => integer() | nil,
          :rows => integer() | nil,
          :suggestedDeletionIds => list(String.t()) | nil,
          :suggestedInsertionIds => list(String.t()) | nil,
          :tableRows => list(GoogleApi.Docs.V1.Model.TableRow.t()) | nil,
          :tableStyle => GoogleApi.Docs.V1.Model.TableStyle.t() | nil
        }

  field(:columns)
  field(:rows)
  field(:suggestedDeletionIds, type: :list)
  field(:suggestedInsertionIds, type: :list)
  field(:tableRows, as: GoogleApi.Docs.V1.Model.TableRow, type: :list)
  field(:tableStyle, as: GoogleApi.Docs.V1.Model.TableStyle)
end

defimpl Poison.Decoder, for: GoogleApi.Docs.V1.Model.Table do
  def decode(value, options) do
    GoogleApi.Docs.V1.Model.Table.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Docs.V1.Model.Table do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
