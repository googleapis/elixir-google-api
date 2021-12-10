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

defmodule GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1BigQueryTableSpec do
  @moduledoc """
  Describes a BigQuery table.

  ## Attributes

  *   `tableSourceType` (*type:* `String.t`, *default:* `nil`) - Output only. The table source type.
  *   `tableSpec` (*type:* `GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1TableSpec.t`, *default:* `nil`) - Specification of a BigQuery table. Populated only if the `table_source_type` is `BIGQUERY_TABLE`.
  *   `viewSpec` (*type:* `GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1ViewSpec.t`, *default:* `nil`) - Table view specification. Populated only if the `table_source_type` is `BIGQUERY_VIEW`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :tableSourceType => String.t() | nil,
          :tableSpec =>
            GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1TableSpec.t() | nil,
          :viewSpec => GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1ViewSpec.t() | nil
        }

  field(:tableSourceType)
  field(:tableSpec, as: GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1TableSpec)
  field(:viewSpec, as: GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1ViewSpec)
end

defimpl Poison.Decoder,
  for: GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1BigQueryTableSpec do
  def decode(value, options) do
    GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1BigQueryTableSpec.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1BigQueryTableSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
