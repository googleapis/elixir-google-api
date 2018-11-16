# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative do
  @moduledoc """
  Alternative hypotheses (a.k.a. n-best list).

  ## Attributes

  - confidence (float()): The confidence estimate between 0.0 and 1.0. A higher number indicates an estimated greater likelihood that the recognized words are correct. This field is typically provided only for the top hypothesis, and only for &#x60;is_final&#x3D;true&#x60; results. Clients should not rely on the &#x60;confidence&#x60; field as it is not guaranteed to be accurate or consistent. The default of 0.0 is a sentinel value indicating &#x60;confidence&#x60; was not set. Defaults to: `null`.
  - transcript (String.t): Transcript text representing the words that the user spoke. Defaults to: `null`.
  - words ([GoogleCloudVideointelligenceV1p2beta1WordInfo]): A list of word-specific information for each recognized word. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :confidence => any(),
          :transcript => any(),
          :words =>
            list(
              GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p2beta1WordInfo.t()
            )
        }

  field(:confidence)
  field(:transcript)

  field(:words,
    as: GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p2beta1WordInfo,
    type: :list
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative do
  def decode(value, options) do
    GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
