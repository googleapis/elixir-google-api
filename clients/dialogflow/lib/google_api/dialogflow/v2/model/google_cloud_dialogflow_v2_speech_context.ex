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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SpeechContext do
  @moduledoc """
  Hints for the speech recognizer to help with recognition in a specific conversation state.

  ## Attributes

  *   `boost` (*type:* `number()`, *default:* `nil`) - Optional. Boost for this context compared to other contexts: * If the boost is positive, Dialogflow will increase the probability that the phrases in this context are recognized over similar sounding phrases. * If the boost is unspecified or non-positive, Dialogflow will not apply any boost. Dialogflow recommends that you use boosts in the range (0, 20] and that you find a value that fits your use case with binary search.
  *   `phrases` (*type:* `list(String.t)`, *default:* `nil`) - Optional. A list of strings containing words and phrases that the speech recognizer should recognize with higher likelihood. This list can be used to: * improve accuracy for words and phrases you expect the user to say, e.g. typical commands for your Dialogflow agent * add additional words to the speech recognizer vocabulary * ... See the [Cloud Speech documentation](https://cloud.google.com/speech-to-text/quotas) for usage limits.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :boost => number(),
          :phrases => list(String.t())
        }

  field(:boost)
  field(:phrases, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SpeechContext do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SpeechContext.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SpeechContext do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
