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

defmodule GoogleApi.HealthCare.V1beta1.Model.StreamConfig do
  @moduledoc """
  Contains configuration for streaming FHIR export.

  ## Attributes

  *   `bigqueryDestination` (*type:* `GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1FhirBigQueryDestination.t`, *default:* `nil`) - The destination BigQuery structure that contains both the dataset location and corresponding schema config. The output is organized in one table per resource type. The server reuses the existing tables (if any) that are named after the resource types, e.g. "Patient", "Observation". When there is no existing table for a given resource type, the server attempts to create one. When a table schema doesn't align with the schema config, either because of existing incompatible schema or out of band incompatible modification, the server does not stream in new data. One resolution in this case is to delete the incompatible table and let the server recreate one, though the newly created table only contains data after the table recreation. BigQuery imposes a 1 MB limit on streaming insert row size, therefore any resource mutation that generates more than 1 MB of BigQuery data will not be streamed. Results are written to BigQuery tables according to the parameters in BigQueryDestination.WriteDisposition. Different versions of the same resource are distinguishable by the meta.versionId and meta.lastUpdated columns. The operation (CREATE/UPDATE/DELETE) that results in the new version is recorded in the meta.tag. The tables contain all historical resource versions since streaming was enabled. For query convenience, the server also creates one view per table of the same name containing only the current resource version. The streamed data in the BigQuery dataset is not guaranteed to be completely unique. The combination of the id and meta.versionId columns should ideally identify a single unique row. But in rare cases, duplicates may exist. At query time, users may use the SQL select statement to keep only one of the duplicate rows given an id and meta.versionId pair. Alternatively, the server created view mentioned above also filters out duplicates. If a resource mutation cannot be streamed to BigQuery, errors will be logged to Cloud Logging (see [Viewing error logs in Cloud Logging](https://cloud.google.com/healthcare/docs/how-tos/logging)).
  *   `resourceTypes` (*type:* `list(String.t)`, *default:* `nil`) - Supply a FHIR resource type (such as "Patient" or "Observation"). See https://www.hl7.org/fhir/valueset-resource-types.html for a list of all FHIR resource types. The server treats an empty list as an intent to stream all the supported resource types in this FHIR store.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bigqueryDestination =>
            GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1FhirBigQueryDestination.t()
            | nil,
          :resourceTypes => list(String.t()) | nil
        }

  field(:bigqueryDestination,
    as: GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1FhirBigQueryDestination
  )

  field(:resourceTypes, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1beta1.Model.StreamConfig do
  def decode(value, options) do
    GoogleApi.HealthCare.V1beta1.Model.StreamConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1beta1.Model.StreamConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
