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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelEvaluationSliceSliceSliceSpec do
  @moduledoc """
  Specification for how the data should be sliced.

  ## Attributes

  *   `configs` (*type:* `%{optional(String.t) => GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelEvaluationSliceSliceSliceSpecSliceConfig.t}`, *default:* `nil`) - Mapping configuration for this SliceSpec. The key is the name of the feature. By default, the key will be prefixed by "instance" as a dictionary prefix for Vertex Batch Predictions output format.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :configs =>
            %{
              optional(String.t()) =>
                GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelEvaluationSliceSliceSliceSpecSliceConfig.t()
            }
            | nil
        }

  field(:configs,
    as:
      GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelEvaluationSliceSliceSliceSpecSliceConfig,
    type: :map
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelEvaluationSliceSliceSliceSpec do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelEvaluationSliceSliceSliceSpec.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelEvaluationSliceSliceSliceSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end