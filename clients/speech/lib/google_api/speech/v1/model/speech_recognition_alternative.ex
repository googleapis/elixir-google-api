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

defmodule GoogleApi.Speech.V1.Model.SpeechRecognitionAlternative do
  @moduledoc """
  Alternative hypotheses (a.k.a. n-best list).

  ## Attributes

  *   `confidence` (*type:* `number()`, *default:* `nil`) - The confidence estimate between 0.0 and 1.0. A higher number indicates an estimated greater likelihood that the recognized words are correct. This field is set only for the top alternative of a non-streaming result or, of a streaming result where `is_final=true`. This field is not guaranteed to be accurate and users should not rely on it to be always provided. The default of 0.0 is a sentinel value indicating `confidence` was not set.
  *   `transcript` (*type:* `String.t`, *default:* `nil`) - Transcript text representing the words that the user spoke. In languages that use spaces to separate words, the transcript might have a leading space if it isn't the first result. You can concatenate each result to obtain the full transcript without using a separator.
  *   `words` (*type:* `list(GoogleApi.Speech.V1.Model.WordInfo.t)`, *default:* `nil`) - A list of word-specific information for each recognized word. Note: When `enable_speaker_diarization` is true, you will see all the words from the beginning of the audio.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :confidence => number() | nil,
          :transcript => String.t() | nil,
          :words => list(GoogleApi.Speech.V1.Model.WordInfo.t()) | nil
        }

  field(:confidence)
  field(:transcript)
  field(:words, as: GoogleApi.Speech.V1.Model.WordInfo, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Speech.V1.Model.SpeechRecognitionAlternative do
  def decode(value, options) do
    GoogleApi.Speech.V1.Model.SpeechRecognitionAlternative.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Speech.V1.Model.SpeechRecognitionAlternative do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
