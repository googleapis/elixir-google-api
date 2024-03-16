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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FeaturestoreMonitoringConfigSnapshotAnalysis do
  @moduledoc """
  Configuration of the Featurestore's Snapshot Analysis Based Monitoring. This type of analysis generates statistics for each Feature based on a snapshot of the latest feature value of each entities every monitoring_interval.

  ## Attributes

  *   `disabled` (*type:* `boolean()`, *default:* `nil`) - The monitoring schedule for snapshot analysis. For EntityType-level config: unset / disabled = true indicates disabled by default for Features under it; otherwise by default enable snapshot analysis monitoring with monitoring_interval for Features under it. Feature-level config: disabled = true indicates disabled regardless of the EntityType-level config; unset monitoring_interval indicates going with EntityType-level config; otherwise run snapshot analysis monitoring with monitoring_interval regardless of the EntityType-level config. Explicitly Disable the snapshot analysis based monitoring.
  *   `monitoringIntervalDays` (*type:* `integer()`, *default:* `nil`) - Configuration of the snapshot analysis based monitoring pipeline running interval. The value indicates number of days.
  *   `stalenessDays` (*type:* `integer()`, *default:* `nil`) - Customized export features time window for snapshot analysis. Unit is one day. Default value is 3 weeks. Minimum value is 1 day. Maximum value is 4000 days.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :disabled => boolean() | nil,
          :monitoringIntervalDays => integer() | nil,
          :stalenessDays => integer() | nil
        }

  field(:disabled)
  field(:monitoringIntervalDays)
  field(:stalenessDays)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FeaturestoreMonitoringConfigSnapshotAnalysis do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FeaturestoreMonitoringConfigSnapshotAnalysis.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FeaturestoreMonitoringConfigSnapshotAnalysis do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end