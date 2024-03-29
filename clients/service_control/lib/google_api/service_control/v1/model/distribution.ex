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

defmodule GoogleApi.ServiceControl.V1.Model.Distribution do
  @moduledoc """
  Distribution represents a frequency distribution of double-valued sample points. It contains the size of the population of sample points plus additional optional information: * the arithmetic mean of the samples * the minimum and maximum of the samples * the sum-squared-deviation of the samples, used to compute variance * a histogram of the values of the sample points

  ## Attributes

  *   `bucketCounts` (*type:* `list(String.t)`, *default:* `nil`) - The number of samples in each histogram bucket. `bucket_counts` are optional. If present, they must sum to the `count` value. The buckets are defined below in `bucket_option`. There are N buckets. `bucket_counts[0]` is the number of samples in the underflow bucket. `bucket_counts[1]` to `bucket_counts[N-1]` are the numbers of samples in each of the finite buckets. And `bucket_counts[N] is the number of samples in the overflow bucket. See the comments of `bucket_option` below for more details. Any suffix of trailing zeros may be omitted.
  *   `count` (*type:* `String.t`, *default:* `nil`) - The total number of samples in the distribution. Must be >= 0.
  *   `exemplars` (*type:* `list(GoogleApi.ServiceControl.V1.Model.Exemplar.t)`, *default:* `nil`) - Example points. Must be in increasing order of `value` field.
  *   `explicitBuckets` (*type:* `GoogleApi.ServiceControl.V1.Model.ExplicitBuckets.t`, *default:* `nil`) - Buckets with arbitrary user-provided width.
  *   `exponentialBuckets` (*type:* `GoogleApi.ServiceControl.V1.Model.ExponentialBuckets.t`, *default:* `nil`) - Buckets with exponentially growing width.
  *   `linearBuckets` (*type:* `GoogleApi.ServiceControl.V1.Model.LinearBuckets.t`, *default:* `nil`) - Buckets with constant width.
  *   `maximum` (*type:* `float()`, *default:* `nil`) - The maximum of the population of values. Ignored if `count` is zero.
  *   `mean` (*type:* `float()`, *default:* `nil`) - The arithmetic mean of the samples in the distribution. If `count` is zero then this field must be zero.
  *   `minimum` (*type:* `float()`, *default:* `nil`) - The minimum of the population of values. Ignored if `count` is zero.
  *   `sumOfSquaredDeviation` (*type:* `float()`, *default:* `nil`) - The sum of squared deviations from the mean: Sum[i=1..count]((x_i - mean)^2) where each x_i is a sample values. If `count` is zero then this field must be zero, otherwise validation of the request fails.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bucketCounts => list(String.t()) | nil,
          :count => String.t() | nil,
          :exemplars => list(GoogleApi.ServiceControl.V1.Model.Exemplar.t()) | nil,
          :explicitBuckets => GoogleApi.ServiceControl.V1.Model.ExplicitBuckets.t() | nil,
          :exponentialBuckets => GoogleApi.ServiceControl.V1.Model.ExponentialBuckets.t() | nil,
          :linearBuckets => GoogleApi.ServiceControl.V1.Model.LinearBuckets.t() | nil,
          :maximum => float() | nil,
          :mean => float() | nil,
          :minimum => float() | nil,
          :sumOfSquaredDeviation => float() | nil
        }

  field(:bucketCounts, type: :list)
  field(:count)
  field(:exemplars, as: GoogleApi.ServiceControl.V1.Model.Exemplar, type: :list)
  field(:explicitBuckets, as: GoogleApi.ServiceControl.V1.Model.ExplicitBuckets)
  field(:exponentialBuckets, as: GoogleApi.ServiceControl.V1.Model.ExponentialBuckets)
  field(:linearBuckets, as: GoogleApi.ServiceControl.V1.Model.LinearBuckets)
  field(:maximum)
  field(:mean)
  field(:minimum)
  field(:sumOfSquaredDeviation)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceControl.V1.Model.Distribution do
  def decode(value, options) do
    GoogleApi.ServiceControl.V1.Model.Distribution.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceControl.V1.Model.Distribution do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
