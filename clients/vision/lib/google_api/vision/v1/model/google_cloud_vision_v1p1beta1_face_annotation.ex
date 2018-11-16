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

defmodule GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1FaceAnnotation do
  @moduledoc """
  A face annotation object contains the results of face detection.

  ## Attributes

  - angerLikelihood (String.t): Anger likelihood. Defaults to: `null`.
    - Enum - one of [UNKNOWN, VERY_UNLIKELY, UNLIKELY, POSSIBLE, LIKELY, VERY_LIKELY]
  - blurredLikelihood (String.t): Blurred likelihood. Defaults to: `null`.
    - Enum - one of [UNKNOWN, VERY_UNLIKELY, UNLIKELY, POSSIBLE, LIKELY, VERY_LIKELY]
  - boundingPoly (GoogleCloudVisionV1p1beta1BoundingPoly): The bounding polygon around the face. The coordinates of the bounding box are in the original image&#39;s scale, as returned in &#x60;ImageParams&#x60;. The bounding box is computed to \&quot;frame\&quot; the face in accordance with human expectations. It is based on the landmarker results. Note that one or more x and/or y coordinates may not be generated in the &#x60;BoundingPoly&#x60; (the polygon will be unbounded) if only a partial face appears in the image to be annotated. Defaults to: `null`.
  - detectionConfidence (float()): Detection confidence. Range [0, 1]. Defaults to: `null`.
  - fdBoundingPoly (GoogleCloudVisionV1p1beta1BoundingPoly): The &#x60;fd_bounding_poly&#x60; bounding polygon is tighter than the &#x60;boundingPoly&#x60;, and encloses only the skin part of the face. Typically, it is used to eliminate the face from any image analysis that detects the \&quot;amount of skin\&quot; visible in an image. It is not based on the landmarker results, only on the initial face detection, hence the &lt;code&gt;fd&lt;/code&gt; (face detection) prefix. Defaults to: `null`.
  - headwearLikelihood (String.t): Headwear likelihood. Defaults to: `null`.
    - Enum - one of [UNKNOWN, VERY_UNLIKELY, UNLIKELY, POSSIBLE, LIKELY, VERY_LIKELY]
  - joyLikelihood (String.t): Joy likelihood. Defaults to: `null`.
    - Enum - one of [UNKNOWN, VERY_UNLIKELY, UNLIKELY, POSSIBLE, LIKELY, VERY_LIKELY]
  - landmarkingConfidence (float()): Face landmarking confidence. Range [0, 1]. Defaults to: `null`.
  - landmarks ([GoogleCloudVisionV1p1beta1FaceAnnotationLandmark]): Detected face landmarks. Defaults to: `null`.
  - panAngle (float()): Yaw angle, which indicates the leftward/rightward angle that the face is pointing relative to the vertical plane perpendicular to the image. Range [-180,180]. Defaults to: `null`.
  - rollAngle (float()): Roll angle, which indicates the amount of clockwise/anti-clockwise rotation of the face relative to the image vertical about the axis perpendicular to the face. Range [-180,180]. Defaults to: `null`.
  - sorrowLikelihood (String.t): Sorrow likelihood. Defaults to: `null`.
    - Enum - one of [UNKNOWN, VERY_UNLIKELY, UNLIKELY, POSSIBLE, LIKELY, VERY_LIKELY]
  - surpriseLikelihood (String.t): Surprise likelihood. Defaults to: `null`.
    - Enum - one of [UNKNOWN, VERY_UNLIKELY, UNLIKELY, POSSIBLE, LIKELY, VERY_LIKELY]
  - tiltAngle (float()): Pitch angle, which indicates the upwards/downwards angle that the face is pointing relative to the image&#39;s horizontal plane. Range [-180,180]. Defaults to: `null`.
  - underExposedLikelihood (String.t): Under-exposed likelihood. Defaults to: `null`.
    - Enum - one of [UNKNOWN, VERY_UNLIKELY, UNLIKELY, POSSIBLE, LIKELY, VERY_LIKELY]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :angerLikelihood => any(),
          :blurredLikelihood => any(),
          :boundingPoly => GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1BoundingPoly.t(),
          :detectionConfidence => any(),
          :fdBoundingPoly => GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1BoundingPoly.t(),
          :headwearLikelihood => any(),
          :joyLikelihood => any(),
          :landmarkingConfidence => any(),
          :landmarks =>
            list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1FaceAnnotationLandmark.t()),
          :panAngle => any(),
          :rollAngle => any(),
          :sorrowLikelihood => any(),
          :surpriseLikelihood => any(),
          :tiltAngle => any(),
          :underExposedLikelihood => any()
        }

  field(:angerLikelihood)
  field(:blurredLikelihood)
  field(:boundingPoly, as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1BoundingPoly)
  field(:detectionConfidence)
  field(:fdBoundingPoly, as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1BoundingPoly)
  field(:headwearLikelihood)
  field(:joyLikelihood)
  field(:landmarkingConfidence)

  field(
    :landmarks,
    as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1FaceAnnotationLandmark,
    type: :list
  )

  field(:panAngle)
  field(:rollAngle)
  field(:sorrowLikelihood)
  field(:surpriseLikelihood)
  field(:tiltAngle)
  field(:underExposedLikelihood)
end

defimpl Poison.Decoder, for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1FaceAnnotation do
  def decode(value, options) do
    GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1FaceAnnotation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1FaceAnnotation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
