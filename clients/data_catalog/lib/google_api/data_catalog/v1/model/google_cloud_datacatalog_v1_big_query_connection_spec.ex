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

defmodule GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1BigQueryConnectionSpec do
  @moduledoc """
  Specification for the BigQuery connection.

  ## Attributes

  *   `cloudSql` (*type:* `GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1CloudSqlBigQueryConnectionSpec.t`, *default:* `nil`) - Specification for the BigQuery connection to a Cloud SQL instance.
  *   `connectionType` (*type:* `String.t`, *default:* `nil`) - The type of the BigQuery connection.
  *   `hasCredential` (*type:* `boolean()`, *default:* `nil`) - True if there are credentials attached to the BigQuery connection; false otherwise.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cloudSql =>
            GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1CloudSqlBigQueryConnectionSpec.t()
            | nil,
          :connectionType => String.t() | nil,
          :hasCredential => boolean() | nil
        }

  field(:cloudSql,
    as: GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1CloudSqlBigQueryConnectionSpec
  )

  field(:connectionType)
  field(:hasCredential)
end

defimpl Poison.Decoder,
  for: GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1BigQueryConnectionSpec do
  def decode(value, options) do
    GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1BigQueryConnectionSpec.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1BigQueryConnectionSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
