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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1MetricAggregation do
  @moduledoc """
  The optionally aggregated metric to query with its ordering.

  ## Attributes

  *   `aggregation` (*type:* `String.t`, *default:* `nil`) - Aggregation function associated with the metric.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the metric
  *   `order` (*type:* `String.t`, *default:* `nil`) - Ordering for this aggregation in the result. For time series this is ignored since the ordering of points depends only on the timestamp, not the values.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :aggregation => String.t() | nil,
          :name => String.t() | nil,
          :order => String.t() | nil
        }

  field(:aggregation)
  field(:name)
  field(:order)
end

defimpl Poison.Decoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1MetricAggregation do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1MetricAggregation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1MetricAggregation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
