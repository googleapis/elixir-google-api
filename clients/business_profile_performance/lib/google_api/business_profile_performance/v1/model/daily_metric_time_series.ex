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

defmodule GoogleApi.BusinessProfilePerformance.V1.Model.DailyMetricTimeSeries do
  @moduledoc """
  Represents a single datapoint, where each datapoint is a DailyMetric-DailySubEntityType-TimeSeries tuple.

  ## Attributes

  *   `dailyMetric` (*type:* `String.t`, *default:* `nil`) - The DailyMetric that the TimeSeries represents.
  *   `dailySubEntityType` (*type:* `GoogleApi.BusinessProfilePerformance.V1.Model.DailySubEntityType.t`, *default:* `nil`) - The DailySubEntityType that the TimeSeries represents. Will not be present when breakdown does not exist.
  *   `timeSeries` (*type:* `GoogleApi.BusinessProfilePerformance.V1.Model.TimeSeries.t`, *default:* `nil`) - List of datapoints where each datapoint is a date-value pair.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dailyMetric => String.t() | nil,
          :dailySubEntityType =>
            GoogleApi.BusinessProfilePerformance.V1.Model.DailySubEntityType.t() | nil,
          :timeSeries => GoogleApi.BusinessProfilePerformance.V1.Model.TimeSeries.t() | nil
        }

  field(:dailyMetric)
  field(:dailySubEntityType, as: GoogleApi.BusinessProfilePerformance.V1.Model.DailySubEntityType)
  field(:timeSeries, as: GoogleApi.BusinessProfilePerformance.V1.Model.TimeSeries)
end

defimpl Poison.Decoder, for: GoogleApi.BusinessProfilePerformance.V1.Model.DailyMetricTimeSeries do
  def decode(value, options) do
    GoogleApi.BusinessProfilePerformance.V1.Model.DailyMetricTimeSeries.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BusinessProfilePerformance.V1.Model.DailyMetricTimeSeries do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
