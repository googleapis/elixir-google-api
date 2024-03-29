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

defmodule GoogleApi.Content.V21.Model.GenerateRecommendationsResponse do
  @moduledoc """
  Response containing generated recommendations.

  ## Attributes

  *   `recommendations` (*type:* `list(GoogleApi.Content.V21.Model.Recommendation.t)`, *default:* `nil`) - Recommendations generated for a request.
  *   `responseToken` (*type:* `String.t`, *default:* `nil`) - Output only. Response token is a string created for each `GenerateRecommendationsResponse`. This token doesn't expire, and is globally unique. This token must be used when reporting interactions for recommendations.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :recommendations => list(GoogleApi.Content.V21.Model.Recommendation.t()) | nil,
          :responseToken => String.t() | nil
        }

  field(:recommendations, as: GoogleApi.Content.V21.Model.Recommendation, type: :list)
  field(:responseToken)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.GenerateRecommendationsResponse do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.GenerateRecommendationsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.GenerateRecommendationsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
