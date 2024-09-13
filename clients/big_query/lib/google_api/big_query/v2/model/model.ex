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

defmodule GoogleApi.BigQuery.V2.Model.Model do
  @moduledoc """


  ## Attributes

  *   `bestTrialId` (*type:* `String.t`, *default:* `nil`) - The best trial_id across all training runs.
  *   `creationTime` (*type:* `String.t`, *default:* `nil`) - Output only. The time when this model was created, in millisecs since the epoch.
  *   `defaultTrialId` (*type:* `String.t`, *default:* `nil`) - Output only. The default trial_id to use in TVFs when the trial_id is not passed in. For single-objective [hyperparameter tuning](https://cloud.google.com/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-hp-tuning-overview) models, this is the best trial ID. For multi-objective [hyperparameter tuning](https://cloud.google.com/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-hp-tuning-overview) models, this is the smallest trial ID among all Pareto optimal trials.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. A user-friendly description of this model.
  *   `encryptionConfiguration` (*type:* `GoogleApi.BigQuery.V2.Model.EncryptionConfiguration.t`, *default:* `nil`) - Custom encryption configuration (e.g., Cloud KMS keys). This shows the encryption configuration of the model data while stored in BigQuery storage. This field can be used with PatchModel to update encryption key for an already encrypted model.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Output only. A hash of this resource.
  *   `expirationTime` (*type:* `String.t`, *default:* `nil`) - Optional. The time when this model expires, in milliseconds since the epoch. If not present, the model will persist indefinitely. Expired models will be deleted and their storage reclaimed. The defaultTableExpirationMs property of the encapsulating dataset can be used to set a default expirationTime on newly created models.
  *   `featureColumns` (*type:* `list(GoogleApi.BigQuery.V2.Model.StandardSqlField.t)`, *default:* `nil`) - Output only. Input feature columns for the model inference. If the model is trained with TRANSFORM clause, these are the input of the TRANSFORM clause.
  *   `friendlyName` (*type:* `String.t`, *default:* `nil`) - Optional. A descriptive name for this model.
  *   `hparamSearchSpaces` (*type:* `GoogleApi.BigQuery.V2.Model.HparamSearchSpaces.t`, *default:* `nil`) - Output only. All hyperparameter search spaces in this model.
  *   `hparamTrials` (*type:* `list(GoogleApi.BigQuery.V2.Model.HparamTuningTrial.t)`, *default:* `nil`) - Output only. Trials of a [hyperparameter tuning](https://cloud.google.com/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-hp-tuning-overview) model sorted by trial_id.
  *   `labelColumns` (*type:* `list(GoogleApi.BigQuery.V2.Model.StandardSqlField.t)`, *default:* `nil`) - Output only. Label columns that were used to train this model. The output of the model will have a "predicted_" prefix to these columns.
  *   `labels` (*type:* `map()`, *default:* `nil`) - The labels associated with this model. You can use these to organize and group your models. Label keys and values can be no longer than 63 characters, can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter and each label in the list must have a different key.
  *   `lastModifiedTime` (*type:* `String.t`, *default:* `nil`) - Output only. The time when this model was last modified, in millisecs since the epoch.
  *   `location` (*type:* `String.t`, *default:* `nil`) - Output only. The geographic location where the model resides. This value is inherited from the dataset.
  *   `modelReference` (*type:* `GoogleApi.BigQuery.V2.Model.ModelReference.t`, *default:* `nil`) - Required. Unique identifier for this model.
  *   `modelType` (*type:* `String.t`, *default:* `nil`) - Output only. Type of the model resource.
  *   `optimalTrialIds` (*type:* `list(String.t)`, *default:* `nil`) - Output only. For single-objective [hyperparameter tuning](https://cloud.google.com/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-hp-tuning-overview) models, it only contains the best trial. For multi-objective [hyperparameter tuning](https://cloud.google.com/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-hp-tuning-overview) models, it contains all Pareto optimal trials sorted by trial_id.
  *   `remoteModelInfo` (*type:* `GoogleApi.BigQuery.V2.Model.RemoteModelInfo.t`, *default:* `nil`) - Output only. Remote model info
  *   `trainingRuns` (*type:* `list(GoogleApi.BigQuery.V2.Model.TrainingRun.t)`, *default:* `nil`) - Information for all training runs in increasing order of start_time.
  *   `transformColumns` (*type:* `list(GoogleApi.BigQuery.V2.Model.TransformColumn.t)`, *default:* `nil`) - Output only. This field will be populated if a TRANSFORM clause was used to train a model. TRANSFORM clause (if used) takes feature_columns as input and outputs transform_columns. transform_columns then are used to train the model.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bestTrialId => String.t() | nil,
          :creationTime => String.t() | nil,
          :defaultTrialId => String.t() | nil,
          :description => String.t() | nil,
          :encryptionConfiguration =>
            GoogleApi.BigQuery.V2.Model.EncryptionConfiguration.t() | nil,
          :etag => String.t() | nil,
          :expirationTime => String.t() | nil,
          :featureColumns => list(GoogleApi.BigQuery.V2.Model.StandardSqlField.t()) | nil,
          :friendlyName => String.t() | nil,
          :hparamSearchSpaces => GoogleApi.BigQuery.V2.Model.HparamSearchSpaces.t() | nil,
          :hparamTrials => list(GoogleApi.BigQuery.V2.Model.HparamTuningTrial.t()) | nil,
          :labelColumns => list(GoogleApi.BigQuery.V2.Model.StandardSqlField.t()) | nil,
          :labels => map() | nil,
          :lastModifiedTime => String.t() | nil,
          :location => String.t() | nil,
          :modelReference => GoogleApi.BigQuery.V2.Model.ModelReference.t() | nil,
          :modelType => String.t() | nil,
          :optimalTrialIds => list(String.t()) | nil,
          :remoteModelInfo => GoogleApi.BigQuery.V2.Model.RemoteModelInfo.t() | nil,
          :trainingRuns => list(GoogleApi.BigQuery.V2.Model.TrainingRun.t()) | nil,
          :transformColumns => list(GoogleApi.BigQuery.V2.Model.TransformColumn.t()) | nil
        }

  field(:bestTrialId)
  field(:creationTime)
  field(:defaultTrialId)
  field(:description)
  field(:encryptionConfiguration, as: GoogleApi.BigQuery.V2.Model.EncryptionConfiguration)
  field(:etag)
  field(:expirationTime)
  field(:featureColumns, as: GoogleApi.BigQuery.V2.Model.StandardSqlField, type: :list)
  field(:friendlyName)
  field(:hparamSearchSpaces, as: GoogleApi.BigQuery.V2.Model.HparamSearchSpaces)
  field(:hparamTrials, as: GoogleApi.BigQuery.V2.Model.HparamTuningTrial, type: :list)
  field(:labelColumns, as: GoogleApi.BigQuery.V2.Model.StandardSqlField, type: :list)
  field(:labels, type: :map)
  field(:lastModifiedTime)
  field(:location)
  field(:modelReference, as: GoogleApi.BigQuery.V2.Model.ModelReference)
  field(:modelType)
  field(:optimalTrialIds, type: :list)
  field(:remoteModelInfo, as: GoogleApi.BigQuery.V2.Model.RemoteModelInfo)
  field(:trainingRuns, as: GoogleApi.BigQuery.V2.Model.TrainingRun, type: :list)
  field(:transformColumns, as: GoogleApi.BigQuery.V2.Model.TransformColumn, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.Model do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.Model.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.Model do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
