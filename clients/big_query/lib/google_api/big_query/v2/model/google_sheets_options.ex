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

defmodule GoogleApi.BigQuery.V2.Model.GoogleSheetsOptions do
  @moduledoc """
  Options specific to Google Sheets data sources.

  ## Attributes

  *   `range` (*type:* `String.t`, *default:* `nil`) - Optional. Range of a sheet to query from. Only used when non-empty. Typical format: sheet_name!top_left_cell_id:bottom_right_cell_id For example: sheet1!A1:B20
  *   `skipLeadingRows` (*type:* `String.t`, *default:* `nil`) - Optional. The number of rows at the top of a sheet that BigQuery will skip when reading the data. The default value is 0. This property is useful if you have header rows that should be skipped. When autodetect is on, the behavior is the following: * skipLeadingRows unspecified - Autodetect tries to detect headers in the first row. If they are not detected, the row is read as data. Otherwise data is read starting from the second row. * skipLeadingRows is 0 - Instructs autodetect that there are no headers and data should be read starting from the first row. * skipLeadingRows = N > 0 - Autodetect skips N-1 rows and tries to detect headers in row N. If headers are not detected, row N is just skipped. Otherwise row N is used to extract column names for the detected schema.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :range => String.t() | nil,
          :skipLeadingRows => String.t() | nil
        }

  field(:range)
  field(:skipLeadingRows)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.GoogleSheetsOptions do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.GoogleSheetsOptions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.GoogleSheetsOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
