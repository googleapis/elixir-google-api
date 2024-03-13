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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3TextToSpeechSettings do
  @moduledoc """
  Settings related to speech synthesizing.

  ## Attributes

  *   `synthesizeSpeechConfigs` (*type:* `%{optional(String.t) => GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3SynthesizeSpeechConfig.t}`, *default:* `nil`) - Configuration of how speech should be synthesized, mapping from language (https://cloud.google.com/dialogflow/cx/docs/reference/language) to SynthesizeSpeechConfig. These settings affect: - The [phone gateway](https://cloud.google.com/dialogflow/cx/docs/concept/integration/phone-gateway) synthesize configuration set via Agent.text_to_speech_settings. - How speech is synthesized when invoking session APIs. Agent.text_to_speech_settings only applies if OutputAudioConfig.synthesize_speech_config is not specified.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :synthesizeSpeechConfigs =>
            %{
              optional(String.t()) =>
                GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3SynthesizeSpeechConfig.t()
            }
            | nil
        }

  field(:synthesizeSpeechConfigs,
    as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3SynthesizeSpeechConfig,
    type: :map
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3TextToSpeechSettings do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3TextToSpeechSettings.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3TextToSpeechSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end