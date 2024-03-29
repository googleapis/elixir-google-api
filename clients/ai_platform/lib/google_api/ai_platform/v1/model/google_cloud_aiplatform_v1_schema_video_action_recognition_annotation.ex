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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaVideoActionRecognitionAnnotation do
  @moduledoc """
  Annotation details specific to video action recognition.

  ## Attributes

  *   `annotationSpecId` (*type:* `String.t`, *default:* `nil`) - The resource Id of the AnnotationSpec that this Annotation pertains to.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The display name of the AnnotationSpec that this Annotation pertains to.
  *   `timeSegment` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaTimeSegment.t`, *default:* `nil`) - This Annotation applies to the time period represented by the TimeSegment. If it's not set, the Annotation applies to the whole video.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :annotationSpecId => String.t() | nil,
          :displayName => String.t() | nil,
          :timeSegment =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaTimeSegment.t() | nil
        }

  field(:annotationSpecId)
  field(:displayName)
  field(:timeSegment, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaTimeSegment)
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaVideoActionRecognitionAnnotation do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaVideoActionRecognitionAnnotation.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaVideoActionRecognitionAnnotation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
