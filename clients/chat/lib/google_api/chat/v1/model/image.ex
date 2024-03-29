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

defmodule GoogleApi.Chat.V1.Model.Image do
  @moduledoc """
  An image that's specified by a URL and can have an `onclick` action.

  ## Attributes

  *   `aspectRatio` (*type:* `float()`, *default:* `nil`) - The aspect ratio of this image (width and height). This field lets you reserve the right height for the image while waiting for it to load. It's not meant to override the built-in aspect ratio of the image. If unset, the server fills it by prefetching the image.
  *   `imageUrl` (*type:* `String.t`, *default:* `nil`) - The URL of the image.
  *   `onClick` (*type:* `GoogleApi.Chat.V1.Model.OnClick.t`, *default:* `nil`) - The `onclick` action.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :aspectRatio => float() | nil,
          :imageUrl => String.t() | nil,
          :onClick => GoogleApi.Chat.V1.Model.OnClick.t() | nil
        }

  field(:aspectRatio)
  field(:imageUrl)
  field(:onClick, as: GoogleApi.Chat.V1.Model.OnClick)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.Image do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.Image.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.Image do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
