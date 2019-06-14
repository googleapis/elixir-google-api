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

defmodule GoogleApi.Games.V1.Model.Application do
  @moduledoc """
  This is a JSON template for the Application resource.

  ## Attributes

  - achievement_count (integer()): The number of achievements visible to the currently authenticated player. Defaults to `nil`.
  - assets (list(GoogleApi.Games.V1.Model.ImageAsset.t)): The assets of the application. Defaults to `nil`.
  - author (String.t): The author of the application. Defaults to `nil`.
  - category (GoogleApi.Games.V1.Model.ApplicationCategory.t): The category of the application. Defaults to `nil`.
  - description (String.t): The description of the application. Defaults to `nil`.
  - enabledFeatures (list(String.t)): A list of features that have been enabled for the application.
  Possible values are:  
  - "SNAPSHOTS" - Snapshots has been enabled Defaults to `nil`.
  - id (String.t): The ID of the application. Defaults to `nil`.
  - instances (list(GoogleApi.Games.V1.Model.Instance.t)): The instances of the application. Defaults to `nil`.
  - kind (String.t): Uniquely identifies the type of this resource. Value is always the fixed string games#application. Defaults to `games#application`.
  - lastUpdatedTimestamp (String.t): The last updated timestamp of the application. Defaults to `nil`.
  - leaderboard_count (integer()): The number of leaderboards visible to the currently authenticated player. Defaults to `nil`.
  - name (String.t): The name of the application. Defaults to `nil`.
  - themeColor (String.t): A hint to the client UI for what color to use as an app-themed color. The color is given as an RGB triplet (e.g. "E0E0E0"). Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :achievement_count => integer(),
          :assets => list(GoogleApi.Games.V1.Model.ImageAsset.t()),
          :author => String.t(),
          :category => GoogleApi.Games.V1.Model.ApplicationCategory.t(),
          :description => String.t(),
          :enabledFeatures => list(String.t()),
          :id => String.t(),
          :instances => list(GoogleApi.Games.V1.Model.Instance.t()),
          :kind => String.t(),
          :lastUpdatedTimestamp => String.t(),
          :leaderboard_count => integer(),
          :name => String.t(),
          :themeColor => String.t()
        }

  field(:achievement_count)
  field(:assets, as: GoogleApi.Games.V1.Model.ImageAsset, type: :list)
  field(:author)
  field(:category, as: GoogleApi.Games.V1.Model.ApplicationCategory)
  field(:description)
  field(:enabledFeatures, type: :list)
  field(:id)
  field(:instances, as: GoogleApi.Games.V1.Model.Instance, type: :list)
  field(:kind)
  field(:lastUpdatedTimestamp)
  field(:leaderboard_count)
  field(:name)
  field(:themeColor)
end

defimpl Poison.Decoder, for: GoogleApi.Games.V1.Model.Application do
  def decode(value, options) do
    GoogleApi.Games.V1.Model.Application.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Games.V1.Model.Application do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
