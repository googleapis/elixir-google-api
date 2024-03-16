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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ExplanationSpec do
  @moduledoc """
  Specification of Model explanation.

  ## Attributes

  *   `metadata` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ExplanationMetadata.t`, *default:* `nil`) - Optional. Metadata describing the Model's input and output for explanation.
  *   `parameters` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ExplanationParameters.t`, *default:* `nil`) - Required. Parameters that configure explaining of the Model's predictions.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :metadata =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ExplanationMetadata.t() | nil,
          :parameters =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ExplanationParameters.t() | nil
        }

  field(:metadata, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ExplanationMetadata)

  field(:parameters,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ExplanationParameters
  )
end

defimpl Poison.Decoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ExplanationSpec do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ExplanationSpec.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ExplanationSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end