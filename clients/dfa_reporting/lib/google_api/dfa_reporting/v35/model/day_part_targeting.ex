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

defmodule GoogleApi.DFAReporting.V35.Model.DayPartTargeting do
  @moduledoc """
  Day Part Targeting.

  ## Attributes

  *   `daysOfWeek` (*type:* `list(String.t)`, *default:* `nil`) - Days of the week when the ad will serve. Acceptable values are: - "SUNDAY" - "MONDAY" - "TUESDAY" - "WEDNESDAY" - "THURSDAY" - "FRIDAY" - "SATURDAY" 
  *   `hoursOfDay` (*type:* `list(integer())`, *default:* `nil`) - Hours of the day when the ad will serve, where 0 is midnight to 1 AM and 23 is 11 PM to midnight. Can be specified with days of week, in which case the ad would serve during these hours on the specified days. For example if Monday, Wednesday, Friday are the days of week specified and 9-10am, 3-5pm (hours 9, 15, and 16) is specified, the ad would serve Monday, Wednesdays, and Fridays at 9-10am and 3-5pm. Acceptable values are 0 to 23, inclusive.
  *   `userLocalTime` (*type:* `boolean()`, *default:* `nil`) - Whether or not to use the user's local time. If false, the America/New York time zone applies.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :daysOfWeek => list(String.t()) | nil,
          :hoursOfDay => list(integer()) | nil,
          :userLocalTime => boolean() | nil
        }

  field(:daysOfWeek, type: :list)
  field(:hoursOfDay, type: :list)
  field(:userLocalTime)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V35.Model.DayPartTargeting do
  def decode(value, options) do
    GoogleApi.DFAReporting.V35.Model.DayPartTargeting.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V35.Model.DayPartTargeting do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
