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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelExplanation do
  @moduledoc """
  Aggregated explanation metrics for a Model over a set of instances.

  ## Attributes

  *   `meanAttributions` (*type:* `list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Attribution.t)`, *default:* `nil`) - Output only. Aggregated attributions explaining the Model's prediction outputs over the set of instances. The attributions are grouped by outputs. For Models that predict only one output, such as regression Models that predict only one score, there is only one attibution that explains the predicted output. For Models that predict multiple outputs, such as multiclass Models that predict multiple classes, each element explains one specific item. Attribution.output_index can be used to identify which output this attribution is explaining. The baselineOutputValue, instanceOutputValue and featureAttributions fields are averaged over the test data. NOTE: Currently AutoML tabular classification Models produce only one attribution, which averages attributions over all the classes it predicts. Attribution.approximation_error is not populated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :meanAttributions =>
            list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Attribution.t()) | nil
        }

  field(:meanAttributions,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Attribution,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelExplanation do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelExplanation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelExplanation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
