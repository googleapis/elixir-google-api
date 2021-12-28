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

defmodule GoogleApi.AnalyticsData.V1beta.Model.RunPivotReportRequest do
  @moduledoc """
  The request to generate a pivot report.

  ## Attributes

  *   `cohortSpec` (*type:* `GoogleApi.AnalyticsData.V1beta.Model.CohortSpec.t`, *default:* `nil`) - Cohort group associated with this request. If there is a cohort group in the request the 'cohort' dimension must be present.
  *   `currencyCode` (*type:* `String.t`, *default:* `nil`) - A currency code in ISO4217 format, such as "AED", "USD", "JPY". If the field is empty, the report uses the property's default currency.
  *   `dateRanges` (*type:* `list(GoogleApi.AnalyticsData.V1beta.Model.DateRange.t)`, *default:* `nil`) - The date range to retrieve event data for the report. If multiple date ranges are specified, event data from each date range is used in the report. A special dimension with field name "dateRange" can be included in a Pivot's field names; if included, the report compares between date ranges. In a cohort request, this `dateRanges` must be unspecified.
  *   `dimensionFilter` (*type:* `GoogleApi.AnalyticsData.V1beta.Model.FilterExpression.t`, *default:* `nil`) - The filter clause of dimensions. Dimensions must be requested to be used in this filter. Metrics cannot be used in this filter.
  *   `dimensions` (*type:* `list(GoogleApi.AnalyticsData.V1beta.Model.Dimension.t)`, *default:* `nil`) - The dimensions requested. All defined dimensions must be used by one of the following: dimension_expression, dimension_filter, pivots, order_bys.
  *   `keepEmptyRows` (*type:* `boolean()`, *default:* `nil`) - If false or unspecified, each row with all metrics equal to 0 will not be returned. If true, these rows will be returned if they are not separately removed by a filter.
  *   `metricFilter` (*type:* `GoogleApi.AnalyticsData.V1beta.Model.FilterExpression.t`, *default:* `nil`) - The filter clause of metrics. Applied at post aggregation phase, similar to SQL having-clause. Metrics must be requested to be used in this filter. Dimensions cannot be used in this filter.
  *   `metrics` (*type:* `list(GoogleApi.AnalyticsData.V1beta.Model.Metric.t)`, *default:* `nil`) - The metrics requested, at least one metric needs to be specified. All defined metrics must be used by one of the following: metric_expression, metric_filter, order_bys.
  *   `pivots` (*type:* `list(GoogleApi.AnalyticsData.V1beta.Model.Pivot.t)`, *default:* `nil`) - Describes the visual format of the report's dimensions in columns or rows. The union of the fieldNames (dimension names) in all pivots must be a subset of dimension names defined in Dimensions. No two pivots can share a dimension. A dimension is only visible if it appears in a pivot.
  *   `property` (*type:* `String.t`, *default:* `nil`) - A Google Analytics GA4 property identifier whose events are tracked. Specified in the URL path and not the body. To learn more, see [where to find your Property ID](https://developers.google.com/analytics/devguides/reporting/data/v1/property-id). Within a batch request, this property should either be unspecified or consistent with the batch-level property. Example: properties/1234
  *   `returnPropertyQuota` (*type:* `boolean()`, *default:* `nil`) - Toggles whether to return the current state of this Analytics Property's quota. Quota is returned in [PropertyQuota](#PropertyQuota).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cohortSpec => GoogleApi.AnalyticsData.V1beta.Model.CohortSpec.t() | nil,
          :currencyCode => String.t() | nil,
          :dateRanges => list(GoogleApi.AnalyticsData.V1beta.Model.DateRange.t()) | nil,
          :dimensionFilter => GoogleApi.AnalyticsData.V1beta.Model.FilterExpression.t() | nil,
          :dimensions => list(GoogleApi.AnalyticsData.V1beta.Model.Dimension.t()) | nil,
          :keepEmptyRows => boolean() | nil,
          :metricFilter => GoogleApi.AnalyticsData.V1beta.Model.FilterExpression.t() | nil,
          :metrics => list(GoogleApi.AnalyticsData.V1beta.Model.Metric.t()) | nil,
          :pivots => list(GoogleApi.AnalyticsData.V1beta.Model.Pivot.t()) | nil,
          :property => String.t() | nil,
          :returnPropertyQuota => boolean() | nil
        }

  field(:cohortSpec, as: GoogleApi.AnalyticsData.V1beta.Model.CohortSpec)
  field(:currencyCode)
  field(:dateRanges, as: GoogleApi.AnalyticsData.V1beta.Model.DateRange, type: :list)
  field(:dimensionFilter, as: GoogleApi.AnalyticsData.V1beta.Model.FilterExpression)
  field(:dimensions, as: GoogleApi.AnalyticsData.V1beta.Model.Dimension, type: :list)
  field(:keepEmptyRows)
  field(:metricFilter, as: GoogleApi.AnalyticsData.V1beta.Model.FilterExpression)
  field(:metrics, as: GoogleApi.AnalyticsData.V1beta.Model.Metric, type: :list)
  field(:pivots, as: GoogleApi.AnalyticsData.V1beta.Model.Pivot, type: :list)
  field(:property)
  field(:returnPropertyQuota)
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsData.V1beta.Model.RunPivotReportRequest do
  def decode(value, options) do
    GoogleApi.AnalyticsData.V1beta.Model.RunPivotReportRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsData.V1beta.Model.RunPivotReportRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
