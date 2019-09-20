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

defmodule GoogleApi.Monitoring.V3.Model.MetricThreshold do
  @moduledoc """
  A condition type that compares a collection of time series against a threshold.

  ## Attributes

  *   `aggregations` (*type:* `list(GoogleApi.Monitoring.V3.Model.Aggregation.t)`, *default:* `nil`) - Specifies the alignment of data points in individual time series as well as how to combine the retrieved time series together (such as when aggregating multiple streams on each resource to a single stream for each resource or when aggregating streams across all members of a group of resrouces). Multiple aggregations are applied in the order specified.This field is similar to the one in the MetricService.ListTimeSeries request. It is advisable to use the ListTimeSeries method when debugging this field.
  *   `comparison` (*type:* `String.t`, *default:* `nil`) - The comparison to apply between the time series (indicated by filter and aggregation) and the threshold (indicated by threshold_value). The comparison is applied on each time series, with the time series on the left-hand side and the threshold on the right-hand side.Only COMPARISON_LT and COMPARISON_GT are supported currently.
  *   `denominatorAggregations` (*type:* `list(GoogleApi.Monitoring.V3.Model.Aggregation.t)`, *default:* `nil`) - Specifies the alignment of data points in individual time series selected by denominatorFilter as well as how to combine the retrieved time series together (such as when aggregating multiple streams on each resource to a single stream for each resource or when aggregating streams across all members of a group of resources).When computing ratios, the aggregations and denominator_aggregations fields must use the same alignment period and produce time series that have the same periodicity and labels.
  *   `denominatorFilter` (*type:* `String.t`, *default:* `nil`) - A filter that identifies a time series that should be used as the denominator of a ratio that will be compared with the threshold. If a denominator_filter is specified, the time series specified by the filter field will be used as the numerator.The filter and must specify the metric type and optionally may contain restrictions on resource type, resource labels, and metric labels. This field may not exceed 2048 Unicode characters in length.
  *   `duration` (*type:* `String.t`, *default:* `nil`) - The amount of time that a time series must violate the threshold to be considered failing. Currently, only values that are a multiple of a minute--e.g., 0, 60, 120, or 300 seconds--are supported. If an invalid value is given, an error will be returned. When choosing a duration, it is useful to keep in mind the frequency of the underlying time series data (which may also be affected by any alignments specified in the aggregations field); a good duration is long enough so that a single outlier does not generate spurious alerts, but short enough that unhealthy states are detected and alerted on quickly.
  *   `filter` (*type:* `String.t`, *default:* `nil`) - A filter that identifies which time series should be compared with the threshold.The filter is similar to the one that is specified in the MetricService.ListTimeSeries request (that call is useful to verify the time series that will be retrieved / processed) and must specify the metric type and optionally may contain restrictions on resource type, resource labels, and metric labels. This field may not exceed 2048 Unicode characters in length.
  *   `thresholdValue` (*type:* `float()`, *default:* `nil`) - A value against which to compare the time series.
  *   `trigger` (*type:* `GoogleApi.Monitoring.V3.Model.Trigger.t`, *default:* `nil`) - The number/percent of time series for which the comparison must hold in order for the condition to trigger. If unspecified, then the condition will trigger if the comparison is true for any of the time series that have been identified by filter and aggregations, or by the ratio, if denominator_filter and denominator_aggregations are specified.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :aggregations => list(GoogleApi.Monitoring.V3.Model.Aggregation.t()),
          :comparison => String.t(),
          :denominatorAggregations => list(GoogleApi.Monitoring.V3.Model.Aggregation.t()),
          :denominatorFilter => String.t(),
          :duration => String.t(),
          :filter => String.t(),
          :thresholdValue => float(),
          :trigger => GoogleApi.Monitoring.V3.Model.Trigger.t()
        }

  field(:aggregations, as: GoogleApi.Monitoring.V3.Model.Aggregation, type: :list)
  field(:comparison)
  field(:denominatorAggregations, as: GoogleApi.Monitoring.V3.Model.Aggregation, type: :list)
  field(:denominatorFilter)
  field(:duration)
  field(:filter)
  field(:thresholdValue)
  field(:trigger, as: GoogleApi.Monitoring.V3.Model.Trigger)
end

defimpl Poison.Decoder, for: GoogleApi.Monitoring.V3.Model.MetricThreshold do
  def decode(value, options) do
    GoogleApi.Monitoring.V3.Model.MetricThreshold.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Monitoring.V3.Model.MetricThreshold do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
