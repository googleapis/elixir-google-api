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

defmodule GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1TrainProcessorVersionRequest do
  @moduledoc """
  Request message for the TrainProcessorVersion method.

  ## Attributes

  *   `baseProcessorVersion` (*type:* `String.t`, *default:* `nil`) - Optional. The processor version to use as a base for training. This processor version must be a child of `parent`. Format: `projects/{project}/locations/{location}/processors/{processor}/processorVersions/{processorVersion}`.
  *   `customDocumentExtractionOptions` (*type:* `GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1TrainProcessorVersionRequestCustomDocumentExtractionOptions.t`, *default:* `nil`) - Options to control Custom Document Extraction (CDE) Processor.
  *   `documentSchema` (*type:* `GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1DocumentSchema.t`, *default:* `nil`) - Optional. The schema the processor version will be trained with.
  *   `inputData` (*type:* `GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1TrainProcessorVersionRequestInputData.t`, *default:* `nil`) - Optional. The input data used to train the ProcessorVersion.
  *   `processorVersion` (*type:* `GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1ProcessorVersion.t`, *default:* `nil`) - Required. The processor version to be created.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :baseProcessorVersion => String.t() | nil,
          :customDocumentExtractionOptions =>
            GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1TrainProcessorVersionRequestCustomDocumentExtractionOptions.t()
            | nil,
          :documentSchema =>
            GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1DocumentSchema.t() | nil,
          :inputData =>
            GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1TrainProcessorVersionRequestInputData.t()
            | nil,
          :processorVersion =>
            GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1ProcessorVersion.t() | nil
        }

  field(:baseProcessorVersion)

  field(:customDocumentExtractionOptions,
    as:
      GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1TrainProcessorVersionRequestCustomDocumentExtractionOptions
  )

  field(:documentSchema, as: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1DocumentSchema)

  field(:inputData,
    as: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1TrainProcessorVersionRequestInputData
  )

  field(:processorVersion,
    as: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1ProcessorVersion
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1TrainProcessorVersionRequest do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1TrainProcessorVersionRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1TrainProcessorVersionRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end