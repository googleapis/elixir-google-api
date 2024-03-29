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

defmodule GoogleApi.AnalyticsData.V1beta.Model.Row do
  @moduledoc """
  Report data for each row. For example if RunReportRequest contains: ```none "dimensions": [ { "name": "eventName" }, { "name": "countryId" } ], "metrics": [ { "name": "eventCount" } ] ``` One row with 'in_app_purchase' as the eventName, 'JP' as the countryId, and 15 as the eventCount, would be: ```none "dimensionValues": [ { "value": "in_app_purchase" }, { "value": "JP" } ], "metricValues": [ { "value": "15" } ] ```

  ## Attributes

  *   `dimensionValues` (*type:* `list(GoogleApi.AnalyticsData.V1beta.Model.DimensionValue.t)`, *default:* `nil`) - List of requested dimension values. In a PivotReport, dimension_values are only listed for dimensions included in a pivot.
  *   `metricValues` (*type:* `list(GoogleApi.AnalyticsData.V1beta.Model.MetricValue.t)`, *default:* `nil`) - List of requested visible metric values.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dimensionValues => list(GoogleApi.AnalyticsData.V1beta.Model.DimensionValue.t()) | nil,
          :metricValues => list(GoogleApi.AnalyticsData.V1beta.Model.MetricValue.t()) | nil
        }

  field(:dimensionValues, as: GoogleApi.AnalyticsData.V1beta.Model.DimensionValue, type: :list)
  field(:metricValues, as: GoogleApi.AnalyticsData.V1beta.Model.MetricValue, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsData.V1beta.Model.Row do
  def decode(value, options) do
    GoogleApi.AnalyticsData.V1beta.Model.Row.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsData.V1beta.Model.Row do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
