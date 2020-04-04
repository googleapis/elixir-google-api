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

defmodule GoogleApi.GamesManagement.V1management.Model.Player do
  @moduledoc """
  This is a JSON template for a Player resource.

  ## Attributes

  *   `avatarImageUrl` (*type:* `String.t`, *default:* `nil`) - The base URL for the image that represents the player.
  *   `bannerUrlLandscape` (*type:* `String.t`, *default:* `nil`) - The url to the landscape mode player banner image.
  *   `bannerUrlPortrait` (*type:* `String.t`, *default:* `nil`) - The url to the portrait mode player banner image.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The name to display for the player.
  *   `experienceInfo` (*type:* `GoogleApi.GamesManagement.V1management.Model.GamesPlayerExperienceInfoResource.t`, *default:* `nil`) - An object to represent Play Game experience information for the player.
  *   `friendStatus` (*type:* `String.t`, *default:* `nil`) - The friend status of the given player, relative to the requester. This is unset if the player is not sharing their friends list with the game.
  *   `kind` (*type:* `String.t`, *default:* `gamesManagement#player`) - Uniquely identifies the type of this resource. Value is always the fixed string gamesManagement#player.
  *   `lastPlayedWith` (*type:* `GoogleApi.GamesManagement.V1management.Model.GamesPlayedResource.t`, *default:* `nil`) - Details about the last time this player played a multiplayer game with the currently authenticated player. Populated for PLAYED_WITH player collection members.
  *   `name` (*type:* `GoogleApi.GamesManagement.V1management.Model.PlayerName.t`, *default:* `nil`) - An object representation of the individual components of the player's name. For some players, these fields may not be present.
  *   `originalPlayerId` (*type:* `String.t`, *default:* `nil`) - The player ID that was used for this player the first time they signed into the game in question. This is only populated for calls to player.get for the requesting player, only if the player ID has subsequently changed, and only to clients that support remapping player IDs.
  *   `playerId` (*type:* `String.t`, *default:* `nil`) - The ID of the player.
  *   `playerStattus` (*type:* `String.t`, *default:* `nil`) - 
  *   `profileSettings` (*type:* `GoogleApi.GamesManagement.V1management.Model.ProfileSettings.t`, *default:* `nil`) - The player's profile settings. Controls whether or not the player's profile is visible to other players.
  *   `title` (*type:* `String.t`, *default:* `nil`) - The player's title rewarded for their game activities.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :avatarImageUrl => String.t(),
          :bannerUrlLandscape => String.t(),
          :bannerUrlPortrait => String.t(),
          :displayName => String.t(),
          :experienceInfo =>
            GoogleApi.GamesManagement.V1management.Model.GamesPlayerExperienceInfoResource.t(),
          :friendStatus => String.t(),
          :kind => String.t(),
          :lastPlayedWith => GoogleApi.GamesManagement.V1management.Model.GamesPlayedResource.t(),
          :name => GoogleApi.GamesManagement.V1management.Model.PlayerName.t(),
          :originalPlayerId => String.t(),
          :playerId => String.t(),
          :playerStattus => String.t(),
          :profileSettings => GoogleApi.GamesManagement.V1management.Model.ProfileSettings.t(),
          :title => String.t()
        }

  field(:avatarImageUrl)
  field(:bannerUrlLandscape)
  field(:bannerUrlPortrait)
  field(:displayName)

  field(:experienceInfo,
    as: GoogleApi.GamesManagement.V1management.Model.GamesPlayerExperienceInfoResource
  )

  field(:friendStatus)
  field(:kind)
  field(:lastPlayedWith, as: GoogleApi.GamesManagement.V1management.Model.GamesPlayedResource)
  field(:name, as: GoogleApi.GamesManagement.V1management.Model.PlayerName)
  field(:originalPlayerId)
  field(:playerId)
  field(:playerStattus)
  field(:profileSettings, as: GoogleApi.GamesManagement.V1management.Model.ProfileSettings)
  field(:title)
end

defimpl Poison.Decoder, for: GoogleApi.GamesManagement.V1management.Model.Player do
  def decode(value, options) do
    GoogleApi.GamesManagement.V1management.Model.Player.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GamesManagement.V1management.Model.Player do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
