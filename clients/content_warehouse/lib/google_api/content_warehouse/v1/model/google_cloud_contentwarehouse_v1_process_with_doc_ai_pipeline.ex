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

defmodule GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1ProcessWithDocAiPipeline do
  @moduledoc """
  The configuration of processing documents in Document Warehouse with DocAi processors pipeline.

  ## Attributes

  *   `documents` (*type:* `list(String.t)`, *default:* `nil`) - The list of all the resource names of the documents to be processed. Format: projects/{project_number}/locations/{location}/documents/{document_id}.
  *   `exportFolderPath` (*type:* `String.t`, *default:* `nil`) - The Cloud Storage folder path used to store the exported documents before being sent to CDW. Format: `gs:///`.
  *   `processorInfo` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1ProcessorInfo.t`, *default:* `nil`) - The CDW processor information.
  *   `processorResultsFolderPath` (*type:* `String.t`, *default:* `nil`) - The Cloud Storage folder path used to store the raw results from processors. Format: `gs:///`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :documents => list(String.t()) | nil,
          :exportFolderPath => String.t() | nil,
          :processorInfo =>
            GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1ProcessorInfo.t()
            | nil,
          :processorResultsFolderPath => String.t() | nil
        }

  field(:documents, type: :list)
  field(:exportFolderPath)

  field(:processorInfo,
    as: GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1ProcessorInfo
  )

  field(:processorResultsFolderPath)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1ProcessWithDocAiPipeline do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1ProcessWithDocAiPipeline.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1ProcessWithDocAiPipeline do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
