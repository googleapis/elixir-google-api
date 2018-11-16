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

defmodule GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1EntityAnnotation do
  @moduledoc """
  Set of detected entity features.

  ## Attributes

  - boundingPoly (GoogleCloudVisionV1p1beta1BoundingPoly): Image region to which this entity belongs. Not produced for &#x60;LABEL_DETECTION&#x60; features. Defaults to: `null`.
  - confidence (float()): **Deprecated. Use &#x60;score&#x60; instead.** The accuracy of the entity detection in an image. For example, for an image in which the \&quot;Eiffel Tower\&quot; entity is detected, this field represents the confidence that there is a tower in the query image. Range [0, 1]. Defaults to: `null`.
  - description (String.t): Entity textual description, expressed in its &#x60;locale&#x60; language. Defaults to: `null`.
  - locale (String.t): The language code for the locale in which the entity textual &#x60;description&#x60; is expressed. Defaults to: `null`.
  - locations ([GoogleCloudVisionV1p1beta1LocationInfo]): The location information for the detected entity. Multiple &#x60;LocationInfo&#x60; elements can be present because one location may indicate the location of the scene in the image, and another location may indicate the location of the place where the image was taken. Location information is usually present for landmarks. Defaults to: `null`.
  - mid (String.t): Opaque entity ID. Some IDs may be available in [Google Knowledge Graph Search API](https://developers.google.com/knowledge-graph/). Defaults to: `null`.
  - properties ([GoogleCloudVisionV1p1beta1Property]): Some entities may have optional user-supplied &#x60;Property&#x60; (name/value) fields, such a score or string that qualifies the entity. Defaults to: `null`.
  - score (float()): Overall score of the result. Range [0, 1]. Defaults to: `null`.
  - topicality (float()): The relevancy of the ICA (Image Content Annotation) label to the image. For example, the relevancy of \&quot;tower\&quot; is likely higher to an image containing the detected \&quot;Eiffel Tower\&quot; than to an image containing a detected distant towering building, even though the confidence that there is a tower in each image may be the same. Range [0, 1]. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :boundingPoly => GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1BoundingPoly.t(),
          :confidence => any(),
          :description => any(),
          :locale => any(),
          :locations =>
            list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1LocationInfo.t()),
          :mid => any(),
          :properties => list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1Property.t()),
          :score => any(),
          :topicality => any()
        }

  field(:boundingPoly, as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1BoundingPoly)
  field(:confidence)
  field(:description)
  field(:locale)

  field(:locations,
    as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1LocationInfo,
    type: :list
  )

  field(:mid)

  field(:properties, as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1Property, type: :list)

  field(:score)
  field(:topicality)
end

defimpl Poison.Decoder, for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1EntityAnnotation do
  def decode(value, options) do
    GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1EntityAnnotation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1EntityAnnotation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
