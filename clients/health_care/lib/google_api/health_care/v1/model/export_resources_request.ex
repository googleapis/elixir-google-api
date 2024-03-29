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

defmodule GoogleApi.HealthCare.V1.Model.ExportResourcesRequest do
  @moduledoc """
  Request to export resources.

  ## Attributes

  *   `_since` (*type:* `String.t`, *default:* `nil`) - If provided, only resources updated after this time are exported. The time uses the format YYYY-MM-DDThh:mm:ss.sss+zz:zz. For example, `2015-02-07T13:28:17.239+02:00` or `2017-01-01T00:00:00Z`. The time must be specified to the second and include a time zone.
  *   `_type` (*type:* `String.t`, *default:* `nil`) - String of comma-delimited FHIR resource types. If provided, only resources of the specified resource type(s) are exported.
  *   `bigqueryDestination` (*type:* `GoogleApi.HealthCare.V1.Model.GoogleCloudHealthcareV1FhirBigQueryDestination.t`, *default:* `nil`) - The BigQuery output destination. The Cloud Healthcare Service Agent requires two IAM roles on the BigQuery location: `roles/bigquery.dataEditor` and `roles/bigquery.jobUser`. The output is one BigQuery table per resource type. Unlike when setting `BigQueryDestination` for `StreamConfig`, `ExportResources` does not create BigQuery views.
  *   `gcsDestination` (*type:* `GoogleApi.HealthCare.V1.Model.GoogleCloudHealthcareV1FhirGcsDestination.t`, *default:* `nil`) - The Cloud Storage output destination. The Healthcare Service Agent account requires the `roles/storage.objectAdmin` role on the Cloud Storage location. The exported outputs are organized by FHIR resource types. The server creates one object per resource type. Each object contains newline delimited JSON, and each line is a FHIR resource.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :_since => String.t() | nil,
          :_type => String.t() | nil,
          :bigqueryDestination =>
            GoogleApi.HealthCare.V1.Model.GoogleCloudHealthcareV1FhirBigQueryDestination.t() | nil,
          :gcsDestination =>
            GoogleApi.HealthCare.V1.Model.GoogleCloudHealthcareV1FhirGcsDestination.t() | nil
        }

  field(:_since)
  field(:_type)

  field(:bigqueryDestination,
    as: GoogleApi.HealthCare.V1.Model.GoogleCloudHealthcareV1FhirBigQueryDestination
  )

  field(:gcsDestination,
    as: GoogleApi.HealthCare.V1.Model.GoogleCloudHealthcareV1FhirGcsDestination
  )
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1.Model.ExportResourcesRequest do
  def decode(value, options) do
    GoogleApi.HealthCare.V1.Model.ExportResourcesRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1.Model.ExportResourcesRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
