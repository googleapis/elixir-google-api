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

defmodule GoogleApi.Calendar.V3.Model.CalendarNotification do
  @moduledoc """


  ## Attributes

  *   `method` (*type:* `String.t`, *default:* `nil`) - The method used to deliver the notification. The possible value is:  
      - "email" - Notifications are sent via email.  
      Required when adding a notification.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of notification. Possible values are:  
      - "eventCreation" - Notification sent when a new event is put on the calendar. 
      - "eventChange" - Notification sent when an event is changed. 
      - "eventCancellation" - Notification sent when an event is cancelled. 
      - "eventResponse" - Notification sent when an attendee responds to the event invitation. 
      - "agenda" - An agenda with the events of the day (sent out in the morning).  
      Required when adding a notification.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :method => String.t(),
          :type => String.t()
        }

  field(:method)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Calendar.V3.Model.CalendarNotification do
  def decode(value, options) do
    GoogleApi.Calendar.V3.Model.CalendarNotification.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Calendar.V3.Model.CalendarNotification do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
