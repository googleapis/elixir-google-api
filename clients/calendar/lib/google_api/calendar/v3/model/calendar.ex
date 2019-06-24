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

defmodule GoogleApi.Calendar.V3.Model.Calendar do
  @moduledoc """


  ## Attributes

  *   `conferenceProperties` (*type:* `GoogleApi.Calendar.V3.Model.ConferenceProperties.t`, *default:* `nil`) - Conferencing properties for this calendar, for example what types of conferences are allowed.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Description of the calendar. Optional.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - ETag of the resource.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Identifier of the calendar. To retrieve IDs call the calendarList.list() method.
  *   `kind` (*type:* `String.t`, *default:* `calendar#calendar`) - Type of the resource ("calendar#calendar").
  *   `location` (*type:* `String.t`, *default:* `nil`) - Geographic location of the calendar as free-form text. Optional.
  *   `summary` (*type:* `String.t`, *default:* `nil`) - Title of the calendar.
  *   `timeZone` (*type:* `String.t`, *default:* `nil`) - The time zone of the calendar. (Formatted as an IANA Time Zone Database name, e.g. "Europe/Zurich".) Optional.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :conferenceProperties => GoogleApi.Calendar.V3.Model.ConferenceProperties.t(),
          :description => String.t(),
          :etag => String.t(),
          :id => String.t(),
          :kind => String.t(),
          :location => String.t(),
          :summary => String.t(),
          :timeZone => String.t()
        }

  field(:conferenceProperties, as: GoogleApi.Calendar.V3.Model.ConferenceProperties)
  field(:description)
  field(:etag)
  field(:id)
  field(:kind)
  field(:location)
  field(:summary)
  field(:timeZone)
end

defimpl Poison.Decoder, for: GoogleApi.Calendar.V3.Model.Calendar do
  def decode(value, options) do
    GoogleApi.Calendar.V3.Model.Calendar.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Calendar.V3.Model.Calendar do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
