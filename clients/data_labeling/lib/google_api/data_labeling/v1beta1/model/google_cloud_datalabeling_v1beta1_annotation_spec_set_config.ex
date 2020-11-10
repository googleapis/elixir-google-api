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

defmodule GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig do
  @moduledoc """
  Annotation spec set with the setting of allowing multi labels or not.

  ## Attributes

  *   `allowMultiLabel` (*type:* `boolean()`, *default:* `nil`) - Optional. If allow_multi_label is true, contributors are able to choose multiple labels from one annotation spec set.
  *   `annotationSpecSet` (*type:* `String.t`, *default:* `nil`) - Required. Annotation spec set resource name.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowMultiLabel => boolean(),
          :annotationSpecSet => String.t()
        }

  field(:allowMultiLabel)
  field(:annotationSpecSet)
end

defimpl Poison.Decoder,
  for: GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig do
  def decode(value, options) do
    GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
