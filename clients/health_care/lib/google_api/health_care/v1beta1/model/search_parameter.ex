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

defmodule GoogleApi.HealthCare.V1beta1.Model.SearchParameter do
  @moduledoc """
  Contains the versioned name and the URL for one SearchParameter.

  ## Attributes

  *   `canonicalUrl` (*type:* `String.t`, *default:* `nil`) - The canonical url of the search parameter resource.
  *   `parameter` (*type:* `String.t`, *default:* `nil`) - The versioned name of the search parameter resource. The format is projects/{project-id}/locations/{location}/datasets/{dataset-id}/fhirStores/{fhirStore-id}/fhir/SearchParameter/{resource-id}/_history/{version-id} For fhir stores with disable_resource_versioning=true, the format is projects/{project-id}/locations/{location}/datasets/{dataset-id}/fhirStores/{fhirStore-id}/fhir/SearchParameter/{resource-id}/
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :canonicalUrl => String.t() | nil,
          :parameter => String.t() | nil
        }

  field(:canonicalUrl)
  field(:parameter)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1beta1.Model.SearchParameter do
  def decode(value, options) do
    GoogleApi.HealthCare.V1beta1.Model.SearchParameter.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1beta1.Model.SearchParameter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
