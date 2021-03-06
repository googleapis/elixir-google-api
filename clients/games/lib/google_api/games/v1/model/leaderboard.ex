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

defmodule GoogleApi.Games.V1.Model.Leaderboard do
  @moduledoc """
  The Leaderboard resource.

  ## Attributes

  *   `iconUrl` (*type:* `String.t`, *default:* `nil`) - The icon for the leaderboard.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The leaderboard ID.
  *   `isIconUrlDefault` (*type:* `boolean()`, *default:* `nil`) - Indicates whether the icon image being returned is a default image, or is game-provided.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Uniquely identifies the type of this resource. Value is always the fixed string `games#leaderboard`.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the leaderboard.
  *   `order` (*type:* `String.t`, *default:* `nil`) - How scores are ordered.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :iconUrl => String.t() | nil,
          :id => String.t() | nil,
          :isIconUrlDefault => boolean() | nil,
          :kind => String.t() | nil,
          :name => String.t() | nil,
          :order => String.t() | nil
        }

  field(:iconUrl)
  field(:id)
  field(:isIconUrlDefault)
  field(:kind)
  field(:name)
  field(:order)
end

defimpl Poison.Decoder, for: GoogleApi.Games.V1.Model.Leaderboard do
  def decode(value, options) do
    GoogleApi.Games.V1.Model.Leaderboard.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Games.V1.Model.Leaderboard do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
