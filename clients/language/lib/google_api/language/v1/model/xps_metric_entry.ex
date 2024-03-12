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

defmodule GoogleApi.Language.V1.Model.XPSMetricEntry do
  @moduledoc """


  ## Attributes

  *   `argentumMetricId` (*type:* `String.t`, *default:* `nil`) - For billing metrics that are using legacy sku's, set the legacy billing metric id here. This will be sent to Chemist as the "cloudbilling.googleapis.com/argentum_metric_id" label. Otherwise leave empty.
  *   `doubleValue` (*type:* `float()`, *default:* `nil`) - A double value.
  *   `int64Value` (*type:* `String.t`, *default:* `nil`) - A signed 64-bit integer value.
  *   `metricName` (*type:* `String.t`, *default:* `nil`) - The metric name defined in the service configuration.
  *   `systemLabels` (*type:* `list(GoogleApi.Language.V1.Model.XPSMetricEntryLabel.t)`, *default:* `nil`) - Billing system labels for this (metric, value) pair.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :argentumMetricId => String.t() | nil,
          :doubleValue => float() | nil,
          :int64Value => String.t() | nil,
          :metricName => String.t() | nil,
          :systemLabels => list(GoogleApi.Language.V1.Model.XPSMetricEntryLabel.t()) | nil
        }

  field(:argentumMetricId)
  field(:doubleValue)
  field(:int64Value)
  field(:metricName)
  field(:systemLabels, as: GoogleApi.Language.V1.Model.XPSMetricEntryLabel, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Language.V1.Model.XPSMetricEntry do
  def decode(value, options) do
    GoogleApi.Language.V1.Model.XPSMetricEntry.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Language.V1.Model.XPSMetricEntry do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
