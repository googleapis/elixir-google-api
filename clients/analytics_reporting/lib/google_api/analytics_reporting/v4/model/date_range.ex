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

defmodule GoogleApi.AnalyticsReporting.V4.Model.DateRange do
  @moduledoc """
  A contiguous set of days: startDate, startDate + 1 day, ..., endDate.
  The start and end dates are specified in
  [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) date format `YYYY-MM-DD`.

  ## Attributes

  *   `endDate` (*type:* `String.t`, *default:* `nil`) - The end date for the query in the format `YYYY-MM-DD`.
  *   `startDate` (*type:* `String.t`, *default:* `nil`) - The start date for the query in the format `YYYY-MM-DD`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endDate => String.t(),
          :startDate => String.t()
        }

  field(:endDate)
  field(:startDate)
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsReporting.V4.Model.DateRange do
  def decode(value, options) do
    GoogleApi.AnalyticsReporting.V4.Model.DateRange.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsReporting.V4.Model.DateRange do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
