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

defmodule GoogleApi.Calendar.V3.Model.CalendarListEntry do
  @moduledoc """


  ## Attributes

  *   `accessRole` (*type:* `String.t`, *default:* `nil`) - The effective access role that the authenticated user has on the calendar. Read-only. Possible values are:  
      - "freeBusyReader" - Provides read access to free/busy information. 
      - "reader" - Provides read access to the calendar. Private events will appear to users with reader access, but event details will be hidden. 
      - "writer" - Provides read and write access to the calendar. Private events will appear to users with writer access, and event details will be visible. 
      - "owner" - Provides ownership of the calendar. This role has all of the permissions of the writer role with the additional ability to see and manipulate ACLs.
  *   `backgroundColor` (*type:* `String.t`, *default:* `nil`) - The main color of the calendar in the hexadecimal format "#0088aa". This property supersedes the index-based colorId property. To set or change this property, you need to specify colorRgbFormat=true in the parameters of the insert, update and patch methods. Optional.
  *   `colorId` (*type:* `String.t`, *default:* `nil`) - The color of the calendar. This is an ID referring to an entry in the calendar section of the colors definition (see the colors endpoint). This property is superseded by the backgroundColor and foregroundColor properties and can be ignored when using these properties. Optional.
  *   `conferenceProperties` (*type:* `GoogleApi.Calendar.V3.Model.ConferenceProperties.t`, *default:* `nil`) - Conferencing properties for this calendar, for example what types of conferences are allowed.
  *   `defaultReminders` (*type:* `list(GoogleApi.Calendar.V3.Model.EventReminder.t)`, *default:* `nil`) - The default reminders that the authenticated user has for this calendar.
  *   `deleted` (*type:* `boolean()`, *default:* `false`) - Whether this calendar list entry has been deleted from the calendar list. Read-only. Optional. The default is False.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Description of the calendar. Optional. Read-only.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - ETag of the resource.
  *   `foregroundColor` (*type:* `String.t`, *default:* `nil`) - The foreground color of the calendar in the hexadecimal format "#ffffff". This property supersedes the index-based colorId property. To set or change this property, you need to specify colorRgbFormat=true in the parameters of the insert, update and patch methods. Optional.
  *   `hidden` (*type:* `boolean()`, *default:* `false`) - Whether the calendar has been hidden from the list. Optional. The default is False.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Identifier of the calendar.
  *   `kind` (*type:* `String.t`, *default:* `calendar#calendarListEntry`) - Type of the resource ("calendar#calendarListEntry").
  *   `location` (*type:* `String.t`, *default:* `nil`) - Geographic location of the calendar as free-form text. Optional. Read-only.
  *   `notificationSettings` (*type:* `GoogleApi.Calendar.V3.Model.CalendarListEntryNotificationSettings.t`, *default:* `nil`) - The notifications that the authenticated user is receiving for this calendar.
  *   `primary` (*type:* `boolean()`, *default:* `false`) - Whether the calendar is the primary calendar of the authenticated user. Read-only. Optional. The default is False.
  *   `selected` (*type:* `boolean()`, *default:* `false`) - Whether the calendar content shows up in the calendar UI. Optional. The default is False.
  *   `summary` (*type:* `String.t`, *default:* `nil`) - Title of the calendar. Read-only.
  *   `summaryOverride` (*type:* `String.t`, *default:* `nil`) - The summary that the authenticated user has set for this calendar. Optional.
  *   `timeZone` (*type:* `String.t`, *default:* `nil`) - The time zone of the calendar. Optional. Read-only.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accessRole => String.t(),
          :backgroundColor => String.t(),
          :colorId => String.t(),
          :conferenceProperties => GoogleApi.Calendar.V3.Model.ConferenceProperties.t(),
          :defaultReminders => list(GoogleApi.Calendar.V3.Model.EventReminder.t()),
          :deleted => boolean(),
          :description => String.t(),
          :etag => String.t(),
          :foregroundColor => String.t(),
          :hidden => boolean(),
          :id => String.t(),
          :kind => String.t(),
          :location => String.t(),
          :notificationSettings =>
            GoogleApi.Calendar.V3.Model.CalendarListEntryNotificationSettings.t(),
          :primary => boolean(),
          :selected => boolean(),
          :summary => String.t(),
          :summaryOverride => String.t(),
          :timeZone => String.t()
        }

  field(:accessRole)
  field(:backgroundColor)
  field(:colorId)
  field(:conferenceProperties, as: GoogleApi.Calendar.V3.Model.ConferenceProperties)
  field(:defaultReminders, as: GoogleApi.Calendar.V3.Model.EventReminder, type: :list)
  field(:deleted)
  field(:description)
  field(:etag)
  field(:foregroundColor)
  field(:hidden)
  field(:id)
  field(:kind)
  field(:location)

  field(
    :notificationSettings,
    as: GoogleApi.Calendar.V3.Model.CalendarListEntryNotificationSettings
  )

  field(:primary)
  field(:selected)
  field(:summary)
  field(:summaryOverride)
  field(:timeZone)
end

defimpl Poison.Decoder, for: GoogleApi.Calendar.V3.Model.CalendarListEntry do
  def decode(value, options) do
    GoogleApi.Calendar.V3.Model.CalendarListEntry.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Calendar.V3.Model.CalendarListEntry do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
