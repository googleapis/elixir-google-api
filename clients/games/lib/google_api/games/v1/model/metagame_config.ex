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

defmodule GoogleApi.Games.V1.Model.MetagameConfig do
  @moduledoc """
  The metagame config resource

  ## Attributes

  *   `currentVersion` (*type:* `integer()`, *default:* `nil`) - Current version of the metagame configuration data. When this data is
      updated, the version number will be increased by one.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Uniquely identifies the type of this resource. Value is always the fixed
      string `games#metagameConfig`.
  *   `playerLevels` (*type:* `list(GoogleApi.Games.V1.Model.PlayerLevel.t)`, *default:* `nil`) - The list of player levels.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :currentVersion => integer(),
          :kind => String.t(),
          :playerLevels => list(GoogleApi.Games.V1.Model.PlayerLevel.t())
        }

  field(:currentVersion)
  field(:kind)
  field(:playerLevels, as: GoogleApi.Games.V1.Model.PlayerLevel, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Games.V1.Model.MetagameConfig do
  def decode(value, options) do
    GoogleApi.Games.V1.Model.MetagameConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Games.V1.Model.MetagameConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
