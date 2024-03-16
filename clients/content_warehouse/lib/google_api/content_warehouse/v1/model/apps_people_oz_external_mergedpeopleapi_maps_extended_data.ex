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

defmodule GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiMapsExtendedData do
  @moduledoc """
  Extension data for use in Maps Product Profile.

  ## Attributes

  *   `failure` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiProductProfileFailure.t`, *default:* `nil`) - Failure type if there is an error when fetching product profile data.
  *   `followeeCount` (*type:* `String.t`, *default:* `nil`) - Number of people the user is following.
  *   `followerCount` (*type:* `integer()`, *default:* `nil`) - Number of people who are following the user.
  *   `numContributions` (*type:* `String.t`, *default:* `nil`) - Sum of creators contributions i.e. reviews, rating, questions, etc.
  *   `profilePhotoUrl` (*type:* `String.t`, *default:* `nil`) - The user's profile photo that might have a badge rendered at the corner if the user is eligible for a badge.
  *   `tagline` (*type:* `String.t`, *default:* `nil`) - A user's bio, or tagline.
  *   `topicExpertise` (*type:* `list(String.t)`, *default:* `nil`) - A topic that creator has expertise in. This will be in the format: emoji associated with the topic, display name of the topic, topic score
  *   `userCaption` (*type:* `String.t`, *default:* `nil`) - A user's caption displayed under the user name on their profile page i.e. 'Local Guide Level 8'
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :failure =>
            GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiProductProfileFailure.t()
            | nil,
          :followeeCount => String.t() | nil,
          :followerCount => integer() | nil,
          :numContributions => String.t() | nil,
          :profilePhotoUrl => String.t() | nil,
          :tagline => String.t() | nil,
          :topicExpertise => list(String.t()) | nil,
          :userCaption => String.t() | nil
        }

  field(:failure,
    as:
      GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiProductProfileFailure
  )

  field(:followeeCount)
  field(:followerCount)
  field(:numContributions)
  field(:profilePhotoUrl)
  field(:tagline)
  field(:topicExpertise, type: :list)
  field(:userCaption)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiMapsExtendedData do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiMapsExtendedData.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiMapsExtendedData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end