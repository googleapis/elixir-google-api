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

defmodule GoogleApi.AnalyticsData.V1beta.Model.CheckCompatibilityRequest do
  @moduledoc """
  The request for compatibility information for a report's dimensions and metrics. Check compatibility provides a preview of the compatibility of a report; fields shared with the `runReport` request should be the same values as in your `runReport` request.

  ## Attributes

  *   `compatibilityFilter` (*type:* `String.t`, *default:* `nil`) - Filters the dimensions and metrics in the response to just this compatibility. Commonly used as `”compatibilityFilter”: “COMPATIBLE”` to only return compatible dimensions & metrics.
  *   `dimensionFilter` (*type:* `GoogleApi.AnalyticsData.V1beta.Model.FilterExpression.t`, *default:* `nil`) - The filter clause of dimensions. `dimensionFilter` should be the same value as in your `runReport` request.
  *   `dimensions` (*type:* `list(GoogleApi.AnalyticsData.V1beta.Model.Dimension.t)`, *default:* `nil`) - The dimensions in this report. `dimensions` should be the same value as in your `runReport` request.
  *   `metricFilter` (*type:* `GoogleApi.AnalyticsData.V1beta.Model.FilterExpression.t`, *default:* `nil`) - The filter clause of metrics. `metricFilter` should be the same value as in your `runReport` request
  *   `metrics` (*type:* `list(GoogleApi.AnalyticsData.V1beta.Model.Metric.t)`, *default:* `nil`) - The metrics in this report. `metrics` should be the same value as in your `runReport` request.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :compatibilityFilter => String.t() | nil,
          :dimensionFilter => GoogleApi.AnalyticsData.V1beta.Model.FilterExpression.t() | nil,
          :dimensions => list(GoogleApi.AnalyticsData.V1beta.Model.Dimension.t()) | nil,
          :metricFilter => GoogleApi.AnalyticsData.V1beta.Model.FilterExpression.t() | nil,
          :metrics => list(GoogleApi.AnalyticsData.V1beta.Model.Metric.t()) | nil
        }

  field(:compatibilityFilter)
  field(:dimensionFilter, as: GoogleApi.AnalyticsData.V1beta.Model.FilterExpression)
  field(:dimensions, as: GoogleApi.AnalyticsData.V1beta.Model.Dimension, type: :list)
  field(:metricFilter, as: GoogleApi.AnalyticsData.V1beta.Model.FilterExpression)
  field(:metrics, as: GoogleApi.AnalyticsData.V1beta.Model.Metric, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsData.V1beta.Model.CheckCompatibilityRequest do
  def decode(value, options) do
    GoogleApi.AnalyticsData.V1beta.Model.CheckCompatibilityRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsData.V1beta.Model.CheckCompatibilityRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
