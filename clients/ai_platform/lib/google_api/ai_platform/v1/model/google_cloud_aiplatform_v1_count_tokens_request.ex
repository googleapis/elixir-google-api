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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CountTokensRequest do
  @moduledoc """
  Request message for PredictionService.CountTokens.

  ## Attributes

  *   `contents` (*type:* `list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Content.t)`, *default:* `nil`) - Optional. Input content.
  *   `generationConfig` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GenerationConfig.t`, *default:* `nil`) - Optional. Generation config that the model will use to generate the response.
  *   `instances` (*type:* `list(any())`, *default:* `nil`) - Optional. The instances that are the input to token counting call. Schema is identical to the prediction schema of the underlying model.
  *   `model` (*type:* `String.t`, *default:* `nil`) - Optional. The name of the publisher model requested to serve the prediction. Format: `projects/{project}/locations/{location}/publishers/*/models/*`
  *   `systemInstruction` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Content.t`, *default:* `nil`) - Optional. The user provided system instructions for the model. Note: only text should be used in parts and content in each part will be in a separate paragraph.
  *   `tools` (*type:* `list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Tool.t)`, *default:* `nil`) - Optional. A list of `Tools` the model may use to generate the next response. A `Tool` is a piece of code that enables the system to interact with external systems to perform an action, or set of actions, outside of knowledge and scope of the model.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contents =>
            list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Content.t()) | nil,
          :generationConfig =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GenerationConfig.t() | nil,
          :instances => list(any()) | nil,
          :model => String.t() | nil,
          :systemInstruction =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Content.t() | nil,
          :tools => list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Tool.t()) | nil
        }

  field(:contents, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Content, type: :list)

  field(:generationConfig,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GenerationConfig
  )

  field(:instances, type: :list)
  field(:model)
  field(:systemInstruction, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Content)
  field(:tools, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Tool, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CountTokensRequest do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CountTokensRequest.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CountTokensRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
