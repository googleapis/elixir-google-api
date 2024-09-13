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

defmodule GoogleApi.BigQuery.V2.Model.MlStatistics do
  @moduledoc """
  Job statistics specific to a BigQuery ML training job.

  ## Attributes

  *   `hparamTrials` (*type:* `list(GoogleApi.BigQuery.V2.Model.HparamTuningTrial.t)`, *default:* `nil`) - Output only. Trials of a [hyperparameter tuning job](https://cloud.google.com/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-hp-tuning-overview) sorted by trial_id.
  *   `iterationResults` (*type:* `list(GoogleApi.BigQuery.V2.Model.IterationResult.t)`, *default:* `nil`) - Results for all completed iterations. Empty for [hyperparameter tuning jobs](https://cloud.google.com/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-hp-tuning-overview).
  *   `maxIterations` (*type:* `String.t`, *default:* `nil`) - Output only. Maximum number of iterations specified as max_iterations in the 'CREATE MODEL' query. The actual number of iterations may be less than this number due to early stop.
  *   `modelType` (*type:* `String.t`, *default:* `nil`) - Output only. The type of the model that is being trained.
  *   `trainingType` (*type:* `String.t`, *default:* `nil`) - Output only. Training type of the job.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :hparamTrials => list(GoogleApi.BigQuery.V2.Model.HparamTuningTrial.t()) | nil,
          :iterationResults => list(GoogleApi.BigQuery.V2.Model.IterationResult.t()) | nil,
          :maxIterations => String.t() | nil,
          :modelType => String.t() | nil,
          :trainingType => String.t() | nil
        }

  field(:hparamTrials, as: GoogleApi.BigQuery.V2.Model.HparamTuningTrial, type: :list)
  field(:iterationResults, as: GoogleApi.BigQuery.V2.Model.IterationResult, type: :list)
  field(:maxIterations)
  field(:modelType)
  field(:trainingType)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.MlStatistics do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.MlStatistics.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.MlStatistics do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
