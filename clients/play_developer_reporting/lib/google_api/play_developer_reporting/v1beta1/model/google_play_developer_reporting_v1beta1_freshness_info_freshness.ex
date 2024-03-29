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

defmodule GoogleApi.PlayDeveloperReporting.V1beta1.Model.GooglePlayDeveloperReportingV1beta1FreshnessInfoFreshness do
  @moduledoc """
  Information about data freshness for a single aggregation period.

  ## Attributes

  *   `aggregationPeriod` (*type:* `String.t`, *default:* `nil`) - Aggregation period for which data is available.
  *   `latestEndTime` (*type:* `GoogleApi.PlayDeveloperReporting.V1beta1.Model.GoogleTypeDateTime.t`, *default:* `nil`) - Latest end time for which data is available, for the aggregation period. The time is specified in the metric set's default timezone. *Note:* time ranges in TimelineSpec are represented as `start_time, end_time)`. For example, if the latest available timeline data point for a `DAILY` aggregation period is `2021-06-23 00:00:00 America/Los_Angeles`, the value of this field would be `2021-06-24 00:00:00 America/Los_Angeles` so it can be easily reused in [TimelineSpec.end_time.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :aggregationPeriod => String.t() | nil,
          :latestEndTime =>
            GoogleApi.PlayDeveloperReporting.V1beta1.Model.GoogleTypeDateTime.t() | nil
        }

  field(:aggregationPeriod)
  field(:latestEndTime, as: GoogleApi.PlayDeveloperReporting.V1beta1.Model.GoogleTypeDateTime)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.PlayDeveloperReporting.V1beta1.Model.GooglePlayDeveloperReportingV1beta1FreshnessInfoFreshness do
  def decode(value, options) do
    GoogleApi.PlayDeveloperReporting.V1beta1.Model.GooglePlayDeveloperReportingV1beta1FreshnessInfoFreshness.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.PlayDeveloperReporting.V1beta1.Model.GooglePlayDeveloperReportingV1beta1FreshnessInfoFreshness do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
