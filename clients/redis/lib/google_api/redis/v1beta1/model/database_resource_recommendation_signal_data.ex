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

defmodule GoogleApi.Redis.V1beta1.Model.DatabaseResourceRecommendationSignalData do
  @moduledoc """
  Common model for database resource recommendation signal data.

  ## Attributes

  *   `additionalMetadata` (*type:* `map()`, *default:* `nil`) - Optional. Any other additional metadata specific to recommendation
  *   `lastRefreshTime` (*type:* `DateTime.t`, *default:* `nil`) - Required. last time recommendationw as refreshed
  *   `recommendationState` (*type:* `String.t`, *default:* `nil`) - Required. Recommendation state
  *   `recommender` (*type:* `String.t`, *default:* `nil`) - Required. Name of recommendation. Examples: organizations/1234/locations/us-central1/recommenders/google.cloudsql.instance.PerformanceRecommender/recommendations/9876
  *   `recommenderId` (*type:* `String.t`, *default:* `nil`) - Required. ID of recommender. Examples: "google.cloudsql.instance.PerformanceRecommender"
  *   `recommenderSubtype` (*type:* `String.t`, *default:* `nil`) - Required. Contains an identifier for a subtype of recommendations produced for the same recommender. Subtype is a function of content and impact, meaning a new subtype might be added when significant changes to `content` or `primary_impact.category` are introduced. See the Recommenders section to see a list of subtypes for a given Recommender. Examples: For recommender = "google.cloudsql.instance.PerformanceRecommender", recommender_subtype can be "MYSQL_HIGH_NUMBER_OF_OPEN_TABLES_BEST_PRACTICE"/"POSTGRES_HIGH_TRANSACTION_ID_UTILIZATION_BEST_PRACTICE"
  *   `resourceName` (*type:* `String.t`, *default:* `nil`) - Required. Database resource name associated with the signal. Resource name to follow CAIS resource_name format as noted here go/condor-common-datamodel
  *   `signalType` (*type:* `String.t`, *default:* `nil`) - Required. Type of signal, for example, `SIGNAL_TYPE_IDLE`, `SIGNAL_TYPE_HIGH_NUMBER_OF_TABLES`, etc.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :additionalMetadata => map() | nil,
          :lastRefreshTime => DateTime.t() | nil,
          :recommendationState => String.t() | nil,
          :recommender => String.t() | nil,
          :recommenderId => String.t() | nil,
          :recommenderSubtype => String.t() | nil,
          :resourceName => String.t() | nil,
          :signalType => String.t() | nil
        }

  field(:additionalMetadata, type: :map)
  field(:lastRefreshTime, as: DateTime)
  field(:recommendationState)
  field(:recommender)
  field(:recommenderId)
  field(:recommenderSubtype)
  field(:resourceName)
  field(:signalType)
end

defimpl Poison.Decoder,
  for: GoogleApi.Redis.V1beta1.Model.DatabaseResourceRecommendationSignalData do
  def decode(value, options) do
    GoogleApi.Redis.V1beta1.Model.DatabaseResourceRecommendationSignalData.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Redis.V1beta1.Model.DatabaseResourceRecommendationSignalData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
