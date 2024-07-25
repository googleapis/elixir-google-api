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

defmodule GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdValue do
  @moduledoc """
  The threshold value of the metric, above or below which the alert should be triggered. See EventAlertConfig or TaskAlertConfig for the different alert metric types in each case. For the *RATE metrics, one or both of these fields may be set. Zero is the default value and can be left at that. For *PERCENTILE_DURATION metrics, one or both of these fields may be set, and also, the duration threshold value should be specified in the threshold_duration_ms member below. For *AVERAGE_DURATION metrics, these fields should not be set at all. A different member, threshold_duration_ms, must be set in the EventAlertConfig or the TaskAlertConfig.

  ## Attributes

  *   `absolute` (*type:* `String.t`, *default:* `nil`) - Absolute value threshold.
  *   `percentage` (*type:* `integer()`, *default:* `nil`) - Percentage threshold.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :absolute => String.t() | nil,
          :percentage => integer() | nil
        }

  field(:absolute)
  field(:percentage)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdValue do
  def decode(value, options) do
    GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdValue.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdValue do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
