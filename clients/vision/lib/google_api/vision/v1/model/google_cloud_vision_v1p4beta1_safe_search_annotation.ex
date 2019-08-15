# Copyright 2019 Google LLC
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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1SafeSearchAnnotation do
  @moduledoc """
  Set of features pertaining to the image, computed by computer vision
  methods over safe-search verticals (for example, adult, spoof, medical,
  violence).

  ## Attributes

  *   `adult` (*type:* `String.t`, *default:* `nil`) - Represents the adult content likelihood for the image. Adult content may
      contain elements such as nudity, pornographic images or cartoons, or
      sexual activities.
  *   `adultConfidence` (*type:* `number()`, *default:* `nil`) - Confidence of adult_score. Range [0, 1]. 0 means not confident, 1 means
      very confident.
  *   `medical` (*type:* `String.t`, *default:* `nil`) - Likelihood that this is a medical image.
  *   `medicalConfidence` (*type:* `number()`, *default:* `nil`) - Confidence of medical_score. Range [0, 1]. 0 means not confident, 1 means
      very confident.
  *   `nsfwConfidence` (*type:* `number()`, *default:* `nil`) - Confidence of nsfw_score. Range [0, 1]. 0 means not confident, 1 means very
      confident.
  *   `racy` (*type:* `String.t`, *default:* `nil`) - Likelihood that the request image contains racy content. Racy content may
      include (but is not limited to) skimpy or sheer clothing, strategically
      covered nudity, lewd or provocative poses, or close-ups of sensitive
      body areas.
  *   `racyConfidence` (*type:* `number()`, *default:* `nil`) - Confidence of racy_score. Range [0, 1]. 0 means not confident, 1 means very
      confident.
  *   `spoof` (*type:* `String.t`, *default:* `nil`) - Spoof likelihood. The likelihood that an modification
      was made to the image's canonical version to make it appear
      funny or offensive.
  *   `spoofConfidence` (*type:* `number()`, *default:* `nil`) - Confidence of spoof_score. Range [0, 1]. 0 means not confident, 1 means
      very confident.
  *   `violence` (*type:* `String.t`, *default:* `nil`) - Likelihood that this image contains violent content.
  *   `violenceConfidence` (*type:* `number()`, *default:* `nil`) - Confidence of violence_score. Range [0, 1]. 0 means not confident, 1 means
      very confident.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :adult => String.t(),
          :adultConfidence => number(),
          :medical => String.t(),
          :medicalConfidence => number(),
          :nsfwConfidence => number(),
          :racy => String.t(),
          :racyConfidence => number(),
          :spoof => String.t(),
          :spoofConfidence => number(),
          :violence => String.t(),
          :violenceConfidence => number()
        }

  field(:adult)
  field(:adultConfidence)
  field(:medical)
  field(:medicalConfidence)
  field(:nsfwConfidence)
  field(:racy)
  field(:racyConfidence)
  field(:spoof)
  field(:spoofConfidence)
  field(:violence)
  field(:violenceConfidence)
end

defimpl Poison.Decoder,
  for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1SafeSearchAnnotation do
  def decode(value, options) do
    GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1SafeSearchAnnotation.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1SafeSearchAnnotation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
