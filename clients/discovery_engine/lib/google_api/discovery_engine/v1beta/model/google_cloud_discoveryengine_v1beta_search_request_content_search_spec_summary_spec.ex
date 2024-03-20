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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpec do
  @moduledoc """
  A specification for configuring a summary returned in a search response.

  ## Attributes

  *   `ignoreAdversarialQuery` (*type:* `boolean()`, *default:* `nil`) - Specifies whether to filter out adversarial queries. The default value is `false`. Google employs search-query classification to detect adversarial queries. No summary is returned if the search query is classified as an adversarial query. For example, a user might ask a question regarding negative comments about the company or submit a query designed to generate unsafe, policy-violating output. If this field is set to `true`, we skip generating summaries for adversarial queries and return fallback messages instead.
  *   `ignoreNonSummarySeekingQuery` (*type:* `boolean()`, *default:* `nil`) - Specifies whether to filter out queries that are not summary-seeking. The default value is `false`. Google employs search-query classification to detect summary-seeking queries. No summary is returned if the search query is classified as a non-summary seeking query. For example, `why is the sky blue` and `Who is the best soccer player in the world?` are summary-seeking queries, but `SFO airport` and `world cup 2026` are not. They are most likely navigational queries. If this field is set to `true`, we skip generating summaries for non-summary seeking queries and return fallback messages instead.
  *   `includeCitations` (*type:* `boolean()`, *default:* `nil`) - Specifies whether to include citations in the summary. The default value is `false`. When this field is set to `true`, summaries include in-line citation numbers. Example summary including citations: BigQuery is Google Cloud's fully managed and completely serverless enterprise data warehouse [1]. BigQuery supports all data types, works across clouds, and has built-in machine learning and business intelligence, all within a unified platform [2, 3]. The citation numbers refer to the returned search results and are 1-indexed. For example, [1] means that the sentence is attributed to the first search result. [2, 3] means that the sentence is attributed to both the second and third search results.
  *   `languageCode` (*type:* `String.t`, *default:* `nil`) - Language code for Summary. Use language tags defined by [BCP47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt). Note: This is an experimental feature.
  *   `modelPromptSpec` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpecModelPromptSpec.t`, *default:* `nil`) - If specified, the spec will be used to modify the prompt provided to the LLM.
  *   `modelSpec` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpecModelSpec.t`, *default:* `nil`) - If specified, the spec will be used to modify the model specification provided to the LLM.
  *   `summaryResultCount` (*type:* `integer()`, *default:* `nil`) - The number of top results to generate the summary from. If the number of results returned is less than `summaryResultCount`, the summary is generated from all of the results. At most 10 results can be used to generate a summary.
  *   `useSemanticChunks` (*type:* `boolean()`, *default:* `nil`) - If true, answer will be generated from most relevant chunks from top search results. This feature will improve summary quality. Please note that with this feature enabled, not all top search results will be referenced and included in the reference list, so the citation source index only points to the search results listed in the reference list.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ignoreAdversarialQuery => boolean() | nil,
          :ignoreNonSummarySeekingQuery => boolean() | nil,
          :includeCitations => boolean() | nil,
          :languageCode => String.t() | nil,
          :modelPromptSpec =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpecModelPromptSpec.t()
            | nil,
          :modelSpec =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpecModelSpec.t()
            | nil,
          :summaryResultCount => integer() | nil,
          :useSemanticChunks => boolean() | nil
        }

  field(:ignoreAdversarialQuery)
  field(:ignoreNonSummarySeekingQuery)
  field(:includeCitations)
  field(:languageCode)

  field(:modelPromptSpec,
    as:
      GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpecModelPromptSpec
  )

  field(:modelSpec,
    as:
      GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpecModelSpec
  )

  field(:summaryResultCount)
  field(:useSemanticChunks)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpec do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpec.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
