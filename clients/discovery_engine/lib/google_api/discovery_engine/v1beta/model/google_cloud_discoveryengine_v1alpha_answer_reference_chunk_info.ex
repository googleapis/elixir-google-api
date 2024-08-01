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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaAnswerReferenceChunkInfo do
  @moduledoc """
  Chunk information.

  ## Attributes

  *   `chunk` (*type:* `String.t`, *default:* `nil`) - Chunk resource name.
  *   `content` (*type:* `String.t`, *default:* `nil`) - Chunk textual content.
  *   `documentMetadata` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaAnswerReferenceChunkInfoDocumentMetadata.t`, *default:* `nil`) - Document metadata.
  *   `relevanceScore` (*type:* `number()`, *default:* `nil`) - The relevance of the chunk for a given query. Values range from 0.0 (completely irrelevant) to 1.0 (completely relevant). This value is for informational purpose only. It may change for the same query and chunk at any time due to a model retraining or change in implementation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :chunk => String.t() | nil,
          :content => String.t() | nil,
          :documentMetadata =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaAnswerReferenceChunkInfoDocumentMetadata.t()
            | nil,
          :relevanceScore => number() | nil
        }

  field(:chunk)
  field(:content)

  field(:documentMetadata,
    as:
      GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaAnswerReferenceChunkInfoDocumentMetadata
  )

  field(:relevanceScore)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaAnswerReferenceChunkInfo do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaAnswerReferenceChunkInfo.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaAnswerReferenceChunkInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
