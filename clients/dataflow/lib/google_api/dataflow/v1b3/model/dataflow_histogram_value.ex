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

defmodule GoogleApi.Dataflow.V1b3.Model.DataflowHistogramValue do
  @moduledoc """
  Summary statistics for a population of values. HistogramValue contains a sequence of buckets and gives a count of values that fall into each bucket. Bucket boundares are defined by a formula and bucket widths are either fixed or exponentially increasing.

  ## Attributes

  *   `bucketCounts` (*type:* `list(String.t)`, *default:* `nil`) - Optional. The number of values in each bucket of the histogram, as described in `bucket_options`. `bucket_counts` should contain N values, where N is the number of buckets specified in `bucket_options`. If `bucket_counts` has fewer than N values, the remaining values are assumed to be 0.
  *   `bucketOptions` (*type:* `GoogleApi.Dataflow.V1b3.Model.BucketOptions.t`, *default:* `nil`) - Describes the bucket boundaries used in the histogram.
  *   `count` (*type:* `String.t`, *default:* `nil`) - Number of values recorded in this histogram.
  *   `outlierStats` (*type:* `GoogleApi.Dataflow.V1b3.Model.OutlierStats.t`, *default:* `nil`) - Statistics on the values recorded in the histogram that fall out of the bucket boundaries.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bucketCounts => list(String.t()) | nil,
          :bucketOptions => GoogleApi.Dataflow.V1b3.Model.BucketOptions.t() | nil,
          :count => String.t() | nil,
          :outlierStats => GoogleApi.Dataflow.V1b3.Model.OutlierStats.t() | nil
        }

  field(:bucketCounts, type: :list)
  field(:bucketOptions, as: GoogleApi.Dataflow.V1b3.Model.BucketOptions)
  field(:count)
  field(:outlierStats, as: GoogleApi.Dataflow.V1b3.Model.OutlierStats)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.DataflowHistogramValue do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.DataflowHistogramValue.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.DataflowHistogramValue do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
