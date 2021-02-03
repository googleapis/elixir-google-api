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

defmodule GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3BatchProcessRequest do
  @moduledoc """
  Request message for batch process document method.

  ## Attributes

  *   `documentOutputConfig` (*type:* `GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3DocumentOutputConfig.t`, *default:* `nil`) - The overall output config for batch process.
  *   `inputConfigs` (*type:* `list(GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig.t)`, *default:* `nil`) - The input config for each single document in the batch process.
  *   `inputDocuments` (*type:* `GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig.t`, *default:* `nil`) - The input documents for batch process.
  *   `outputConfig` (*type:* `GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig.t`, *default:* `nil`) - The overall output config for batch process.
  *   `skipHumanReview` (*type:* `boolean()`, *default:* `nil`) - Whether Human Review feature should be skipped for this request. Default to false.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :documentOutputConfig =>
            GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3DocumentOutputConfig.t(),
          :inputConfigs =>
            list(
              GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig.t()
            ),
          :inputDocuments =>
            GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig.t(),
          :outputConfig =>
            GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig.t(),
          :skipHumanReview => boolean()
        }

  field(:documentOutputConfig,
    as: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3DocumentOutputConfig
  )

  field(:inputConfigs,
    as:
      GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig,
    type: :list
  )

  field(:inputDocuments,
    as:
      GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig
  )

  field(:outputConfig,
    as:
      GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig
  )

  field(:skipHumanReview)
end

defimpl Poison.Decoder,
  for: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3BatchProcessRequest do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3BatchProcessRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3BatchProcessRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
