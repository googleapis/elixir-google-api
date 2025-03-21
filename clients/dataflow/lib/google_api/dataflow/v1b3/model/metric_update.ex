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

defmodule GoogleApi.Dataflow.V1b3.Model.MetricUpdate do
  @moduledoc """
  Describes the state of a metric.

  ## Attributes

  *   `cumulative` (*type:* `boolean()`, *default:* `nil`) - True if this metric is reported as the total cumulative aggregate value accumulated since the worker started working on this WorkItem. By default this is false, indicating that this metric is reported as a delta that is not associated with any WorkItem.
  *   `distribution` (*type:* `any()`, *default:* `nil`) - A struct value describing properties of a distribution of numeric values.
  *   `gauge` (*type:* `any()`, *default:* `nil`) - A struct value describing properties of a Gauge. Metrics of gauge type show the value of a metric across time, and is aggregated based on the newest value.
  *   `internal` (*type:* `any()`, *default:* `nil`) - Worker-computed aggregate value for internal use by the Dataflow service.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Metric aggregation kind. The possible metric aggregation kinds are "Sum", "Max", "Min", "Mean", "Set", "And", "Or", and "Distribution". The specified aggregation kind is case-insensitive. If omitted, this is not an aggregated value but instead a single metric sample value.
  *   `meanCount` (*type:* `any()`, *default:* `nil`) - Worker-computed aggregate value for the "Mean" aggregation kind. This holds the count of the aggregated values and is used in combination with mean_sum above to obtain the actual mean aggregate value. The only possible value type is Long.
  *   `meanSum` (*type:* `any()`, *default:* `nil`) - Worker-computed aggregate value for the "Mean" aggregation kind. This holds the sum of the aggregated values and is used in combination with mean_count below to obtain the actual mean aggregate value. The only possible value types are Long and Double.
  *   `name` (*type:* `GoogleApi.Dataflow.V1b3.Model.MetricStructuredName.t`, *default:* `nil`) - Name of the metric.
  *   `scalar` (*type:* `any()`, *default:* `nil`) - Worker-computed aggregate value for aggregation kinds "Sum", "Max", "Min", "And", and "Or". The possible value types are Long, Double, and Boolean.
  *   `set` (*type:* `any()`, *default:* `nil`) - Worker-computed aggregate value for the "Set" aggregation kind. The only possible value type is a list of Values whose type can be Long, Double, String, or BoundedTrie according to the metric's type. All Values in the list must be of the same type.
  *   `trie` (*type:* `any()`, *default:* `nil`) - Worker-computed aggregate value for the "Trie" aggregation kind. The only possible value type is a BoundedTrieNode.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Timestamp associated with the metric value. Optional when workers are reporting work progress; it will be filled in responses from the metrics API.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cumulative => boolean() | nil,
          :distribution => any() | nil,
          :gauge => any() | nil,
          :internal => any() | nil,
          :kind => String.t() | nil,
          :meanCount => any() | nil,
          :meanSum => any() | nil,
          :name => GoogleApi.Dataflow.V1b3.Model.MetricStructuredName.t() | nil,
          :scalar => any() | nil,
          :set => any() | nil,
          :trie => any() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:cumulative)
  field(:distribution)
  field(:gauge)
  field(:internal)
  field(:kind)
  field(:meanCount)
  field(:meanSum)
  field(:name, as: GoogleApi.Dataflow.V1b3.Model.MetricStructuredName)
  field(:scalar)
  field(:set)
  field(:trie)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.MetricUpdate do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.MetricUpdate.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.MetricUpdate do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
