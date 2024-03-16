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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelDeploymentMonitoringScheduleConfig do
  @moduledoc """
  The config for scheduling monitoring job.

  ## Attributes

  *   `monitorInterval` (*type:* `String.t`, *default:* `nil`) - Required. The model monitoring job scheduling interval. It will be rounded up to next full hour. This defines how often the monitoring jobs are triggered.
  *   `monitorWindow` (*type:* `String.t`, *default:* `nil`) - The time window of the prediction data being included in each prediction dataset. This window specifies how long the data should be collected from historical model results for each run. If not set, ModelDeploymentMonitoringScheduleConfig.monitor_interval will be used. e.g. If currently the cutoff time is 2022-01-08 14:30:00 and the monitor_window is set to be 3600, then data from 2022-01-08 13:30:00 to 2022-01-08 14:30:00 will be retrieved and aggregated to calculate the monitoring statistics.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :monitorInterval => String.t() | nil,
          :monitorWindow => String.t() | nil
        }

  field(:monitorInterval)
  field(:monitorWindow)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelDeploymentMonitoringScheduleConfig do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelDeploymentMonitoringScheduleConfig.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelDeploymentMonitoringScheduleConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end