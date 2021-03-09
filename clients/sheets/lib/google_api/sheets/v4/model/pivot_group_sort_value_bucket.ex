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

defmodule GoogleApi.Sheets.V4.Model.PivotGroupSortValueBucket do
  @moduledoc """
  Information about which values in a pivot group should be used for sorting.

  ## Attributes

  *   `buckets` (*type:* `list(GoogleApi.Sheets.V4.Model.ExtendedValue.t)`, *default:* `nil`) - Determines the bucket from which values are chosen to sort. For example, in a pivot table with one row group & two column groups, the row group can list up to two values. The first value corresponds to a value within the first column group, and the second value corresponds to a value in the second column group. If no values are listed, this would indicate that the row should be sorted according to the "Grand Total" over the column groups. If a single value is listed, this would correspond to using the "Total" of that bucket.
  *   `valuesIndex` (*type:* `integer()`, *default:* `nil`) - The offset in the PivotTable.values list which the values in this grouping should be sorted by.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :buckets => list(GoogleApi.Sheets.V4.Model.ExtendedValue.t()) | nil,
          :valuesIndex => integer() | nil
        }

  field(:buckets, as: GoogleApi.Sheets.V4.Model.ExtendedValue, type: :list)
  field(:valuesIndex)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.PivotGroupSortValueBucket do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.PivotGroupSortValueBucket.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.PivotGroupSortValueBucket do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
