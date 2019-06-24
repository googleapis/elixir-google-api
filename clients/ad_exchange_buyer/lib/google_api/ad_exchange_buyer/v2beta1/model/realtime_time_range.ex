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

defmodule GoogleApi.AdExchangeBuyer.V2beta1.Model.RealtimeTimeRange do
  @moduledoc """
  An open-ended realtime time range specified by the start timestamp.
  For filter sets that specify a realtime time range RTB metrics continue to
  be aggregated throughout the lifetime of the filter set.

  ## Attributes

  *   `startTimestamp` (*type:* `DateTime.t`, *default:* `nil`) - The start timestamp of the real-time RTB metrics aggregation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :startTimestamp => DateTime.t()
        }

  field(:startTimestamp, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.RealtimeTimeRange do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V2beta1.Model.RealtimeTimeRange.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.RealtimeTimeRange do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
