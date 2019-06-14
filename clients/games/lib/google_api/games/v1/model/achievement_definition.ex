# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Games.V1.Model.AchievementDefinition do
  @moduledoc """
  This is a JSON template for an achievement definition object.

  ## Attributes

  - achievementType (String.t): The type of the achievement.
  Possible values are:  
  - "STANDARD" - Achievement is either locked or unlocked. 
  - "INCREMENTAL" - Achievement is incremental. Defaults to `nil`.
  - description (String.t): The description of the achievement. Defaults to `nil`.
  - experiencePoints (String.t): Experience points which will be earned when unlocking this achievement. Defaults to `nil`.
  - formattedTotalSteps (String.t): The total steps for an incremental achievement as a string. Defaults to `nil`.
  - id (String.t): The ID of the achievement. Defaults to `nil`.
  - initialState (String.t): The initial state of the achievement.
  Possible values are:  
  - "HIDDEN" - Achievement is hidden. 
  - "REVEALED" - Achievement is revealed. 
  - "UNLOCKED" - Achievement is unlocked. Defaults to `nil`.
  - isRevealedIconUrlDefault (boolean()): Indicates whether the revealed icon image being returned is a default image, or is provided by the game. Defaults to `nil`.
  - isUnlockedIconUrlDefault (boolean()): Indicates whether the unlocked icon image being returned is a default image, or is game-provided. Defaults to `nil`.
  - kind (String.t): Uniquely identifies the type of this resource. Value is always the fixed string games#achievementDefinition. Defaults to `games#achievementDefinition`.
  - name (String.t): The name of the achievement. Defaults to `nil`.
  - revealedIconUrl (String.t): The image URL for the revealed achievement icon. Defaults to `nil`.
  - totalSteps (integer()): The total steps for an incremental achievement. Defaults to `nil`.
  - unlockedIconUrl (String.t): The image URL for the unlocked achievement icon. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :achievementType => String.t(),
          :description => String.t(),
          :experiencePoints => String.t(),
          :formattedTotalSteps => String.t(),
          :id => String.t(),
          :initialState => String.t(),
          :isRevealedIconUrlDefault => boolean(),
          :isUnlockedIconUrlDefault => boolean(),
          :kind => String.t(),
          :name => String.t(),
          :revealedIconUrl => String.t(),
          :totalSteps => integer(),
          :unlockedIconUrl => String.t()
        }

  field(:achievementType)
  field(:description)
  field(:experiencePoints)
  field(:formattedTotalSteps)
  field(:id)
  field(:initialState)
  field(:isRevealedIconUrlDefault)
  field(:isUnlockedIconUrlDefault)
  field(:kind)
  field(:name)
  field(:revealedIconUrl)
  field(:totalSteps)
  field(:unlockedIconUrl)
end

defimpl Poison.Decoder, for: GoogleApi.Games.V1.Model.AchievementDefinition do
  def decode(value, options) do
    GoogleApi.Games.V1.Model.AchievementDefinition.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Games.V1.Model.AchievementDefinition do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
