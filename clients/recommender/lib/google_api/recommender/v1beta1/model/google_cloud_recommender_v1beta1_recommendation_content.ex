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

defmodule GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1RecommendationContent do
  @moduledoc """
  Contains what resources are changing and how they are changing.

  ## Attributes

  *   `operationGroups` (*type:* `list(GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1OperationGroup.t)`, *default:* `nil`) - Operations to one or more Google Cloud resources grouped in such a way that, all operations within one group are expected to be performed atomically and in an order.
  *   `overview` (*type:* `map()`, *default:* `nil`) - Condensed overview information about the recommendation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :operationGroups =>
            list(
              GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1OperationGroup.t()
            )
            | nil,
          :overview => map() | nil
        }

  field(:operationGroups,
    as: GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1OperationGroup,
    type: :list
  )

  field(:overview, type: :map)
end

defimpl Poison.Decoder,
  for: GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1RecommendationContent do
  def decode(value, options) do
    GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1RecommendationContent.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1RecommendationContent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
