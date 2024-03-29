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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1QueryTimeSeriesStatsRequest do
  @moduledoc """
  QueryTimeSeriesStatsRequest represents a query that returns a collection of time series sequences grouped by their values.

  ## Attributes

  *   `dimensions` (*type:* `list(String.t)`, *default:* `nil`) - List of dimension names to group the aggregations by. If no dimensions are passed, a single trend line representing the requested metric aggregations grouped by environment is returned.
  *   `filter` (*type:* `String.t`, *default:* `nil`) - Filter further on specific dimension values. Follows the same grammar as custom report's filter expressions. Example, apiproxy eq 'foobar'. https://cloud.google.com/apigee/docs/api-platform/analytics/analytics-reference#filters
  *   `metrics` (*type:* `list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1MetricAggregation.t)`, *default:* `nil`) - Required. List of metrics and their aggregations.
  *   `pageSize` (*type:* `integer()`, *default:* `nil`) - Page size represents the number of time series sequences, one per unique set of dimensions and their values.
  *   `pageToken` (*type:* `String.t`, *default:* `nil`) - Page token stands for a specific collection of time series sequences.
  *   `timeRange` (*type:* `GoogleApi.Apigee.V1.Model.GoogleTypeInterval.t`, *default:* `nil`) - Required. Time range for the stats.
  *   `timestampOrder` (*type:* `String.t`, *default:* `nil`) - Order the sequences in increasing or decreasing order of timestamps. Default is descending order of timestamps (latest first).
  *   `windowSize` (*type:* `String.t`, *default:* `nil`) - Time buckets to group the stats by.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dimensions => list(String.t()) | nil,
          :filter => String.t() | nil,
          :metrics =>
            list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1MetricAggregation.t()) | nil,
          :pageSize => integer() | nil,
          :pageToken => String.t() | nil,
          :timeRange => GoogleApi.Apigee.V1.Model.GoogleTypeInterval.t() | nil,
          :timestampOrder => String.t() | nil,
          :windowSize => String.t() | nil
        }

  field(:dimensions, type: :list)
  field(:filter)
  field(:metrics, as: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1MetricAggregation, type: :list)
  field(:pageSize)
  field(:pageToken)
  field(:timeRange, as: GoogleApi.Apigee.V1.Model.GoogleTypeInterval)
  field(:timestampOrder)
  field(:windowSize)
end

defimpl Poison.Decoder,
  for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1QueryTimeSeriesStatsRequest do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1QueryTimeSeriesStatsRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1QueryTimeSeriesStatsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
