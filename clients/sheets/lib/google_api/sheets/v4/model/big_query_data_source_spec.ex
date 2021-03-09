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

defmodule GoogleApi.Sheets.V4.Model.BigQueryDataSourceSpec do
  @moduledoc """
  The specification of a BigQuery data source that's connected to a sheet.

  ## Attributes

  *   `projectId` (*type:* `String.t`, *default:* `nil`) - The ID of a BigQuery enabled GCP project with a billing account attached. For any queries executed against the data source, the project is charged.
  *   `querySpec` (*type:* `GoogleApi.Sheets.V4.Model.BigQueryQuerySpec.t`, *default:* `nil`) - A BigQueryQuerySpec.
  *   `tableSpec` (*type:* `GoogleApi.Sheets.V4.Model.BigQueryTableSpec.t`, *default:* `nil`) - A BigQueryTableSpec.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :projectId => String.t() | nil,
          :querySpec => GoogleApi.Sheets.V4.Model.BigQueryQuerySpec.t() | nil,
          :tableSpec => GoogleApi.Sheets.V4.Model.BigQueryTableSpec.t() | nil
        }

  field(:projectId)
  field(:querySpec, as: GoogleApi.Sheets.V4.Model.BigQueryQuerySpec)
  field(:tableSpec, as: GoogleApi.Sheets.V4.Model.BigQueryTableSpec)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.BigQueryDataSourceSpec do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.BigQueryDataSourceSpec.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.BigQueryDataSourceSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
