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

defmodule GoogleApi.Speech.V1.Model.RecognizeResponse do
  @moduledoc """
  The only message returned to the client by the `Recognize` method. It
  contains the result as zero or more sequential `SpeechRecognitionResult`
  messages.

  ## Attributes

  *   `results` (*type:* `list(GoogleApi.Speech.V1.Model.SpeechRecognitionResult.t)`, *default:* `nil`) - Output only. Sequential list of transcription results corresponding to
      sequential portions of audio.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :results => list(GoogleApi.Speech.V1.Model.SpeechRecognitionResult.t())
        }

  field(:results, as: GoogleApi.Speech.V1.Model.SpeechRecognitionResult, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Speech.V1.Model.RecognizeResponse do
  def decode(value, options) do
    GoogleApi.Speech.V1.Model.RecognizeResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Speech.V1.Model.RecognizeResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
