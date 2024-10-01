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

defmodule GoogleApi.TextToSpeech.V1.Model.SynthesizeSpeechRequest do
  @moduledoc """
  The top-level message sent by the client for the `SynthesizeSpeech` method.

  ## Attributes

  *   `advancedVoiceOptions` (*type:* `GoogleApi.TextToSpeech.V1.Model.AdvancedVoiceOptions.t`, *default:* `nil`) - Adnanced voice options.
  *   `audioConfig` (*type:* `GoogleApi.TextToSpeech.V1.Model.AudioConfig.t`, *default:* `nil`) - Required. The configuration of the synthesized audio.
  *   `input` (*type:* `GoogleApi.TextToSpeech.V1.Model.SynthesisInput.t`, *default:* `nil`) - Required. The Synthesizer requires either plain text or SSML as input.
  *   `voice` (*type:* `GoogleApi.TextToSpeech.V1.Model.VoiceSelectionParams.t`, *default:* `nil`) - Required. The desired voice of the synthesized audio.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :advancedVoiceOptions => GoogleApi.TextToSpeech.V1.Model.AdvancedVoiceOptions.t() | nil,
          :audioConfig => GoogleApi.TextToSpeech.V1.Model.AudioConfig.t() | nil,
          :input => GoogleApi.TextToSpeech.V1.Model.SynthesisInput.t() | nil,
          :voice => GoogleApi.TextToSpeech.V1.Model.VoiceSelectionParams.t() | nil
        }

  field(:advancedVoiceOptions, as: GoogleApi.TextToSpeech.V1.Model.AdvancedVoiceOptions)
  field(:audioConfig, as: GoogleApi.TextToSpeech.V1.Model.AudioConfig)
  field(:input, as: GoogleApi.TextToSpeech.V1.Model.SynthesisInput)
  field(:voice, as: GoogleApi.TextToSpeech.V1.Model.VoiceSelectionParams)
end

defimpl Poison.Decoder, for: GoogleApi.TextToSpeech.V1.Model.SynthesizeSpeechRequest do
  def decode(value, options) do
    GoogleApi.TextToSpeech.V1.Model.SynthesizeSpeechRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.TextToSpeech.V1.Model.SynthesizeSpeechRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
