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

defmodule GoogleApi.Chat.V1.Model.GoogleAppsCardV1Button do
  @moduledoc """
  A text, icon, or text + icon button that users can click. To make an image a clickable button, specify an Image (not an ImageComponent) and set an `onClick` action.

  ## Attributes

  *   `altText` (*type:* `String.t`, *default:* `nil`) - The alternative text used for accessibility. Set descriptive text that lets users know what the button does. For example, if a button opens a hyperlink, you might write: "Opens a new browser tab and navigates to the Google Chat developer documentation at https://developers.google.com/chat". Has no effect when an icon is set; use `icon.alt_text` instead.
  *   `color` (*type:* `GoogleApi.Chat.V1.Model.Color.t`, *default:* `nil`) - If set, the button is filled with a solid background color and the font color changes to maintain contrast with the background color. For example, setting a blue background will likely result in white text. If unset, the image background is white and the font color is blue. For red, green and blue, the value of each field is a `float` number that can be expressed in either of two ways: as a number between 0 and 255 divided by 255 (153/255) or as a value between 0 and 1 (0.6). 0 represents the absence of a color and 1 or 255/255 represent the full presence of that color on the RGB scale. Optionally set alpha, which sets a level of transparency using this equation: ``` pixel color = alpha * (this color) + (1.0 - alpha) * (background color) ``` For alpha, a value of 1 corresponds with a solid color, and a value of 0 corresponds with a completely transparent color. For example, the following color represents a half transparent red: ``` "color": { "red": 1, "green": 0, "blue": 0, "alpha": 0.5 } ```
  *   `disabled` (*type:* `boolean()`, *default:* `nil`) - If `true`, the button is displayed in an inactive state and doesn't respond to user actions.
  *   `icon` (*type:* `GoogleApi.Chat.V1.Model.GoogleAppsCardV1Icon.t`, *default:* `nil`) - The icon image. If both `icon` and `text` are set, then the icon appears in place of the text. Support for both an icon and text is coming soon.
  *   `onClick` (*type:* `GoogleApi.Chat.V1.Model.GoogleAppsCardV1OnClick.t`, *default:* `nil`) - The action to perform when the button is clicked, such as opening a hyperlink or running a custom function.
  *   `text` (*type:* `String.t`, *default:* `nil`) - The text displayed inside the button.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :altText => String.t() | nil,
          :color => GoogleApi.Chat.V1.Model.Color.t() | nil,
          :disabled => boolean() | nil,
          :icon => GoogleApi.Chat.V1.Model.GoogleAppsCardV1Icon.t() | nil,
          :onClick => GoogleApi.Chat.V1.Model.GoogleAppsCardV1OnClick.t() | nil,
          :text => String.t() | nil
        }

  field(:altText)
  field(:color, as: GoogleApi.Chat.V1.Model.Color)
  field(:disabled)
  field(:icon, as: GoogleApi.Chat.V1.Model.GoogleAppsCardV1Icon)
  field(:onClick, as: GoogleApi.Chat.V1.Model.GoogleAppsCardV1OnClick)
  field(:text)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.GoogleAppsCardV1Button do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.GoogleAppsCardV1Button.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.GoogleAppsCardV1Button do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
