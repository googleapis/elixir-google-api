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

defmodule GoogleApi.AdExchangeBuyer.V2beta1.Model.MetricValue do
  @moduledoc """
  A metric value, with an expected value and a variance; represents a count
  that may be either exact or estimated (i.e. when sampled).

  ## Attributes

  *   `value` (*type:* `String.t`, *default:* `nil`) - The expected value of the metric.
  *   `variance` (*type:* `String.t`, *default:* `nil`) - The variance (i.e. square of the standard deviation) of the metric value.
      If value is exact, variance is 0.
      Can be used to calculate margin of error as a percentage of value, using
      the following formula, where Z is the standard constant that depends on the
      desired size of the confidence interval (e.g. for 90% confidence interval,
      use Z = 1.645):

        marginOfError = 100 * Z * sqrt(variance) / value
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :value => String.t(),
          :variance => String.t()
        }

  field(:value)
  field(:variance)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.MetricValue do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V2beta1.Model.MetricValue.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.MetricValue do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
