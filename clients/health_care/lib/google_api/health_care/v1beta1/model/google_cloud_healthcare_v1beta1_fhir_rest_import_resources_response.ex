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

defmodule GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1FhirRestImportResourcesResponse do
  @moduledoc """
  Final response of importing resources.
  This structure will be included in the
  response to describe the detailed
  outcome. It will only be included when the operation finishes successfully.

  ## Attributes

  *   `fhirStore` (*type:* `String.t`, *default:* `nil`) - The name of the FHIR store where the resources have been imported, in the
      format
      `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`.
  *   `inputSize` (*type:* `String.t`, *default:* `nil`) - The total number of resources included in the source data.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fhirStore => String.t(),
          :inputSize => String.t()
        }

  field(:fhirStore)
  field(:inputSize)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1FhirRestImportResourcesResponse do
  def decode(value, options) do
    GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1FhirRestImportResourcesResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1FhirRestImportResourcesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
