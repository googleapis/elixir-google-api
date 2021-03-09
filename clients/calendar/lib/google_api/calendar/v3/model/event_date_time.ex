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

defmodule GoogleApi.Calendar.V3.Model.EventDateTime do
  @moduledoc """


  ## Attributes

  *   `date` (*type:* `Date.t`, *default:* `nil`) - The date, in the format "yyyy-mm-dd", if this is an all-day event.
  *   `dateTime` (*type:* `DateTime.t`, *default:* `nil`) - The time, as a combined date-time value (formatted according to RFC3339). A time zone offset is required unless a time zone is explicitly specified in timeZone.
  *   `timeZone` (*type:* `String.t`, *default:* `nil`) - The time zone in which the time is specified. (Formatted as an IANA Time Zone Database name, e.g. "Europe/Zurich".) For recurring events this field is required and specifies the time zone in which the recurrence is expanded. For single events this field is optional and indicates a custom time zone for the event start/end.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :date => Date.t() | nil,
          :dateTime => DateTime.t() | nil,
          :timeZone => String.t() | nil
        }

  field(:date, as: Date)
  field(:dateTime, as: DateTime)
  field(:timeZone)
end

defimpl Poison.Decoder, for: GoogleApi.Calendar.V3.Model.EventDateTime do
  def decode(value, options) do
    GoogleApi.Calendar.V3.Model.EventDateTime.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Calendar.V3.Model.EventDateTime do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
