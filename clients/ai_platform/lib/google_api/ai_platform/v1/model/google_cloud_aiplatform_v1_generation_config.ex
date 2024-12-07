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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GenerationConfig do
  @moduledoc """
  Generation config.

  ## Attributes

  *   `audioTimestamp` (*type:* `boolean()`, *default:* `nil`) - Optional. If enabled, audio timestamp will be included in the request to the model.
  *   `candidateCount` (*type:* `integer()`, *default:* `nil`) - Optional. Number of candidates to generate.
  *   `frequencyPenalty` (*type:* `number()`, *default:* `nil`) - Optional. Frequency penalties.
  *   `logprobs` (*type:* `integer()`, *default:* `nil`) - Optional. Logit probabilities.
  *   `maxOutputTokens` (*type:* `integer()`, *default:* `nil`) - Optional. The maximum number of output tokens to generate per message.
  *   `presencePenalty` (*type:* `number()`, *default:* `nil`) - Optional. Positive penalties.
  *   `responseLogprobs` (*type:* `boolean()`, *default:* `nil`) - Optional. If true, export the logprobs results in response.
  *   `responseMimeType` (*type:* `String.t`, *default:* `nil`) - Optional. Output response mimetype of the generated candidate text. Supported mimetype: - `text/plain`: (default) Text output. - `application/json`: JSON response in the candidates. The model needs to be prompted to output the appropriate response type, otherwise the behavior is undefined. This is a preview feature.
  *   `responseModalities` (*type:* `list(String.t)`, *default:* `nil`) - Optional. The modalities of the response.
  *   `responseSchema` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Schema.t`, *default:* `nil`) - Optional. The `Schema` object allows the definition of input and output data types. These types can be objects, but also primitives and arrays. Represents a select subset of an [OpenAPI 3.0 schema object](https://spec.openapis.org/oas/v3.0.3#schema). If set, a compatible response_mime_type must also be set. Compatible mimetypes: `application/json`: Schema for JSON response.
  *   `routingConfig` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GenerationConfigRoutingConfig.t`, *default:* `nil`) - Optional. Routing configuration.
  *   `seed` (*type:* `integer()`, *default:* `nil`) - Optional. Seed.
  *   `speechConfig` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SpeechConfig.t`, *default:* `nil`) - Optional. The speech generation config.
  *   `stopSequences` (*type:* `list(String.t)`, *default:* `nil`) - Optional. Stop sequences.
  *   `temperature` (*type:* `number()`, *default:* `nil`) - Optional. Controls the randomness of predictions.
  *   `tokenResolution` (*type:* `String.t`, *default:* `nil`) - Optional. If specified, the token resolution specified will be used.
  *   `topK` (*type:* `number()`, *default:* `nil`) - Optional. If specified, top-k sampling will be used.
  *   `topP` (*type:* `number()`, *default:* `nil`) - Optional. If specified, nucleus sampling will be used.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :audioTimestamp => boolean() | nil,
          :candidateCount => integer() | nil,
          :frequencyPenalty => number() | nil,
          :logprobs => integer() | nil,
          :maxOutputTokens => integer() | nil,
          :presencePenalty => number() | nil,
          :responseLogprobs => boolean() | nil,
          :responseMimeType => String.t() | nil,
          :responseModalities => list(String.t()) | nil,
          :responseSchema =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Schema.t() | nil,
          :routingConfig =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GenerationConfigRoutingConfig.t()
            | nil,
          :seed => integer() | nil,
          :speechConfig =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SpeechConfig.t() | nil,
          :stopSequences => list(String.t()) | nil,
          :temperature => number() | nil,
          :tokenResolution => String.t() | nil,
          :topK => number() | nil,
          :topP => number() | nil
        }

  field(:audioTimestamp)
  field(:candidateCount)
  field(:frequencyPenalty)
  field(:logprobs)
  field(:maxOutputTokens)
  field(:presencePenalty)
  field(:responseLogprobs)
  field(:responseMimeType)
  field(:responseModalities, type: :list)
  field(:responseSchema, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Schema)

  field(:routingConfig,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GenerationConfigRoutingConfig
  )

  field(:seed)
  field(:speechConfig, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SpeechConfig)
  field(:stopSequences, type: :list)
  field(:temperature)
  field(:tokenResolution)
  field(:topK)
  field(:topP)
end

defimpl Poison.Decoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GenerationConfig do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GenerationConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GenerationConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
