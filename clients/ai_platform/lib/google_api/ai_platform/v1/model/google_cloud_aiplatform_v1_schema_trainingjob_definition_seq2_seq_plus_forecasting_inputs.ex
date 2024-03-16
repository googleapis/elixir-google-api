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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaTrainingjobDefinitionSeq2SeqPlusForecastingInputs do
  @moduledoc """


  ## Attributes

  *   `additionalExperiments` (*type:* `list(String.t)`, *default:* `nil`) - Additional experiment flags for the time series forcasting training.
  *   `availableAtForecastColumns` (*type:* `list(String.t)`, *default:* `nil`) - Names of columns that are available and provided when a forecast is requested. These columns contain information for the given entity (identified by the time_series_identifier_column column) that is known at forecast. For example, predicted weather for a specific day.
  *   `contextWindow` (*type:* `String.t`, *default:* `nil`) - The amount of time into the past training and prediction data is used for model training and prediction respectively. Expressed in number of units defined by the `data_granularity` field.
  *   `dataGranularity` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaTrainingjobDefinitionSeq2SeqPlusForecastingInputsGranularity.t`, *default:* `nil`) - Expected difference in time granularity between rows in the data.
  *   `exportEvaluatedDataItemsConfig` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaTrainingjobDefinitionExportEvaluatedDataItemsConfig.t`, *default:* `nil`) - Configuration for exporting test set predictions to a BigQuery table. If this configuration is absent, then the export is not performed.
  *   `forecastHorizon` (*type:* `String.t`, *default:* `nil`) - The amount of time into the future for which forecasted values for the target are returned. Expressed in number of units defined by the `data_granularity` field.
  *   `hierarchyConfig` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaTrainingjobDefinitionHierarchyConfig.t`, *default:* `nil`) - Configuration that defines the hierarchical relationship of time series and parameters for hierarchical forecasting strategies.
  *   `holidayRegions` (*type:* `list(String.t)`, *default:* `nil`) - The geographical region based on which the holiday effect is applied in modeling by adding holiday categorical array feature that include all holidays matching the date. This option only allowed when data_granularity is day. By default, holiday effect modeling is disabled. To turn it on, specify the holiday region using this option.
  *   `optimizationObjective` (*type:* `String.t`, *default:* `nil`) - Objective function the model is optimizing towards. The training process creates a model that optimizes the value of the objective function over the validation set. The supported optimization objectives: * "minimize-rmse" (default) - Minimize root-mean-squared error (RMSE). * "minimize-mae" - Minimize mean-absolute error (MAE). * "minimize-rmsle" - Minimize root-mean-squared log error (RMSLE). * "minimize-rmspe" - Minimize root-mean-squared percentage error (RMSPE). * "minimize-wape-mae" - Minimize the combination of weighted absolute percentage error (WAPE) and mean-absolute-error (MAE). * "minimize-quantile-loss" - Minimize the quantile loss at the quantiles defined in `quantiles`. * "minimize-mape" - Minimize the mean absolute percentage error.
  *   `quantiles` (*type:* `list(float())`, *default:* `nil`) - Quantiles to use for minimize-quantile-loss `optimization_objective`. Up to 5 quantiles are allowed of values between 0 and 1, exclusive. Required if the value of optimization_objective is minimize-quantile-loss. Represents the percent quantiles to use for that objective. Quantiles must be unique.
  *   `targetColumn` (*type:* `String.t`, *default:* `nil`) - The name of the column that the Model is to predict values for. This column must be unavailable at forecast.
  *   `timeColumn` (*type:* `String.t`, *default:* `nil`) - The name of the column that identifies time order in the time series. This column must be available at forecast.
  *   `timeSeriesAttributeColumns` (*type:* `list(String.t)`, *default:* `nil`) - Column names that should be used as attribute columns. The value of these columns does not vary as a function of time. For example, store ID or item color.
  *   `timeSeriesIdentifierColumn` (*type:* `String.t`, *default:* `nil`) - The name of the column that identifies the time series.
  *   `trainBudgetMilliNodeHours` (*type:* `String.t`, *default:* `nil`) - Required. The train budget of creating this model, expressed in milli node hours i.e. 1,000 value in this field means 1 node hour. The training cost of the model will not exceed this budget. The final cost will be attempted to be close to the budget, though may end up being (even) noticeably smaller - at the backend's discretion. This especially may happen when further model training ceases to provide any improvements. If the budget is set to a value known to be insufficient to train a model for the given dataset, the training won't be attempted and will error. The train budget must be between 1,000 and 72,000 milli node hours, inclusive.
  *   `transformations` (*type:* `list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaTrainingjobDefinitionSeq2SeqPlusForecastingInputsTransformation.t)`, *default:* `nil`) - Each transformation will apply transform function to given input column. And the result will be used for training. When creating transformation for BigQuery Struct column, the column should be flattened using "." as the delimiter.
  *   `unavailableAtForecastColumns` (*type:* `list(String.t)`, *default:* `nil`) - Names of columns that are unavailable when a forecast is requested. This column contains information for the given entity (identified by the time_series_identifier_column) that is unknown before the forecast For example, actual weather on a given day.
  *   `validationOptions` (*type:* `String.t`, *default:* `nil`) - Validation options for the data validation component. The available options are: * "fail-pipeline" - default, will validate against the validation and fail the pipeline if it fails. * "ignore-validation" - ignore the results of the validation and continue
  *   `weightColumn` (*type:* `String.t`, *default:* `nil`) - Column name that should be used as the weight column. Higher values in this column give more importance to the row during model training. The column must have numeric values between 0 and 10000 inclusively; 0 means the row is ignored for training. If weight column field is not set, then all rows are assumed to have equal weight of 1. This column must be available at forecast.
  *   `windowConfig` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaTrainingjobDefinitionWindowConfig.t`, *default:* `nil`) - Config containing strategy for generating sliding windows.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :additionalExperiments => list(String.t()) | nil,
          :availableAtForecastColumns => list(String.t()) | nil,
          :contextWindow => String.t() | nil,
          :dataGranularity =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaTrainingjobDefinitionSeq2SeqPlusForecastingInputsGranularity.t()
            | nil,
          :exportEvaluatedDataItemsConfig =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaTrainingjobDefinitionExportEvaluatedDataItemsConfig.t()
            | nil,
          :forecastHorizon => String.t() | nil,
          :hierarchyConfig =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaTrainingjobDefinitionHierarchyConfig.t()
            | nil,
          :holidayRegions => list(String.t()) | nil,
          :optimizationObjective => String.t() | nil,
          :quantiles => list(float()) | nil,
          :targetColumn => String.t() | nil,
          :timeColumn => String.t() | nil,
          :timeSeriesAttributeColumns => list(String.t()) | nil,
          :timeSeriesIdentifierColumn => String.t() | nil,
          :trainBudgetMilliNodeHours => String.t() | nil,
          :transformations =>
            list(
              GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaTrainingjobDefinitionSeq2SeqPlusForecastingInputsTransformation.t()
            )
            | nil,
          :unavailableAtForecastColumns => list(String.t()) | nil,
          :validationOptions => String.t() | nil,
          :weightColumn => String.t() | nil,
          :windowConfig =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaTrainingjobDefinitionWindowConfig.t()
            | nil
        }

  field(:additionalExperiments, type: :list)
  field(:availableAtForecastColumns, type: :list)
  field(:contextWindow)

  field(:dataGranularity,
    as:
      GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaTrainingjobDefinitionSeq2SeqPlusForecastingInputsGranularity
  )

  field(:exportEvaluatedDataItemsConfig,
    as:
      GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaTrainingjobDefinitionExportEvaluatedDataItemsConfig
  )

  field(:forecastHorizon)

  field(:hierarchyConfig,
    as:
      GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaTrainingjobDefinitionHierarchyConfig
  )

  field(:holidayRegions, type: :list)
  field(:optimizationObjective)
  field(:quantiles, type: :list)
  field(:targetColumn)
  field(:timeColumn)
  field(:timeSeriesAttributeColumns, type: :list)
  field(:timeSeriesIdentifierColumn)
  field(:trainBudgetMilliNodeHours)

  field(:transformations,
    as:
      GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaTrainingjobDefinitionSeq2SeqPlusForecastingInputsTransformation,
    type: :list
  )

  field(:unavailableAtForecastColumns, type: :list)
  field(:validationOptions)
  field(:weightColumn)

  field(:windowConfig,
    as:
      GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaTrainingjobDefinitionWindowConfig
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaTrainingjobDefinitionSeq2SeqPlusForecastingInputs do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaTrainingjobDefinitionSeq2SeqPlusForecastingInputs.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaTrainingjobDefinitionSeq2SeqPlusForecastingInputs do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end