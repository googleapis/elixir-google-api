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

defmodule GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesCalendarEvent do
  @moduledoc """
  This proto contains the information of a calendar event, including title, start time, end time, etc. LINT.IfChange(CalendarEvent) NEXT_ID: 26

  ## Attributes

  *   `attendees` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesCalendarEventAttendee.t)`, *default:* `nil`) - Attendees invited to the event, usually includes also the organizer.
  *   `backgroundColor` (*type:* `integer()`, *default:* `nil`) - The background color of the event, in RGB format.
  *   `calendarId` (*type:* `String.t`, *default:* `nil`) - Optional calendar containing the event.
  *   `creator` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesCalendarEventAttendee.t`, *default:* `nil`) - The person who created this event.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional description of the event (plain text).
  *   `end` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantApiDateTime.t`, *default:* `nil`) - The end time of the event. Start and end time must either both be date or both be datetime. End is exclusive, ie. the first day / first second when the event is over.
  *   `eventId` (*type:* `String.t`, *default:* `nil`) - Optional event id provided by assistant server. Needs to be unique, at least on a per-user and calendar level, ideally globally unique. If none is given, the server will assign an id.
  *   `flairName` (*type:* `String.t`, *default:* `nil`) - The flair name, calculated according to the event title (go/as-cal-flair). With the flair name, background images can be got from gstatic (go/scs): https://ssl.gstatic.com/tmly/f8944938hffheth4ew890ht4i8/flairs/
  *   `foregroundColor` (*type:* `integer()`, *default:* `nil`) - The foreground color of the event, in RGB format.
  *   `guestsCanInviteOthers` (*type:* `boolean()`, *default:* `nil`) - Whether the guests can invite other guests.
  *   `guestsCanModify` (*type:* `boolean()`, *default:* `nil`) - Whether the guests can modify the event.
  *   `guestsCanSeeGuests` (*type:* `boolean()`, *default:* `nil`) - Whether the guests of the event can be seen. If false, the user is reported as the only attendee to the event, even though there may be more attendees.
  *   `habitId` (*type:* `String.t`, *default:* `nil`) - Optional id of the Habit (Calendar Goal) this event is linked to
  *   `habitStatus` (*type:* `String.t`, *default:* `nil`) - Optional status for this habit event instance.
  *   `htmlLink` (*type:* `String.t`, *default:* `nil`) - Absolute link to this event in the Calendar web UI.
  *   `location` (*type:* `String.t`, *default:* `nil`) - Optional location of the event (plain text).
  *   `meetingContacts` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesCalendarEventMeetingContact.t)`, *default:* `nil`) - 
  *   `organizer` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesCalendarEventAttendee.t`, *default:* `nil`) - The organizer of this event.
  *   `otherAttendeesExcluded` (*type:* `boolean()`, *default:* `nil`) - Whether not all attendees are included in the attendee list. This is set when the attendees list has been truncated (e.g., when the number of attendees is beyond the maxAttendees limitation).
  *   `participationResponse` (*type:* `String.t`, *default:* `nil`) - The user's response (the owner of this copy of the event) to this event.
  *   `recurringEventId` (*type:* `String.t`, *default:* `nil`) - If this is an instance of a recurring event, recurring_event_id identifies the recurring series as a whole.
  *   `rooms` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesCalendarEventRoom.t)`, *default:* `nil`) - Meeting rooms associated to this event.
  *   `start` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantApiDateTime.t`, *default:* `nil`) - The start time of the event. This event is an all-day event if start has no time_of_day.
  *   `summary` (*type:* `String.t`, *default:* `nil`) - The title of the event.
  *   `visibility` (*type:* `String.t`, *default:* `nil`) - Optional visibility of the event.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attendees =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesCalendarEventAttendee.t()
            )
            | nil,
          :backgroundColor => integer() | nil,
          :calendarId => String.t() | nil,
          :creator =>
            GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesCalendarEventAttendee.t()
            | nil,
          :description => String.t() | nil,
          :end => GoogleApi.ContentWarehouse.V1.Model.AssistantApiDateTime.t() | nil,
          :eventId => String.t() | nil,
          :flairName => String.t() | nil,
          :foregroundColor => integer() | nil,
          :guestsCanInviteOthers => boolean() | nil,
          :guestsCanModify => boolean() | nil,
          :guestsCanSeeGuests => boolean() | nil,
          :habitId => String.t() | nil,
          :habitStatus => String.t() | nil,
          :htmlLink => String.t() | nil,
          :location => String.t() | nil,
          :meetingContacts =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesCalendarEventMeetingContact.t()
            )
            | nil,
          :organizer =>
            GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesCalendarEventAttendee.t()
            | nil,
          :otherAttendeesExcluded => boolean() | nil,
          :participationResponse => String.t() | nil,
          :recurringEventId => String.t() | nil,
          :rooms =>
            list(GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesCalendarEventRoom.t())
            | nil,
          :start => GoogleApi.ContentWarehouse.V1.Model.AssistantApiDateTime.t() | nil,
          :summary => String.t() | nil,
          :visibility => String.t() | nil
        }

  field(:attendees,
    as: GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesCalendarEventAttendee,
    type: :list
  )

  field(:backgroundColor)
  field(:calendarId)

  field(:creator,
    as: GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesCalendarEventAttendee
  )

  field(:description)
  field(:end, as: GoogleApi.ContentWarehouse.V1.Model.AssistantApiDateTime)
  field(:eventId)
  field(:flairName)
  field(:foregroundColor)
  field(:guestsCanInviteOthers)
  field(:guestsCanModify)
  field(:guestsCanSeeGuests)
  field(:habitId)
  field(:habitStatus)
  field(:htmlLink)
  field(:location)

  field(:meetingContacts,
    as: GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesCalendarEventMeetingContact,
    type: :list
  )

  field(:organizer,
    as: GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesCalendarEventAttendee
  )

  field(:otherAttendeesExcluded)
  field(:participationResponse)
  field(:recurringEventId)

  field(:rooms,
    as: GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesCalendarEventRoom,
    type: :list
  )

  field(:start, as: GoogleApi.ContentWarehouse.V1.Model.AssistantApiDateTime)
  field(:summary)
  field(:visibility)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesCalendarEvent do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesCalendarEvent.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesCalendarEvent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
