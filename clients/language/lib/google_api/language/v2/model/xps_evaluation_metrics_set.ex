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

defmodule GoogleApi.Language.V2.Model.XPSEvaluationMetricsSet do
  @moduledoc """
  Specifies location of model evaluation metrics.

  ## Attributes

  *   `evaluationMetrics` (*type:* `list(GoogleApi.Language.V2.Model.XPSEvaluationMetrics.t)`, *default:* `nil`) - Inline EvaluationMetrics - should be relatively small. For passing large quantities of exhaustive metrics, use file_spec.
  *   `fileSpec` (*type:* `GoogleApi.Language.V2.Model.XPSFileSpec.t`, *default:* `nil`) - File spec containing evaluation metrics of a model, must point to RecordIO file(s) of intelligence.cloud.automl.xps.EvaluationMetrics messages.
  *   `numEvaluationMetrics` (*type:* `String.t`, *default:* `nil`) - Number of the evaluation metrics (usually one per label plus overall).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :evaluationMetrics => list(GoogleApi.Language.V2.Model.XPSEvaluationMetrics.t()) | nil,
          :fileSpec => GoogleApi.Language.V2.Model.XPSFileSpec.t() | nil,
          :numEvaluationMetrics => String.t() | nil
        }

  field(:evaluationMetrics, as: GoogleApi.Language.V2.Model.XPSEvaluationMetrics, type: :list)
  field(:fileSpec, as: GoogleApi.Language.V2.Model.XPSFileSpec)
  field(:numEvaluationMetrics)
end

defimpl Poison.Decoder, for: GoogleApi.Language.V2.Model.XPSEvaluationMetricsSet do
  def decode(value, options) do
    GoogleApi.Language.V2.Model.XPSEvaluationMetricsSet.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Language.V2.Model.XPSEvaluationMetricsSet do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
