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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseGuidedSearchResult do
  @moduledoc """
  Guided search result. The guided search helps user to refine the search results and narrow down to the real needs from a broaded search results.

  ## Attributes

  *   `followUpQuestions` (*type:* `list(String.t)`, *default:* `nil`) - Suggested follow-up questions.
  *   `refinementAttributes` (*type:* `list(GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseGuidedSearchResultRefinementAttribute.t)`, *default:* `nil`) - A list of ranked refinement attributes.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :followUpQuestions => list(String.t()) | nil,
          :refinementAttributes =>
            list(
              GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseGuidedSearchResultRefinementAttribute.t()
            )
            | nil
        }

  field(:followUpQuestions, type: :list)

  field(:refinementAttributes,
    as:
      GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseGuidedSearchResultRefinementAttribute,
    type: :list
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseGuidedSearchResult do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseGuidedSearchResult.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseGuidedSearchResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
