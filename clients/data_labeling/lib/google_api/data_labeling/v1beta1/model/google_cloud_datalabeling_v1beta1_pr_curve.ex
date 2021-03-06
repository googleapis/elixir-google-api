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

defmodule GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1PrCurve do
  @moduledoc """


  ## Attributes

  *   `annotationSpec` (*type:* `GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1AnnotationSpec.t`, *default:* `nil`) - The annotation spec of the label for which the precision-recall curve calculated. If this field is empty, that means the precision-recall curve is an aggregate curve for all labels.
  *   `areaUnderCurve` (*type:* `number()`, *default:* `nil`) - Area under the precision-recall curve. Not to be confused with area under a receiver operating characteristic (ROC) curve.
  *   `confidenceMetricsEntries` (*type:* `list(GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry.t)`, *default:* `nil`) - Entries that make up the precision-recall graph. Each entry is a "point" on the graph drawn for a different `confidence_threshold`.
  *   `meanAveragePrecision` (*type:* `number()`, *default:* `nil`) - Mean average prcision of this curve.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :annotationSpec =>
            GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1AnnotationSpec.t()
            | nil,
          :areaUnderCurve => number() | nil,
          :confidenceMetricsEntries =>
            list(
              GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry.t()
            )
            | nil,
          :meanAveragePrecision => number() | nil
        }

  field(:annotationSpec,
    as: GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1AnnotationSpec
  )

  field(:areaUnderCurve)

  field(:confidenceMetricsEntries,
    as: GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry,
    type: :list
  )

  field(:meanAveragePrecision)
end

defimpl Poison.Decoder,
  for: GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1PrCurve do
  def decode(value, options) do
    GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1PrCurve.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1PrCurve do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
