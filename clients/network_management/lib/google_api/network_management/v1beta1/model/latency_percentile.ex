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

defmodule GoogleApi.NetworkManagement.V1beta1.Model.LatencyPercentile do
  @moduledoc """
  Latency percentile rank and value.

  ## Attributes

  *   `latencyMicros` (*type:* `String.t`, *default:* `nil`) - percent-th percentile of latency observed, in microseconds. Fraction of percent/100 of samples have latency lower or equal to the value of this field.
  *   `percent` (*type:* `integer()`, *default:* `nil`) - Percentage of samples this data point applies to.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :latencyMicros => String.t(),
          :percent => integer()
        }

  field(:latencyMicros)
  field(:percent)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkManagement.V1beta1.Model.LatencyPercentile do
  def decode(value, options) do
    GoogleApi.NetworkManagement.V1beta1.Model.LatencyPercentile.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkManagement.V1beta1.Model.LatencyPercentile do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
