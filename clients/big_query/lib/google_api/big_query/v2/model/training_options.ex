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

defmodule GoogleApi.BigQuery.V2.Model.TrainingOptions do
  @moduledoc """
  Options used in model training.

  ## Attributes

  *   `subsample` (*type:* `float()`, *default:* `nil`) - Subsample fraction of the training data to grow tree to prevent overfitting for boosted tree models.
  *   `horizon` (*type:* `String.t`, *default:* `nil`) - The number of periods ahead that need to be forecasted.
  *   `modelUri` (*type:* `String.t`, *default:* `nil`) - Google Cloud Storage URI from which the model was imported. Only applicable for imported models.
  *   `includeDrift` (*type:* `boolean()`, *default:* `nil`) - Include drift when fitting an ARIMA model.
  *   `autoArima` (*type:* `boolean()`, *default:* `nil`) - Whether to enable auto ARIMA or not.
  *   `learnRateStrategy` (*type:* `String.t`, *default:* `nil`) - The strategy to determine learn rate for the current iteration.
  *   `labelClassWeights` (*type:* `map()`, *default:* `nil`) - Weights associated with each label class, for rebalancing the training data. Only applicable for classification models.
  *   `l2Regularization` (*type:* `float()`, *default:* `nil`) - L2 regularization coefficient.
  *   `userColumn` (*type:* `String.t`, *default:* `nil`) - User column specified for matrix factorization models.
  *   `lossType` (*type:* `String.t`, *default:* `nil`) - Type of loss function used during training run.
  *   `learnRate` (*type:* `float()`, *default:* `nil`) - Learning rate in training. Used only for iterative training algorithms.
  *   `hiddenUnits` (*type:* `list(String.t)`, *default:* `nil`) - Hidden units for dnn models.
  *   `numFactors` (*type:* `String.t`, *default:* `nil`) - Num factors specified for matrix factorization models.
  *   `dataSplitEvalFraction` (*type:* `float()`, *default:* `nil`) - The fraction of evaluation data over the whole input data. The rest of data will be used as training data. The format should be double. Accurate to two decimal places. Default value is 0.2.
  *   `dataFrequency` (*type:* `String.t`, *default:* `nil`) - The data frequency of a time series.
  *   `dataSplitColumn` (*type:* `String.t`, *default:* `nil`) - The column to split data with. This column won't be used as a feature. 1. When data_split_method is CUSTOM, the corresponding column should be boolean. The rows with true value tag are eval data, and the false are training data. 2. When data_split_method is SEQ, the first DATA_SPLIT_EVAL_FRACTION rows (from smallest to largest) in the corresponding column are used as training data, and the rest are eval data. It respects the order in Orderable data types: https://cloud.google.com/bigquery/docs/reference/standard-sql/data-types#data-type-properties
  *   `walsAlpha` (*type:* `float()`, *default:* `nil`) - Hyperparameter for matrix factoration when implicit feedback type is specified.
  *   `autoArimaMaxOrder` (*type:* `String.t`, *default:* `nil`) - The max value of non-seasonal p and q.
  *   `earlyStop` (*type:* `boolean()`, *default:* `nil`) - Whether to stop early when the loss doesn't improve significantly any more (compared to min_relative_progress). Used only for iterative training algorithms.
  *   `dropout` (*type:* `float()`, *default:* `nil`) - Dropout probability for dnn models.
  *   `l1Regularization` (*type:* `float()`, *default:* `nil`) - L1 regularization coefficient.
  *   `timeSeriesDataColumn` (*type:* `String.t`, *default:* `nil`) - Column to be designated as time series data for ARIMA model.
  *   `timeSeriesTimestampColumn` (*type:* `String.t`, *default:* `nil`) - Column to be designated as time series timestamp for ARIMA model.
  *   `kmeansInitializationColumn` (*type:* `String.t`, *default:* `nil`) - The column used to provide the initial centroids for kmeans algorithm when kmeans_initialization_method is CUSTOM.
  *   `minRelativeProgress` (*type:* `float()`, *default:* `nil`) - When early_stop is true, stops training when accuracy improvement is less than 'min_relative_progress'. Used only for iterative training algorithms.
  *   `dataSplitMethod` (*type:* `String.t`, *default:* `nil`) - The data split type for training and evaluation, e.g. RANDOM.
  *   `minSplitLoss` (*type:* `float()`, *default:* `nil`) - Minimum split loss for boosted tree models.
  *   `holidayRegion` (*type:* `String.t`, *default:* `nil`) - The geographical region based on which the holidays are considered in time series modeling. If a valid value is specified, then holiday effects modeling is enabled.
  *   `warmStart` (*type:* `boolean()`, *default:* `nil`) - Whether to train a model from the last checkpoint.
  *   `optimizationStrategy` (*type:* `String.t`, *default:* `nil`) - Optimization strategy for training linear regression models.
  *   `preserveInputStructs` (*type:* `boolean()`, *default:* `nil`) - Whether to preserve the input structs in output feature names. Suppose there is a struct A with field b. When false (default), the output feature name is A_b. When true, the output feature name is A.b.
  *   `feedbackType` (*type:* `String.t`, *default:* `nil`) - Feedback type that specifies which algorithm to run for matrix factorization.
  *   `distanceType` (*type:* `String.t`, *default:* `nil`) - Distance type for clustering models.
  *   `maxTreeDepth` (*type:* `String.t`, *default:* `nil`) - Maximum depth of a tree for boosted tree models.
  *   `inputLabelColumns` (*type:* `list(String.t)`, *default:* `nil`) - Name of input label columns in training data.
  *   `timeSeriesIdColumn` (*type:* `String.t`, *default:* `nil`) - The time series id column that was used during ARIMA model training.
  *   `nonSeasonalOrder` (*type:* `GoogleApi.BigQuery.V2.Model.ArimaOrder.t`, *default:* `nil`) - A specification of the non-seasonal part of the ARIMA model: the three components (p, d, q) are the AR order, the degree of differencing, and the MA order.
  *   `numClusters` (*type:* `String.t`, *default:* `nil`) - Number of clusters for clustering models.
  *   `batchSize` (*type:* `String.t`, *default:* `nil`) - Batch size for dnn models.
  *   `kmeansInitializationMethod` (*type:* `String.t`, *default:* `nil`) - The method used to initialize the centroids for kmeans algorithm.
  *   `initialLearnRate` (*type:* `float()`, *default:* `nil`) - Specifies the initial learning rate for the line search learn rate strategy.
  *   `maxIterations` (*type:* `String.t`, *default:* `nil`) - The maximum number of iterations in training. Used only for iterative training algorithms.
  *   `itemColumn` (*type:* `String.t`, *default:* `nil`) - Item column specified for matrix factorization models.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :subsample => float() | nil,
          :horizon => String.t() | nil,
          :modelUri => String.t() | nil,
          :includeDrift => boolean() | nil,
          :autoArima => boolean() | nil,
          :learnRateStrategy => String.t() | nil,
          :labelClassWeights => map() | nil,
          :l2Regularization => float() | nil,
          :userColumn => String.t() | nil,
          :lossType => String.t() | nil,
          :learnRate => float() | nil,
          :hiddenUnits => list(String.t()) | nil,
          :numFactors => String.t() | nil,
          :dataSplitEvalFraction => float() | nil,
          :dataFrequency => String.t() | nil,
          :dataSplitColumn => String.t() | nil,
          :walsAlpha => float() | nil,
          :autoArimaMaxOrder => String.t() | nil,
          :earlyStop => boolean() | nil,
          :dropout => float() | nil,
          :l1Regularization => float() | nil,
          :timeSeriesDataColumn => String.t() | nil,
          :timeSeriesTimestampColumn => String.t() | nil,
          :kmeansInitializationColumn => String.t() | nil,
          :minRelativeProgress => float() | nil,
          :dataSplitMethod => String.t() | nil,
          :minSplitLoss => float() | nil,
          :holidayRegion => String.t() | nil,
          :warmStart => boolean() | nil,
          :optimizationStrategy => String.t() | nil,
          :preserveInputStructs => boolean() | nil,
          :feedbackType => String.t() | nil,
          :distanceType => String.t() | nil,
          :maxTreeDepth => String.t() | nil,
          :inputLabelColumns => list(String.t()) | nil,
          :timeSeriesIdColumn => String.t() | nil,
          :nonSeasonalOrder => GoogleApi.BigQuery.V2.Model.ArimaOrder.t() | nil,
          :numClusters => String.t() | nil,
          :batchSize => String.t() | nil,
          :kmeansInitializationMethod => String.t() | nil,
          :initialLearnRate => float() | nil,
          :maxIterations => String.t() | nil,
          :itemColumn => String.t() | nil
        }

  field(:subsample)
  field(:horizon)
  field(:modelUri)
  field(:includeDrift)
  field(:autoArima)
  field(:learnRateStrategy)
  field(:labelClassWeights, type: :map)
  field(:l2Regularization)
  field(:userColumn)
  field(:lossType)
  field(:learnRate)
  field(:hiddenUnits, type: :list)
  field(:numFactors)
  field(:dataSplitEvalFraction)
  field(:dataFrequency)
  field(:dataSplitColumn)
  field(:walsAlpha)
  field(:autoArimaMaxOrder)
  field(:earlyStop)
  field(:dropout)
  field(:l1Regularization)
  field(:timeSeriesDataColumn)
  field(:timeSeriesTimestampColumn)
  field(:kmeansInitializationColumn)
  field(:minRelativeProgress)
  field(:dataSplitMethod)
  field(:minSplitLoss)
  field(:holidayRegion)
  field(:warmStart)
  field(:optimizationStrategy)
  field(:preserveInputStructs)
  field(:feedbackType)
  field(:distanceType)
  field(:maxTreeDepth)
  field(:inputLabelColumns, type: :list)
  field(:timeSeriesIdColumn)
  field(:nonSeasonalOrder, as: GoogleApi.BigQuery.V2.Model.ArimaOrder)
  field(:numClusters)
  field(:batchSize)
  field(:kmeansInitializationMethod)
  field(:initialLearnRate)
  field(:maxIterations)
  field(:itemColumn)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.TrainingOptions do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.TrainingOptions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.TrainingOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
