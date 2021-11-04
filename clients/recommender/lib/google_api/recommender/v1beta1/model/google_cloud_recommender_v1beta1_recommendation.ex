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

defmodule GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1Recommendation do
  @moduledoc """
  A recommendation along with a suggested action. E.g., a rightsizing recommendation for an underutilized VM, IAM role recommendations, etc

  ## Attributes

  *   `additionalImpact` (*type:* `list(GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1Impact.t)`, *default:* `nil`) - Optional set of additional impact that this recommendation may have when trying to optimize for the primary category. These may be positive or negative.
  *   `associatedInsights` (*type:* `list(GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1RecommendationInsightReference.t)`, *default:* `nil`) - Insights that led to this recommendation.
  *   `content` (*type:* `GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1RecommendationContent.t`, *default:* `nil`) - Content of the recommendation describing recommended changes to resources.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Free-form human readable summary in English. The maximum length is 500 characters.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Fingerprint of the Recommendation. Provides optimistic locking when updating states.
  *   `lastRefreshTime` (*type:* `DateTime.t`, *default:* `nil`) - Last time this recommendation was refreshed by the system that created it in the first place.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of recommendation.
  *   `primaryImpact` (*type:* `GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1Impact.t`, *default:* `nil`) - The primary impact that this recommendation can have while trying to optimize for one category.
  *   `priority` (*type:* `String.t`, *default:* `nil`) - Recommendation's priority.
  *   `recommenderSubtype` (*type:* `String.t`, *default:* `nil`) - Contains an identifier for a subtype of recommendations produced for the same recommender. Subtype is a function of content and impact, meaning a new subtype might be added when significant changes to `content` or `primary_impact.category` are introduced. See the Recommenders section to see a list of subtypes for a given Recommender. Examples: For recommender = "google.iam.policy.Recommender", recommender_subtype can be one of "REMOVE_ROLE"/"REPLACE_ROLE"
  *   `stateInfo` (*type:* `GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1RecommendationStateInfo.t`, *default:* `nil`) - Information for state. Contains state and metadata.
  *   `xorGroupId` (*type:* `String.t`, *default:* `nil`) - Corresponds to a mutually exclusive group ID within a recommender. A non-empty ID indicates that the recommendation belongs to a mutually exclusive group. This means that only one recommendation within the group is suggested to be applied.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :additionalImpact =>
            list(GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1Impact.t())
            | nil,
          :associatedInsights =>
            list(
              GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1RecommendationInsightReference.t()
            )
            | nil,
          :content =>
            GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1RecommendationContent.t()
            | nil,
          :description => String.t() | nil,
          :etag => String.t() | nil,
          :lastRefreshTime => DateTime.t() | nil,
          :name => String.t() | nil,
          :primaryImpact =>
            GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1Impact.t() | nil,
          :priority => String.t() | nil,
          :recommenderSubtype => String.t() | nil,
          :stateInfo =>
            GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1RecommendationStateInfo.t()
            | nil,
          :xorGroupId => String.t() | nil
        }

  field(:additionalImpact,
    as: GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1Impact,
    type: :list
  )

  field(:associatedInsights,
    as:
      GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1RecommendationInsightReference,
    type: :list
  )

  field(:content,
    as: GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1RecommendationContent
  )

  field(:description)
  field(:etag)
  field(:lastRefreshTime, as: DateTime)
  field(:name)

  field(:primaryImpact,
    as: GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1Impact
  )

  field(:priority)
  field(:recommenderSubtype)

  field(:stateInfo,
    as: GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1RecommendationStateInfo
  )

  field(:xorGroupId)
end

defimpl Poison.Decoder,
  for: GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1Recommendation do
  def decode(value, options) do
    GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1Recommendation.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1Recommendation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
