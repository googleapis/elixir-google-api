# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Sheets.V4.Model.UpdateValuesByDataFilterResponse do
  @moduledoc """
  The response when updating a range of values by a data filter in a spreadsheet.

  ## Attributes

  - dataFilter (DataFilter): The data filter that selected the range that was updated. Defaults to: `null`.
  - updatedCells (integer()): The number of cells updated. Defaults to: `null`.
  - updatedColumns (integer()): The number of columns where at least one cell in the column was updated. Defaults to: `null`.
  - updatedData (ValueRange): The values of the cells in the range matched by the dataFilter after all updates were applied. This is only included if the request&#39;s &#x60;includeValuesInResponse&#x60; field was &#x60;true&#x60;. Defaults to: `null`.
  - updatedRange (String.t): The range (in A1 notation) that updates were applied to. Defaults to: `null`.
  - updatedRows (integer()): The number of rows where at least one cell in the row was updated. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dataFilter => GoogleApi.Sheets.V4.Model.DataFilter.t(),
          :updatedCells => any(),
          :updatedColumns => any(),
          :updatedData => GoogleApi.Sheets.V4.Model.ValueRange.t(),
          :updatedRange => any(),
          :updatedRows => any()
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
