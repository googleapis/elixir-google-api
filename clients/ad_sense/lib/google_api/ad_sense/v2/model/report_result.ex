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

defmodule GoogleApi.AdSense.V2.Model.ReportResult do
  @moduledoc """
  Result of a generated report.

  ## Attributes

  *   `averages` (*type:* `GoogleApi.AdSense.V2.Model.Row.t`, *default:* `nil`) - The averages of the report. This is the same length as any other row in the report; cells corresponding to dimension columns are empty.
  *   `endDate` (*type:* `GoogleApi.AdSense.V2.Model.Date.t`, *default:* `nil`) - Required. End date of the range (inclusive).
  *   `headers` (*type:* `list(GoogleApi.AdSense.V2.Model.Header.t)`, *default:* `nil`) - The header information; one for each dimension in the request, followed by one for each metric in the request.
  *   `rows` (*type:* `list(GoogleApi.AdSense.V2.Model.Row.t)`, *default:* `nil`) - The output rows of the report. Each row is a list of cells; one for each dimension in the request, followed by one for each metric in the request.
  *   `startDate` (*type:* `GoogleApi.AdSense.V2.Model.Date.t`, *default:* `nil`) - Required. Start date of the range (inclusive).
  *   `totalMatchedRows` (*type:* `String.t`, *default:* `nil`) - The total number of rows matched by the report request.
  *   `totals` (*type:* `GoogleApi.AdSense.V2.Model.Row.t`, *default:* `nil`) - The totals of the report. This is the same length as any other row in the report; cells corresponding to dimension columns are empty.
  *   `warnings` (*type:* `list(String.t)`, *default:* `nil`) - Any warnings associated with generation of the report. These warnings are always returned in English.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :averages => GoogleApi.AdSense.V2.Model.Row.t() | nil,
          :endDate => GoogleApi.AdSense.V2.Model.Date.t() | nil,
          :headers => list(GoogleApi.AdSense.V2.Model.Header.t()) | nil,
          :rows => list(GoogleApi.AdSense.V2.Model.Row.t()) | nil,
          :startDate => GoogleApi.AdSense.V2.Model.Date.t() | nil,
          :totalMatchedRows => String.t() | nil,
          :totals => GoogleApi.AdSense.V2.Model.Row.t() | nil,
          :warnings => list(String.t()) | nil
        }

  field(:averages, as: GoogleApi.AdSense.V2.Model.Row)
  field(:endDate, as: GoogleApi.AdSense.V2.Model.Date)
  field(:headers, as: GoogleApi.AdSense.V2.Model.Header, type: :list)
  field(:rows, as: GoogleApi.AdSense.V2.Model.Row, type: :list)
  field(:startDate, as: GoogleApi.AdSense.V2.Model.Date)
  field(:totalMatchedRows)
  field(:totals, as: GoogleApi.AdSense.V2.Model.Row)
  field(:warnings, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.AdSense.V2.Model.ReportResult do
  def decode(value, options) do
    GoogleApi.AdSense.V2.Model.ReportResult.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdSense.V2.Model.ReportResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
