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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3beta1InputAudioConfig do
  @moduledoc """
  Instructs the speech recognizer on how to process the audio content.

  ## Attributes

  *   `audioEncoding` (*type:* `String.t`, *default:* `nil`) - Required. Audio encoding of the audio content to process.
  *   `bargeInConfig` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3beta1BargeInConfig.t`, *default:* `nil`) - Configuration of barge-in behavior during the streaming of input audio.
  *   `enableWordInfo` (*type:* `boolean()`, *default:* `nil`) - Optional. If `true`, Dialogflow returns SpeechWordInfo in StreamingRecognitionResult with information about the recognized speech words, e.g. start and end time offsets. If false or unspecified, Speech doesn't return any word-level information.
  *   `model` (*type:* `String.t`, *default:* `nil`) - Optional. Which Speech model to select for the given request. For more information, see [Speech models](https://cloud.google.com/dialogflow/cx/docs/concept/speech-models).
  *   `modelVariant` (*type:* `String.t`, *default:* `nil`) - Optional. Which variant of the Speech model to use.
  *   `optOutConformerModelMigration` (*type:* `boolean()`, *default:* `nil`) - If `true`, the request will opt out for STT conformer model migration. This field will be deprecated once force migration takes place in June 2024. Please refer to [Dialogflow CX Speech model migration](https://cloud.google.com/dialogflow/cx/docs/concept/speech-model-migration).
  *   `phraseHints` (*type:* `list(String.t)`, *default:* `nil`) - Optional. A list of strings containing words and phrases that the speech recognizer should recognize with higher likelihood. See [the Cloud Speech documentation](https://cloud.google.com/speech-to-text/docs/basics#phrase-hints) for more details.
  *   `sampleRateHertz` (*type:* `integer()`, *default:* `nil`) - Sample rate (in Hertz) of the audio content sent in the query. Refer to [Cloud Speech API documentation](https://cloud.google.com/speech-to-text/docs/basics) for more details.
  *   `singleUtterance` (*type:* `boolean()`, *default:* `nil`) - Optional. If `false` (default), recognition does not cease until the client closes the stream. If `true`, the recognizer will detect a single spoken utterance in input audio. Recognition ceases when it detects the audio's voice has stopped or paused. In this case, once a detected intent is received, the client should close the stream and start a new request with a new stream as needed. Note: This setting is relevant only for streaming methods.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :audioEncoding => String.t() | nil,
          :bargeInConfig =>
            GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3beta1BargeInConfig.t() | nil,
          :enableWordInfo => boolean() | nil,
          :model => String.t() | nil,
          :modelVariant => String.t() | nil,
          :optOutConformerModelMigration => boolean() | nil,
          :phraseHints => list(String.t()) | nil,
          :sampleRateHertz => integer() | nil,
          :singleUtterance => boolean() | nil
        }

  field(:audioEncoding)

  field(:bargeInConfig,
    as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3beta1BargeInConfig
  )

  field(:enableWordInfo)
  field(:model)
  field(:modelVariant)
  field(:optOutConformerModelMigration)
  field(:phraseHints, type: :list)
  field(:sampleRateHertz)
  field(:singleUtterance)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3beta1InputAudioConfig do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3beta1InputAudioConfig.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3beta1InputAudioConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
