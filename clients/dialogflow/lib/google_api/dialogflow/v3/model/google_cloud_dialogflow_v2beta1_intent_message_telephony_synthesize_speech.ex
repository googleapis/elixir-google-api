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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech do
  @moduledoc """
  Synthesizes speech and plays back the synthesized audio to the caller in Telephony Gateway. Telephony Gateway takes the synthesizer settings from `DetectIntentResponse.output_audio_config` which can either be set at request-level or can come from the agent-level synthesizer config.

  ## Attributes

  *   `ssml` (*type:* `String.t`, *default:* `nil`) - The SSML to be synthesized. For more information, see [SSML](https://developers.google.com/actions/reference/ssml).
  *   `text` (*type:* `String.t`, *default:* `nil`) - The raw text to be synthesized.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ssml => String.t() | nil,
          :text => String.t() | nil
        }

  field(:ssml)
  field(:text)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
