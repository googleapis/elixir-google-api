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

defmodule GoogleApi.Chat.V1.Model.GoogleAppsCardV1GridItem do
  @moduledoc """
  Represents an item in a grid layout. Items can contain text, an image, or both text and an image. [Google Workspace add-ons and Chat apps](https://developers.google.com/workspace/extend):

  ## Attributes

  *   `id` (*type:* `String.t`, *default:* `nil`) - A user-specified identifier for this grid item. This identifier is returned in the parent grid's `onClick` callback parameters.
  *   `image` (*type:* `GoogleApi.Chat.V1.Model.GoogleAppsCardV1ImageComponent.t`, *default:* `nil`) - The image that displays in the grid item.
  *   `layout` (*type:* `String.t`, *default:* `nil`) - The layout to use for the grid item.
  *   `subtitle` (*type:* `String.t`, *default:* `nil`) - The grid item's subtitle.
  *   `title` (*type:* `String.t`, *default:* `nil`) - The grid item's title.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :id => String.t() | nil,
          :image => GoogleApi.Chat.V1.Model.GoogleAppsCardV1ImageComponent.t() | nil,
          :layout => String.t() | nil,
          :subtitle => String.t() | nil,
          :title => String.t() | nil
        }

  field(:id)
  field(:image, as: GoogleApi.Chat.V1.Model.GoogleAppsCardV1ImageComponent)
  field(:layout)
  field(:subtitle)
  field(:title)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.GoogleAppsCardV1GridItem do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.GoogleAppsCardV1GridItem.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.GoogleAppsCardV1GridItem do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
