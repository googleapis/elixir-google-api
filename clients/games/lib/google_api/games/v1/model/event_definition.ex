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

defmodule GoogleApi.Games.V1.Model.EventDefinition do
  @moduledoc """
  An event definition resource.

  ## Attributes

  *   `childEvents` (*type:* `list(GoogleApi.Games.V1.Model.EventChild.t)`, *default:* `nil`) - A list of events that are a child of this event.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Description of what this event represents.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The name to display for the event.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The ID of the event.
  *   `imageUrl` (*type:* `String.t`, *default:* `nil`) - The base URL for the image that represents the event.
  *   `isDefaultImageUrl` (*type:* `boolean()`, *default:* `nil`) - Indicates whether the icon image being returned is a default image, or is
      game-provided.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Uniquely identifies the type of this resource. Value is always the fixed
      string `games#eventDefinition`.
  *   `visibility` (*type:* `String.t`, *default:* `nil`) - The visibility of event being tracked in this definition.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :childEvents => list(GoogleApi.Games.V1.Model.EventChild.t()),
          :description => String.t(),
          :displayName => String.t(),
          :id => String.t(),
          :imageUrl => String.t(),
          :isDefaultImageUrl => boolean(),
          :kind => String.t(),
          :visibility => String.t()
        }

  field(:childEvents, as: GoogleApi.Games.V1.Model.EventChild, type: :list)
  field(:description)
  field(:displayName)
  field(:id)
  field(:imageUrl)
  field(:isDefaultImageUrl)
  field(:kind)
  field(:visibility)
end

defimpl Poison.Decoder, for: GoogleApi.Games.V1.Model.EventDefinition do
  def decode(value, options) do
    GoogleApi.Games.V1.Model.EventDefinition.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Games.V1.Model.EventDefinition do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
