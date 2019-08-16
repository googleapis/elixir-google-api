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

defmodule GoogleApi.Calendar.V3.Model.Events do
  @moduledoc """


  ## Attributes

  *   `accessRole` (*type:* `String.t`, *default:* `nil`) - The user's access role for this calendar. Read-only. Possible values are:  
      - "none" - The user has no access. 
      - "freeBusyReader" - The user has read access to free/busy information. 
      - "reader" - The user has read access to the calendar. Private events will appear to users with reader access, but event details will be hidden. 
      - "writer" - The user has read and write access to the calendar. Private events will appear to users with writer access, and event details will be visible. 
      - "owner" - The user has ownership of the calendar. This role has all of the permissions of the writer role with the additional ability to see and manipulate ACLs.
  *   `defaultReminders` (*type:* `list(GoogleApi.Calendar.V3.Model.EventReminder.t)`, *default:* `nil`) - The default reminders on the calendar for the authenticated user. These reminders apply to all events on this calendar that do not explicitly override them (i.e. do not have reminders.useDefault set to True).
  *   `description` (*type:* `String.t`, *default:* `nil`) - Description of the calendar. Read-only.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - ETag of the collection.
  *   `items` (*type:* `list(GoogleApi.Calendar.V3.Model.Event.t)`, *default:* `nil`) - List of events on the calendar.
  *   `kind` (*type:* `String.t`, *default:* `calendar#events`) - Type of the collection ("calendar#events").
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Token used to access the next page of this result. Omitted if no further results are available, in which case nextSyncToken is provided.
  *   `nextSyncToken` (*type:* `String.t`, *default:* `nil`) - Token used at a later point in time to retrieve only the entries that have changed since this result was returned. Omitted if further results are available, in which case nextPageToken is provided.
  *   `summary` (*type:* `String.t`, *default:* `nil`) - Title of the calendar. Read-only.
  *   `timeZone` (*type:* `String.t`, *default:* `nil`) - The time zone of the calendar. Read-only.
  *   `updated` (*type:* `DateTime.t`, *default:* `nil`) - Last modification time of the calendar (as a RFC3339 timestamp). Read-only.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accessRole => String.t(),
          :defaultReminders => list(GoogleApi.Calendar.V3.Model.EventReminder.t()),
          :description => String.t(),
          :etag => String.t(),
          :items => list(GoogleApi.Calendar.V3.Model.Event.t()),
          :kind => String.t(),
          :nextPageToken => String.t(),
          :nextSyncToken => String.t(),
          :summary => String.t(),
          :timeZone => String.t(),
          :updated => DateTime.t()
        }

  field(:accessRole)
  field(:defaultReminders, as: GoogleApi.Calendar.V3.Model.EventReminder, type: :list)
  field(:description)
  field(:etag)
  field(:items, as: GoogleApi.Calendar.V3.Model.Event, type: :list)
  field(:kind)
  field(:nextPageToken)
  field(:nextSyncToken)
  field(:summary)
  field(:timeZone)
  field(:updated, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Calendar.V3.Model.Events do
  def decode(value, options) do
    GoogleApi.Calendar.V3.Model.Events.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Calendar.V3.Model.Events do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
