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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SpeechToTextConfig do
  @moduledoc """
  Configures speech transcription for ConversationProfile.

  ## Attributes

  *   `audioEncoding` (*type:* `String.t`, *default:* `nil`) - Audio encoding of the audio content to process.
  *   `enableWordInfo` (*type:* `boolean()`, *default:* `nil`) - If `true`, Dialogflow returns SpeechWordInfo in StreamingRecognitionResult with information about the recognized speech words, e.g. start and end time offsets. If false or unspecified, Speech doesn't return any word-level information.
  *   `languageCode` (*type:* `String.t`, *default:* `nil`) - The language of the supplied audio. Dialogflow does not do translations. See [Language Support](https://cloud.google.com/dialogflow/docs/reference/language) for a list of the currently supported language codes. Note that queries in the same session do not necessarily need to specify the same language.
  *   `model` (*type:* `String.t`, *default:* `nil`) - Which Speech model to select. Select the model best suited to your domain to get best results. If a model is not explicitly specified, then Dialogflow auto-selects a model based on other parameters in the SpeechToTextConfig and Agent settings. If enhanced speech model is enabled for the agent and an enhanced version of the specified model for the language does not exist, then the speech is recognized using the standard version of the specified model. Refer to [Cloud Speech API documentation](https://cloud.google.com/speech-to-text/docs/basics#select-model) for more details. If you specify a model, the following models typically have the best performance: - phone_call (best for Agent Assist and telephony) - latest_short (best for Dialogflow non-telephony) - command_and_search Leave this field unspecified to use [Agent Speech settings](https://cloud.google.com/dialogflow/cx/docs/concept/agent#settings-speech) for model selection.
  *   `sampleRateHertz` (*type:* `integer()`, *default:* `nil`) - Sample rate (in Hertz) of the audio content sent in the query. Refer to [Cloud Speech API documentation](https://cloud.google.com/speech-to-text/docs/basics) for more details.
  *   `speechModelVariant` (*type:* `String.t`, *default:* `nil`) - The speech model used in speech to text. `SPEECH_MODEL_VARIANT_UNSPECIFIED`, `USE_BEST_AVAILABLE` will be treated as `USE_ENHANCED`. It can be overridden in AnalyzeContentRequest and StreamingAnalyzeContentRequest request. If enhanced model variant is specified and an enhanced version of the specified model for the language does not exist, then it would emit an error.
  *   `useTimeoutBasedEndpointing` (*type:* `boolean()`, *default:* `nil`) - Use timeout based endpointing, interpreting endpointer sensitivy as seconds of timeout value.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :audioEncoding => String.t() | nil,
          :enableWordInfo => boolean() | nil,
          :languageCode => String.t() | nil,
          :model => String.t() | nil,
          :sampleRateHertz => integer() | nil,
          :speechModelVariant => String.t() | nil,
          :useTimeoutBasedEndpointing => boolean() | nil
        }

  field(:audioEncoding)
  field(:enableWordInfo)
  field(:languageCode)
  field(:model)
  field(:sampleRateHertz)
  field(:speechModelVariant)
  field(:useTimeoutBasedEndpointing)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SpeechToTextConfig do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SpeechToTextConfig.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SpeechToTextConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
