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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1RagRetrievalConfig do
  @moduledoc """
  Specifies the context retrieval config.

  ## Attributes

  *   `filter` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1RagRetrievalConfigFilter.t`, *default:* `nil`) - Optional. Config for filters.
  *   `ranking` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1RagRetrievalConfigRanking.t`, *default:* `nil`) - Optional. Config for ranking and reranking.
  *   `topK` (*type:* `integer()`, *default:* `nil`) - Optional. The number of contexts to retrieve.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :filter =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1RagRetrievalConfigFilter.t()
            | nil,
          :ranking =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1RagRetrievalConfigRanking.t()
            | nil,
          :topK => integer() | nil
        }

  field(:filter, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1RagRetrievalConfigFilter)

  field(:ranking,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1RagRetrievalConfigRanking
  )

  field(:topK)
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1RagRetrievalConfig do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1RagRetrievalConfig.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1RagRetrievalConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
