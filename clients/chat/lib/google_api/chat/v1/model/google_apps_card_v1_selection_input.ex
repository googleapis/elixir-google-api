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

defmodule GoogleApi.Chat.V1.Model.GoogleAppsCardV1SelectionInput do
  @moduledoc """
  A widget that creates one or more UI items that users can select. Supports form submission validation for `dropdown` and `multiselect` menus only. When `Action.all_widgets_are_required` is set to `true` or this widget is specified in `Action.required_widgets`, the submission action is blocked unless a value is selected. For example, a dropdown menu or checkboxes. You can use this widget to collect data that can be predicted or enumerated. For an example in Google Chat apps, see [Add selectable UI elements](/workspace/chat/design-interactive-card-dialog#add_selectable_ui_elements). Chat apps can process the value of items that users select or input. For details about working with form inputs, see [Receive form data](https://developers.google.com/workspace/chat/read-form-data). To collect undefined or abstract data from users, use the TextInput widget. [Google Workspace Add-ons and Chat apps](https://developers.google.com/workspace/extend):

  ## Attributes

  *   `externalDataSource` (*type:* `GoogleApi.Chat.V1.Model.GoogleAppsCardV1Action.t`, *default:* `nil`) - An external data source, such as a relational database.
  *   `items` (*type:* `list(GoogleApi.Chat.V1.Model.GoogleAppsCardV1SelectionItem.t)`, *default:* `nil`) - An array of selectable items. For example, an array of radio buttons or checkboxes. Supports up to 100 items.
  *   `label` (*type:* `String.t`, *default:* `nil`) - The text that appears above the selection input field in the user interface. Specify text that helps the user enter the information your app needs. For example, if users are selecting the urgency of a work ticket from a drop-down menu, the label might be "Urgency" or "Select urgency".
  *   `multiSelectMaxSelectedItems` (*type:* `integer()`, *default:* `nil`) - For multiselect menus, the maximum number of items that a user can select. Minimum value is 1 item. If unspecified, defaults to 3 items.
  *   `multiSelectMinQueryLength` (*type:* `integer()`, *default:* `nil`) - For multiselect menus, the number of text characters that a user inputs before the menu returns suggested selection items. If unset, the multiselect menu uses the following default values: * If the menu uses a static array of `SelectionInput` items, defaults to 0 characters and immediately populates items from the array. * If the menu uses a dynamic data source (`multi_select_data_source`), defaults to 3 characters before querying the data source to return suggested items.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. The name that identifies the selection input in a form input event. For details about working with form inputs, see [Receive form data](https://developers.google.com/workspace/chat/read-form-data).
  *   `onChangeAction` (*type:* `GoogleApi.Chat.V1.Model.GoogleAppsCardV1Action.t`, *default:* `nil`) - If specified, the form is submitted when the selection changes. If not specified, you must specify a separate button that submits the form. For details about working with form inputs, see [Receive form data](https://developers.google.com/workspace/chat/read-form-data).
  *   `platformDataSource` (*type:* `GoogleApi.Chat.V1.Model.GoogleAppsCardV1PlatformDataSource.t`, *default:* `nil`) - A data source from Google Workspace.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of items that are displayed to users in a `SelectionInput` widget. Selection types support different types of interactions. For example, users can select one or more checkboxes, but they can only select one value from a dropdown menu.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :externalDataSource => GoogleApi.Chat.V1.Model.GoogleAppsCardV1Action.t() | nil,
          :items => list(GoogleApi.Chat.V1.Model.GoogleAppsCardV1SelectionItem.t()) | nil,
          :label => String.t() | nil,
          :multiSelectMaxSelectedItems => integer() | nil,
          :multiSelectMinQueryLength => integer() | nil,
          :name => String.t() | nil,
          :onChangeAction => GoogleApi.Chat.V1.Model.GoogleAppsCardV1Action.t() | nil,
          :platformDataSource =>
            GoogleApi.Chat.V1.Model.GoogleAppsCardV1PlatformDataSource.t() | nil,
          :type => String.t() | nil
        }

  field(:externalDataSource, as: GoogleApi.Chat.V1.Model.GoogleAppsCardV1Action)
  field(:items, as: GoogleApi.Chat.V1.Model.GoogleAppsCardV1SelectionItem, type: :list)
  field(:label)
  field(:multiSelectMaxSelectedItems)
  field(:multiSelectMinQueryLength)
  field(:name)
  field(:onChangeAction, as: GoogleApi.Chat.V1.Model.GoogleAppsCardV1Action)
  field(:platformDataSource, as: GoogleApi.Chat.V1.Model.GoogleAppsCardV1PlatformDataSource)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.GoogleAppsCardV1SelectionInput do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.GoogleAppsCardV1SelectionInput.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.GoogleAppsCardV1SelectionInput do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
