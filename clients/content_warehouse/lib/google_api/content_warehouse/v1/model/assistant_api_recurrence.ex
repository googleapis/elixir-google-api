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

defmodule GoogleApi.ContentWarehouse.V1.Model.AssistantApiRecurrence do
  @moduledoc """
  Date-based recurrences specify repeating events. Conceptually, a recurrence is a (possibly unbounded) sequence of dates on which an event falls, described by a list of constraints. A date is in a recurrence if and only if it satisfies all of the constraints. Note that devices may support some constraints, but not all.

  ## Attributes

  *   `begin` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantApiDate.t`, *default:* `nil`) - The first day of the recurrence. If begin is not set, then the reminder will start infinitely in the past.
  *   `blacklistedRanges` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.AssistantApiDateTimeRange.t)`, *default:* `nil`) - A list of blacklisted dates to skip the alarm on.
  *   `dayOfMonth` (*type:* `list(integer())`, *default:* `nil`) - Specifies the date in a month. For example, if day_of_month is 15, then it represent the 15th day of the specified month.
  *   `dayOfWeek` (*type:* `list(integer())`, *default:* `nil`) - Specifies a weekly or daily recurrence. Constraint: The date falls on one of these days of the week, in 0...6 (Sunday...Saturday).
  *   `end` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantApiDate.t`, *default:* `nil`) - The last day of the recurrence.
  *   `every` (*type:* `integer()`, *default:* `nil`) - Multiplier on the frequency of the recurrence. Use this to specify patterns that recur every X days, months, years, etc. Example: [remind me to call mom every 2nd week]. Default is 1 (every day, every month, every year).
  *   `monthOfYear` (*type:* `list(integer())`, *default:* `nil`) - Specifies the month in a year. Constrain: the month falls on one of these months, in 1, 2, ... 12 (January...December).
  *   `numOccurrences` (*type:* `integer()`, *default:* `nil`) - The number of occurrences after which the recurrence should end.
  *   `weekOfMonth` (*type:* `list(integer())`, *default:* `nil`) - Specifies the index of week in a month. For example, the second Tuesday every month, in this case, week_of_month should be 2.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :begin => GoogleApi.ContentWarehouse.V1.Model.AssistantApiDate.t() | nil,
          :blacklistedRanges =>
            list(GoogleApi.ContentWarehouse.V1.Model.AssistantApiDateTimeRange.t()) | nil,
          :dayOfMonth => list(integer()) | nil,
          :dayOfWeek => list(integer()) | nil,
          :end => GoogleApi.ContentWarehouse.V1.Model.AssistantApiDate.t() | nil,
          :every => integer() | nil,
          :monthOfYear => list(integer()) | nil,
          :numOccurrences => integer() | nil,
          :weekOfMonth => list(integer()) | nil
        }

  field(:begin, as: GoogleApi.ContentWarehouse.V1.Model.AssistantApiDate)

  field(:blacklistedRanges,
    as: GoogleApi.ContentWarehouse.V1.Model.AssistantApiDateTimeRange,
    type: :list
  )

  field(:dayOfMonth, type: :list)
  field(:dayOfWeek, type: :list)
  field(:end, as: GoogleApi.ContentWarehouse.V1.Model.AssistantApiDate)
  field(:every)
  field(:monthOfYear, type: :list)
  field(:numOccurrences)
  field(:weekOfMonth, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.AssistantApiRecurrence do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AssistantApiRecurrence.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.AssistantApiRecurrence do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
