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

defmodule GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1TextAnnotationTextProperty do
  @moduledoc """
  Additional information detected on the structural component.

  ## Attributes

  - detectedBreak (GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak): Detected start or end of a text segment. Defaults to: `null`.
  - detectedLanguages ([GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage]): A list of detected languages together with confidence. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :detectedBreak =>
            GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak.t(),
          :detectedLanguages =>
            list(
              GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage.t()
            )
        }

  field(:detectedBreak,
    as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak
  )

  field(:detectedLanguages,
    as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1TextAnnotationTextProperty do
  def decode(value, options) do
    GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1TextAnnotationTextProperty.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1TextAnnotationTextProperty do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
