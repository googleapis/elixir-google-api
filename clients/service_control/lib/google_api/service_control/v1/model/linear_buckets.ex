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

defmodule GoogleApi.ServiceControl.V1.Model.LinearBuckets do
  @moduledoc """
  Describing buckets with constant width.

  ## Attributes

  *   `numFiniteBuckets` (*type:* `integer()`, *default:* `nil`) - The number of finite buckets. With the underflow and overflow buckets, the total number of buckets is `num_finite_buckets` + 2. See comments on `bucket_options` for details.
  *   `offset` (*type:* `float()`, *default:* `nil`) - The i'th linear bucket covers the interval [offset + (i-1) * width, offset + i * width) where i ranges from 1 to num_finite_buckets, inclusive.
  *   `width` (*type:* `float()`, *default:* `nil`) - The i'th linear bucket covers the interval [offset + (i-1) * width, offset + i * width) where i ranges from 1 to num_finite_buckets, inclusive. Must be strictly positive.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :numFiniteBuckets => integer() | nil,
          :offset => float() | nil,
          :width => float() | nil
        }

  field(:numFiniteBuckets)
  field(:offset)
  field(:width)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceControl.V1.Model.LinearBuckets do
  def decode(value, options) do
    GoogleApi.ServiceControl.V1.Model.LinearBuckets.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceControl.V1.Model.LinearBuckets do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
