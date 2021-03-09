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

defmodule GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2ProcessDocumentRequest do
  @moduledoc """
  Request to process one document.

  ## Attributes

  *   `automlParams` (*type:* `GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2AutoMlParams.t`, *default:* `nil`) - Controls AutoML model prediction behavior. AutoMlParams cannot be used together with other Params.
  *   `documentType` (*type:* `String.t`, *default:* `nil`) - Specifies a known document type for deeper structure detection. Valid values are currently "general" and "invoice". If not provided, "general"\\ is used as default. If any other value is given, the request is rejected.
  *   `entityExtractionParams` (*type:* `GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2EntityExtractionParams.t`, *default:* `nil`) - Controls entity extraction behavior. If not specified, the system will decide reasonable defaults.
  *   `formExtractionParams` (*type:* `GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2FormExtractionParams.t`, *default:* `nil`) - Controls form extraction behavior. If not specified, the system will decide reasonable defaults.
  *   `inputConfig` (*type:* `GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2InputConfig.t`, *default:* `nil`) - Required. Information about the input file.
  *   `ocrParams` (*type:* `GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2OcrParams.t`, *default:* `nil`) - Controls OCR behavior. If not specified, the system will decide reasonable defaults.
  *   `outputConfig` (*type:* `GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2OutputConfig.t`, *default:* `nil`) - The desired output location. This field is only needed in BatchProcessDocumentsRequest.
  *   `parent` (*type:* `String.t`, *default:* `nil`) - Target project and location to make a call. Format: `projects/{project-id}/locations/{location-id}`. If no location is specified, a region will be chosen automatically. This field is only populated when used in ProcessDocument method.
  *   `tableExtractionParams` (*type:* `GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2TableExtractionParams.t`, *default:* `nil`) - Controls table extraction behavior. If not specified, the system will decide reasonable defaults.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :automlParams =>
            GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2AutoMlParams.t() | nil,
          :documentType => String.t() | nil,
          :entityExtractionParams =>
            GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2EntityExtractionParams.t()
            | nil,
          :formExtractionParams =>
            GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2FormExtractionParams.t()
            | nil,
          :inputConfig =>
            GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2InputConfig.t() | nil,
          :ocrParams =>
            GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2OcrParams.t() | nil,
          :outputConfig =>
            GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2OutputConfig.t() | nil,
          :parent => String.t() | nil,
          :tableExtractionParams =>
            GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2TableExtractionParams.t()
            | nil
        }

  field(:automlParams,
    as: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2AutoMlParams
  )

  field(:documentType)

  field(:entityExtractionParams,
    as: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2EntityExtractionParams
  )

  field(:formExtractionParams,
    as: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2FormExtractionParams
  )

  field(:inputConfig,
    as: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2InputConfig
  )

  field(:ocrParams, as: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2OcrParams)

  field(:outputConfig,
    as: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2OutputConfig
  )

  field(:parent)

  field(:tableExtractionParams,
    as: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2TableExtractionParams
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2ProcessDocumentRequest do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2ProcessDocumentRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2ProcessDocumentRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
