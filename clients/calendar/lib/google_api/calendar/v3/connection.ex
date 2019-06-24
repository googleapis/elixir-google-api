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

defmodule GoogleApi.Calendar.V3.Connection do
  @moduledoc """
  Handle Tesla connections for GoogleApi.Calendar.V3.
  """

  @type t :: Tesla.Env.client()

  use GoogleApi.Gax.Connection,
    scopes: [
      # See, edit, share, and permanently delete all the calendars you can access using Google Calendar
      "https://www.googleapis.com/auth/calendar",

      # View and edit events on all your calendars
      "https://www.googleapis.com/auth/calendar.events",

      # View events on all your calendars
      "https://www.googleapis.com/auth/calendar.events.readonly",

      # View your calendars
      "https://www.googleapis.com/auth/calendar.readonly",

      # View your Calendar settings
      "https://www.googleapis.com/auth/calendar.settings.readonly"
    ],
    otp_app: :google_api_calendar,
    base_url: "https://www.googleapis.com/calendar/v3/"
end
