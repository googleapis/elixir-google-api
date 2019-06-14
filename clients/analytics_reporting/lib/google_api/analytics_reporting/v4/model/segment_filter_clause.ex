# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.AnalyticsReporting.V4.Model.SegmentFilterClause do
  @moduledoc """
  Filter Clause to be used in a segment definition, can be wither a metric or
  a dimension filter.

  ## Attributes

  - dimensionFilter (GoogleApi.AnalyticsReporting.V4.Model.SegmentDimensionFilter.t): Dimension Filter for the segment definition. Defaults to `nil`.
  - metricFilter (GoogleApi.AnalyticsReporting.V4.Model.SegmentMetricFilter.t): Metric Filter for the segment definition. Defaults to `nil`.
  - not (boolean()): Matches the complement (`!`) of the filter. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dimensionFilter => GoogleApi.AnalyticsReporting.V4.Model.SegmentDimensionFilter.t(),
          :metricFilter => GoogleApi.AnalyticsReporting.V4.Model.SegmentMetricFilter.t(),
          :not => boolean()
        }

  field(:dimensionFilter, as: GoogleApi.AnalyticsReporting.V4.Model.SegmentDimensionFilter)
  field(:metricFilter, as: GoogleApi.AnalyticsReporting.V4.Model.SegmentMetricFilter)
  field(:not)
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsReporting.V4.Model.SegmentFilterClause do
  def decode(value, options) do
    GoogleApi.AnalyticsReporting.V4.Model.SegmentFilterClause.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsReporting.V4.Model.SegmentFilterClause do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
