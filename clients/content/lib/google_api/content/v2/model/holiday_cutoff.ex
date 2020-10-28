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

defmodule GoogleApi.Content.V2.Model.HolidayCutoff do
  @moduledoc """


  ## Attributes

  *   `deadlineDate` (*type:* `String.t`, *default:* `nil`) - Date of the order deadline, in ISO 8601 format. E.g. "2016-11-29" for 29th November 2016. Required.
  *   `deadlineHour` (*type:* `integer()`, *default:* `nil`) - Hour of the day on the deadline date until which the order has to be placed to qualify for the delivery guarantee. Possible values are: 0 (midnight), 1, ..., 12 (noon), 13, ..., 23. Required.
  *   `deadlineTimezone` (*type:* `String.t`, *default:* `nil`) - Timezone identifier for the deadline hour. A list of identifiers can be found in the AdWords API documentation. E.g. "Europe/Zurich". Required.
  *   `holidayId` (*type:* `String.t`, *default:* `nil`) - Unique identifier for the holiday. Required.
  *   `visibleFromDate` (*type:* `String.t`, *default:* `nil`) - Date on which the deadline will become visible to consumers in ISO 8601 format. E.g. "2016-10-31" for 31st October 2016. Required.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deadlineDate => String.t(),
          :deadlineHour => integer(),
          :deadlineTimezone => String.t(),
          :holidayId => String.t(),
          :visibleFromDate => String.t()
        }

  field(:deadlineDate)
  field(:deadlineHour)
  field(:deadlineTimezone)
  field(:holidayId)
  field(:visibleFromDate)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.HolidayCutoff do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.HolidayCutoff.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.HolidayCutoff do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
