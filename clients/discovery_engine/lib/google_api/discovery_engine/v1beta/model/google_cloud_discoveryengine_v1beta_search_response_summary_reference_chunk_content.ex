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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseSummaryReferenceChunkContent do
  @moduledoc """
  Chunk content.

  ## Attributes

  *   `blobAttachmentIndexes` (*type:* `list(String.t)`, *default:* `nil`) - Output only. Stores indexes of blobattachments linked to this chunk.
  *   `content` (*type:* `String.t`, *default:* `nil`) - Chunk textual content.
  *   `pageIdentifier` (*type:* `String.t`, *default:* `nil`) - Page identifier.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :blobAttachmentIndexes => list(String.t()) | nil,
          :content => String.t() | nil,
          :pageIdentifier => String.t() | nil
        }

  field(:blobAttachmentIndexes, type: :list)
  field(:content)
  field(:pageIdentifier)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseSummaryReferenceChunkContent do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseSummaryReferenceChunkContent.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseSummaryReferenceChunkContent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
