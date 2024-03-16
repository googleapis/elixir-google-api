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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ExplanationParameters do
  @moduledoc """
  Parameters to configure explaining for Model's predictions.

  ## Attributes

  *   `examples` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Examples.t`, *default:* `nil`) - Example-based explanations that returns the nearest neighbors from the provided dataset.
  *   `integratedGradientsAttribution` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1IntegratedGradientsAttribution.t`, *default:* `nil`) - An attribution method that computes Aumann-Shapley values taking advantage of the model's fully differentiable structure. Refer to this paper for more details: https://arxiv.org/abs/1703.01365
  *   `outputIndices` (*type:* `list(any())`, *default:* `nil`) - If populated, only returns attributions that have output_index contained in output_indices. It must be an ndarray of integers, with the same shape of the output it's explaining. If not populated, returns attributions for top_k indices of outputs. If neither top_k nor output_indices is populated, returns the argmax index of the outputs. Only applicable to Models that predict multiple outputs (e,g, multi-class Models that predict multiple classes).
  *   `sampledShapleyAttribution` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SampledShapleyAttribution.t`, *default:* `nil`) - An attribution method that approximates Shapley values for features that contribute to the label being predicted. A sampling strategy is used to approximate the value rather than considering all subsets of features. Refer to this paper for model details: https://arxiv.org/abs/1306.4265.
  *   `topK` (*type:* `integer()`, *default:* `nil`) - If populated, returns attributions for top K indices of outputs (defaults to 1). Only applies to Models that predicts more than one outputs (e,g, multi-class Models). When set to -1, returns explanations for all outputs.
  *   `xraiAttribution` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1XraiAttribution.t`, *default:* `nil`) - An attribution method that redistributes Integrated Gradients attribution to segmented regions, taking advantage of the model's fully differentiable structure. Refer to this paper for more details: https://arxiv.org/abs/1906.02825 XRAI currently performs better on natural images, like a picture of a house or an animal. If the images are taken in artificial environments, like a lab or manufacturing line, or from diagnostic equipment, like x-rays or quality-control cameras, use Integrated Gradients instead.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :examples => GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Examples.t() | nil,
          :integratedGradientsAttribution =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1IntegratedGradientsAttribution.t()
            | nil,
          :outputIndices => list(any()) | nil,
          :sampledShapleyAttribution =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SampledShapleyAttribution.t()
            | nil,
          :topK => integer() | nil,
          :xraiAttribution =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1XraiAttribution.t() | nil
        }

  field(:examples, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Examples)

  field(:integratedGradientsAttribution,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1IntegratedGradientsAttribution
  )

  field(:outputIndices, type: :list)

  field(:sampledShapleyAttribution,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SampledShapleyAttribution
  )

  field(:topK)

  field(:xraiAttribution, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1XraiAttribution)
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ExplanationParameters do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ExplanationParameters.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ExplanationParameters do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end