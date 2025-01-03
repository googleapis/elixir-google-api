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

defmodule GoogleApi.Chat.V1.Model.GoogleAppsCardV1DateTimePicker do
  @moduledoc """
  Lets users input a date, a time, or both a date and a time. Supports form submission validation. When `Action.all_widgets_are_required` is set to `true` or this widget is specified in `Action.required_widgets`, the submission action is blocked unless a value is selected. For an example in Google Chat apps, see [Let a user pick a date and time](https://developers.google.com/workspace/chat/design-interactive-card-dialog#let_a_user_pick_a_date_and_time). Users can input text or use the picker to select dates and times. If users input an invalid date or time, the picker shows an error that prompts users to input the information correctly. [Google Workspace Add-ons and Chat apps](https://developers.google.com/workspace/extend):

  ## Attributes

  *   `label` (*type:* `String.t`, *default:* `nil`) - The text that prompts users to input a date, a time, or a date and time. For example, if users are scheduling an appointment, use a label such as `Appointment date` or `Appointment date and time`.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name by which the `DateTimePicker` is identified in a form input event. For details about working with form inputs, see [Receive form data](https://developers.google.com/workspace/chat/read-form-data).
  *   `onChangeAction` (*type:* `GoogleApi.Chat.V1.Model.GoogleAppsCardV1Action.t`, *default:* `nil`) - Triggered when the user clicks **Save** or **Clear** from the `DateTimePicker` interface.
  *   `timezoneOffsetDate` (*type:* `integer()`, *default:* `nil`) - The number representing the time zone offset from UTC, in minutes. If set, the `value_ms_epoch` is displayed in the specified time zone. If unset, the value defaults to the user's time zone setting.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Whether the widget supports inputting a date, a time, or the date and time.
  *   `valueMsEpoch` (*type:* `String.t`, *default:* `nil`) - The default value displayed in the widget, in milliseconds since [Unix epoch time](https://en.wikipedia.org/wiki/Unix_time). Specify the value based on the type of picker (`DateTimePickerType`): * `DATE_AND_TIME`: a calendar date and time in UTC. For example, to represent January 1, 2023 at 12:00 PM UTC, use `1672574400000`. * `DATE_ONLY`: a calendar date at 00:00:00 UTC. For example, to represent January 1, 2023, use `1672531200000`. * `TIME_ONLY`: a time in UTC. For example, to represent 12:00 PM, use `43200000` (or `12 * 60 * 60 * 1000`).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :label => String.t() | nil,
          :name => String.t() | nil,
          :onChangeAction => GoogleApi.Chat.V1.Model.GoogleAppsCardV1Action.t() | nil,
          :timezoneOffsetDate => integer() | nil,
          :type => String.t() | nil,
          :valueMsEpoch => String.t() | nil
        }

  field(:label)
  field(:name)
  field(:onChangeAction, as: GoogleApi.Chat.V1.Model.GoogleAppsCardV1Action)
  field(:timezoneOffsetDate)
  field(:type)
  field(:valueMsEpoch)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.GoogleAppsCardV1DateTimePicker do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.GoogleAppsCardV1DateTimePicker.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.GoogleAppsCardV1DateTimePicker do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
