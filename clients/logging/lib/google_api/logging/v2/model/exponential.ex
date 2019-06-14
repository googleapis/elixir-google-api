# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Logging.V2.Model.Exponential do
  @moduledoc """
  Specifies an exponential sequence of buckets that have a width that is proportional to the value of the lower bound. Each bucket represents a constant relative uncertainty on a specific value in the bucket.There are num_finite_buckets + 2 (= N) buckets. Bucket i has the following boundaries:Upper bound (0 <= i < N-1): scale * (growth_factor ^ i).  Lower bound (1 <= i < N): scale * (growth_factor ^ (i - 1)).

  ## Attributes

  - growthFactor (float()): Must be greater than 1. Defaults to `nil`.
  - numFiniteBuckets (integer()): Must be greater than 0. Defaults to `nil`.
  - scale (float()): Must be greater than 0. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :growthFactor => float(),
          :numFiniteBuckets => integer(),
          :scale => float()
        }

  field(:growthFactor)
  field(:numFiniteBuckets)
  field(:scale)
end

defimpl Poison.Decoder, for: GoogleApi.Logging.V2.Model.Exponential do
  def decode(value, options) do
    GoogleApi.Logging.V2.Model.Exponential.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Logging.V2.Model.Exponential do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
