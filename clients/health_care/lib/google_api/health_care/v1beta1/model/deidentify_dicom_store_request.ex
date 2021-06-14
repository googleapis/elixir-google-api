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

defmodule GoogleApi.HealthCare.V1beta1.Model.DeidentifyDicomStoreRequest do
  @moduledoc """
  Creates a new DICOM store with sensitive information de-identified.

  ## Attributes

  *   `config` (*type:* `GoogleApi.HealthCare.V1beta1.Model.DeidentifyConfig.t`, *default:* `nil`) - De-identify configuration.
  *   `destinationStore` (*type:* `String.t`, *default:* `nil`) - The name of the DICOM store to create and write the redacted data to. For example, `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`. * The destination dataset must exist. * The source dataset and destination dataset must both reside in the same location. De-identifying data across multiple locations is not supported. * The destination DICOM store must not exist. * The caller must have the necessary permissions to create the destination DICOM store.
  *   `filterConfig` (*type:* `GoogleApi.HealthCare.V1beta1.Model.DicomFilterConfig.t`, *default:* `nil`) - Filter configuration.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :config => GoogleApi.HealthCare.V1beta1.Model.DeidentifyConfig.t() | nil,
          :destinationStore => String.t() | nil,
          :filterConfig => GoogleApi.HealthCare.V1beta1.Model.DicomFilterConfig.t() | nil
        }

  field(:config, as: GoogleApi.HealthCare.V1beta1.Model.DeidentifyConfig)
  field(:destinationStore)
  field(:filterConfig, as: GoogleApi.HealthCare.V1beta1.Model.DicomFilterConfig)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1beta1.Model.DeidentifyDicomStoreRequest do
  def decode(value, options) do
    GoogleApi.HealthCare.V1beta1.Model.DeidentifyDicomStoreRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1beta1.Model.DeidentifyDicomStoreRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
