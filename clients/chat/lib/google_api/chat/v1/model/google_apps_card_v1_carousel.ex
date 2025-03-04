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

defmodule GoogleApi.Chat.V1.Model.GoogleAppsCardV1Carousel do
  @moduledoc """
  [Developer Preview](https://developers.google.com/workspace/preview): A carousel, also known as a slider, rotates and displays a list of widgets in a slideshow format, with buttons navigating to the previous or next widget. For example, this is a JSON representation of a carousel that contains three text paragraph widgets. ``` { "carouselCards": [ { "widgets": [ { "textParagraph": { "text": "First text paragraph in carousel", } } ] }, { "widgets": [ { "textParagraph": { "text": "Second text paragraph in carousel", } } ] }, { "widgets": [ { "textParagraph": { "text": "Third text paragraph in carousel", } } ] } ] } ``` [Google Chat apps](https://developers.google.com/workspace/chat):

  ## Attributes

  *   `carouselCards` (*type:* `list(GoogleApi.Chat.V1.Model.GoogleAppsCardV1CarouselCard.t)`, *default:* `nil`) - A list of cards included in the carousel.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :carouselCards => list(GoogleApi.Chat.V1.Model.GoogleAppsCardV1CarouselCard.t()) | nil
        }

  field(:carouselCards, as: GoogleApi.Chat.V1.Model.GoogleAppsCardV1CarouselCard, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.GoogleAppsCardV1Carousel do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.GoogleAppsCardV1Carousel.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.GoogleAppsCardV1Carousel do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
