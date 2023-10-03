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

defmodule GoogleApi.Speech.V2.Model.RecognitionFeatures do
  @moduledoc """
  Available recognition features.

  ## Attributes

  *   `diarizationConfig` (*type:* `GoogleApi.Speech.V2.Model.SpeakerDiarizationConfig.t`, *default:* `nil`) - Configuration to enable speaker diarization and set additional parameters to make diarization better suited for your application. When this is enabled, we send all the words from the beginning of the audio for the top alternative in every consecutive STREAMING responses. This is done in order to improve our speaker tags as our models learn to identify the speakers in the conversation over time. For non-streaming requests, the diarization results will be provided only in the top alternative of the FINAL SpeechRecognitionResult.
  *   `enableAutomaticPunctuation` (*type:* `boolean()`, *default:* `nil`) - If `true`, adds punctuation to recognition result hypotheses. This feature is only available in select languages. The default `false` value does not add punctuation to result hypotheses.
  *   `enableSpokenEmojis` (*type:* `boolean()`, *default:* `nil`) - The spoken emoji behavior for the call. If `true`, adds spoken emoji formatting for the request. This will replace spoken emojis with the corresponding Unicode symbols in the final transcript. If `false`, spoken emojis are not replaced.
  *   `enableSpokenPunctuation` (*type:* `boolean()`, *default:* `nil`) - The spoken punctuation behavior for the call. If `true`, replaces spoken punctuation with the corresponding symbols in the request. For example, "how are you question mark" becomes "how are you?". See https://cloud.google.com/speech-to-text/docs/spoken-punctuation for support. If `false`, spoken punctuation is not replaced.
  *   `enableWordConfidence` (*type:* `boolean()`, *default:* `nil`) - If `true`, the top result includes a list of words and the confidence for those words. If `false`, no word-level confidence information is returned. The default is `false`.
  *   `enableWordTimeOffsets` (*type:* `boolean()`, *default:* `nil`) - If `true`, the top result includes a list of words and the start and end time offsets (timestamps) for those words. If `false`, no word-level time offset information is returned. The default is `false`.
  *   `maxAlternatives` (*type:* `integer()`, *default:* `nil`) - Maximum number of recognition hypotheses to be returned. The server may return fewer than `max_alternatives`. Valid values are `0`-`30`. A value of `0` or `1` will return a maximum of one. If omitted, will return a maximum of one.
  *   `multiChannelMode` (*type:* `String.t`, *default:* `nil`) - Mode for recognizing multi-channel audio.
  *   `profanityFilter` (*type:* `boolean()`, *default:* `nil`) - If set to `true`, the server will attempt to filter out profanities, replacing all but the initial character in each filtered word with asterisks, for instance, "f***". If set to `false` or omitted, profanities won't be filtered out.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :diarizationConfig => GoogleApi.Speech.V2.Model.SpeakerDiarizationConfig.t() | nil,
          :enableAutomaticPunctuation => boolean() | nil,
          :enableSpokenEmojis => boolean() | nil,
          :enableSpokenPunctuation => boolean() | nil,
          :enableWordConfidence => boolean() | nil,
          :enableWordTimeOffsets => boolean() | nil,
          :maxAlternatives => integer() | nil,
          :multiChannelMode => String.t() | nil,
          :profanityFilter => boolean() | nil
        }

  field(:diarizationConfig, as: GoogleApi.Speech.V2.Model.SpeakerDiarizationConfig)
  field(:enableAutomaticPunctuation)
  field(:enableSpokenEmojis)
  field(:enableSpokenPunctuation)
  field(:enableWordConfidence)
  field(:enableWordTimeOffsets)
  field(:maxAlternatives)
  field(:multiChannelMode)
  field(:profanityFilter)
end

defimpl Poison.Decoder, for: GoogleApi.Speech.V2.Model.RecognitionFeatures do
  def decode(value, options) do
    GoogleApi.Speech.V2.Model.RecognitionFeatures.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Speech.V2.Model.RecognitionFeatures do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
