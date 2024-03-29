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

defmodule GoogleApi.Language.V1.Model.XPSTimestampStats do
  @moduledoc """
  The data statistics of a series of TIMESTAMP values.

  ## Attributes

  *   `commonStats` (*type:* `GoogleApi.Language.V1.Model.XPSCommonStats.t`, *default:* `nil`) - 
  *   `granularStats` (*type:* `%{optional(String.t) => GoogleApi.Language.V1.Model.XPSTimestampStatsGranularStats.t}`, *default:* `nil`) - The string key is the pre-defined granularity. Currently supported: hour_of_day, day_of_week, month_of_year. Granularities finer that the granularity of timestamp data are not populated (e.g. if timestamps are at day granularity, then hour_of_day is not populated).
  *   `medianTimestampNanos` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :commonStats => GoogleApi.Language.V1.Model.XPSCommonStats.t() | nil,
          :granularStats =>
            %{
              optional(String.t()) =>
                GoogleApi.Language.V1.Model.XPSTimestampStatsGranularStats.t()
            }
            | nil,
          :medianTimestampNanos => String.t() | nil
        }

  field(:commonStats, as: GoogleApi.Language.V1.Model.XPSCommonStats)

  field(:granularStats, as: GoogleApi.Language.V1.Model.XPSTimestampStatsGranularStats, type: :map)

  field(:medianTimestampNanos)
end

defimpl Poison.Decoder, for: GoogleApi.Language.V1.Model.XPSTimestampStats do
  def decode(value, options) do
    GoogleApi.Language.V1.Model.XPSTimestampStats.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Language.V1.Model.XPSTimestampStats do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
