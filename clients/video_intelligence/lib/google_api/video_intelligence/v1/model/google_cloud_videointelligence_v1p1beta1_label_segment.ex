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

defmodule GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1LabelSegment do
  @moduledoc """
  Video segment level annotation results for label detection.

  ## Attributes

  - confidence (float()): Confidence that the label is accurate. Range: [0, 1]. Defaults to: `null`.
  - segment (GoogleCloudVideointelligenceV1p1beta1VideoSegment): Video segment where a label was detected. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :confidence => any(),
          :segment =>
            GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1VideoSegment.t()
        }

  field(:confidence)

  field(:segment,
    as: GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1VideoSegment
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1LabelSegment do
  def decode(value, options) do
    GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1LabelSegment.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1LabelSegment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
