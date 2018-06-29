# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Games.V1.Model.AchievementDefinition do
  @moduledoc """
  This is a JSON template for an achievement definition object.

  ## Attributes

  - achievementType (String.t): The type of the achievement. Possible values are:   - \&quot;STANDARD\&quot; - Achievement is either locked or unlocked.  - \&quot;INCREMENTAL\&quot; - Achievement is incremental. Defaults to: `null`.
  - description (String.t): The description of the achievement. Defaults to: `null`.
  - experiencePoints (String.t): Experience points which will be earned when unlocking this achievement. Defaults to: `null`.
  - formattedTotalSteps (String.t): The total steps for an incremental achievement as a string. Defaults to: `null`.
  - id (String.t): The ID of the achievement. Defaults to: `null`.
  - initialState (String.t): The initial state of the achievement. Possible values are:   - \&quot;HIDDEN\&quot; - Achievement is hidden.  - \&quot;REVEALED\&quot; - Achievement is revealed.  - \&quot;UNLOCKED\&quot; - Achievement is unlocked. Defaults to: `null`.
  - isRevealedIconUrlDefault (boolean()): Indicates whether the revealed icon image being returned is a default image, or is provided by the game. Defaults to: `null`.
  - isUnlockedIconUrlDefault (boolean()): Indicates whether the unlocked icon image being returned is a default image, or is game-provided. Defaults to: `null`.
  - kind (String.t): Uniquely identifies the type of this resource. Value is always the fixed string games#achievementDefinition. Defaults to: `null`.
  - name (String.t): The name of the achievement. Defaults to: `null`.
  - revealedIconUrl (String.t): The image URL for the revealed achievement icon. Defaults to: `null`.
  - totalSteps (integer()): The total steps for an incremental achievement. Defaults to: `null`.
  - unlockedIconUrl (String.t): The image URL for the unlocked achievement icon. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :achievementType => any(),
          :description => any(),
          :experiencePoints => any(),
          :formattedTotalSteps => any(),
          :id => any(),
          :initialState => any(),
          :isRevealedIconUrlDefault => any(),
          :isUnlockedIconUrlDefault => any(),
          :kind => any(),
          :name => any(),
          :revealedIconUrl => any(),
          :totalSteps => any(),
          :unlockedIconUrl => any()
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
