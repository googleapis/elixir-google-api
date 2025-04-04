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

defmodule GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1SearchRequest do
  @moduledoc """
  Request message for SearchService.Search method.

  ## Attributes

  *   `boostSpec` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1SearchRequestBoostSpec.t`, *default:* `nil`) - Boost specification to boost certain documents. For more information on boosting, see [Boosting](https://cloud.google.com/generative-ai-app-builder/docs/boost-search-results)
  *   `branch` (*type:* `String.t`, *default:* `nil`) - The branch resource name, such as `projects/*/locations/global/collections/default_collection/dataStores/default_data_store/branches/0`. Use `default_branch` as the branch ID or leave this field empty, to search documents under the default branch.
  *   `canonicalFilter` (*type:* `String.t`, *default:* `nil`) - The default filter that is applied when a user performs a search without checking any filters on the search page. The filter applied to every search request when quality improvement such as query expansion is needed. In the case a query does not have a sufficient amount of results this filter will be used to determine whether or not to enable the query expansion flow. The original filter will still be used for the query expanded search. This field is strongly recommended to achieve high search quality. For more information about filter syntax, see SearchRequest.filter.
  *   `contentSearchSpec` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpec.t`, *default:* `nil`) - A specification for configuring the behavior of content search.
  *   `dataStoreSpecs` (*type:* `list(GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1SearchRequestDataStoreSpec.t)`, *default:* `nil`) - Specifications that define the specific DataStores to be searched, along with configurations for those data stores. This is only considered for Engines with multiple data stores. For engines with a single data store, the specs directly under SearchRequest should be used.
  *   `displaySpec` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1SearchRequestDisplaySpec.t`, *default:* `nil`) - Optional. Config for display feature, like match highlighting on search results.
  *   `facetSpecs` (*type:* `list(GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1SearchRequestFacetSpec.t)`, *default:* `nil`) - Facet specifications for faceted search. If empty, no facets are returned. A maximum of 100 values are allowed. Otherwise, an `INVALID_ARGUMENT` error is returned.
  *   `filter` (*type:* `String.t`, *default:* `nil`) - The filter syntax consists of an expression language for constructing a predicate from one or more fields of the documents being filtered. Filter expression is case-sensitive. If this field is unrecognizable, an `INVALID_ARGUMENT` is returned. Filtering in Vertex AI Search is done by mapping the LHS filter key to a key property defined in the Vertex AI Search backend -- this mapping is defined by the customer in their schema. For example a media customer might have a field 'name' in their schema. In this case the filter would look like this: filter --> name:'ANY("king kong")' For more information about filtering including syntax and filter operators, see [Filter](https://cloud.google.com/generative-ai-app-builder/docs/filter-search-metadata)
  *   `imageQuery` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1SearchRequestImageQuery.t`, *default:* `nil`) - Raw image query.
  *   `languageCode` (*type:* `String.t`, *default:* `nil`) - The BCP-47 language code, such as "en-US" or "sr-Latn". For more information, see [Standard fields](https://cloud.google.com/apis/design/standard_fields). This field helps to better interpret the query. If a value isn't specified, the query language code is automatically detected, which may not be accurate.
  *   `offset` (*type:* `integer()`, *default:* `nil`) - A 0-indexed integer that specifies the current offset (that is, starting result location, amongst the Documents deemed by the API as relevant) in search results. This field is only considered if page_token is unset. If this field is negative, an `INVALID_ARGUMENT` is returned.
  *   `oneBoxPageSize` (*type:* `integer()`, *default:* `nil`) - The maximum number of results to return for OneBox. This applies to each OneBox type individually. Default number is 10.
  *   `orderBy` (*type:* `String.t`, *default:* `nil`) - The order in which documents are returned. Documents can be ordered by a field in an Document object. Leave it unset if ordered by relevance. `order_by` expression is case-sensitive. For more information on ordering the website search results, see [Order web search results](https://cloud.google.com/generative-ai-app-builder/docs/order-web-search-results). For more information on ordering the healthcare search results, see [Order healthcare search results](https://cloud.google.com/generative-ai-app-builder/docs/order-hc-results). If this field is unrecognizable, an `INVALID_ARGUMENT` is returned.
  *   `pageSize` (*type:* `integer()`, *default:* `nil`) - Maximum number of Documents to return. The maximum allowed value depends on the data type. Values above the maximum value are coerced to the maximum value. * Websites with basic indexing: Default `10`, Maximum `25`. * Websites with advanced indexing: Default `25`, Maximum `50`. * Other: Default `50`, Maximum `100`. If this field is negative, an `INVALID_ARGUMENT` is returned.
  *   `pageToken` (*type:* `String.t`, *default:* `nil`) - A page token received from a previous SearchService.Search call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to SearchService.Search must match the call that provided the page token. Otherwise, an `INVALID_ARGUMENT` error is returned.
  *   `params` (*type:* `map()`, *default:* `nil`) - Additional search parameters. For public website search only, supported values are: * `user_country_code`: string. Default empty. If set to non-empty, results are restricted or boosted based on the location provided. For example, `user_country_code: "au"` For available codes see [Country Codes](https://developers.google.com/custom-search/docs/json_api_reference#countryCodes) * `search_type`: double. Default empty. Enables non-webpage searching depending on the value. The only valid non-default value is 1, which enables image searching. For example, `search_type: 1`
  *   `query` (*type:* `String.t`, *default:* `nil`) - Raw search query.
  *   `queryExpansionSpec` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1SearchRequestQueryExpansionSpec.t`, *default:* `nil`) - The query expansion specification that specifies the conditions under which query expansion occurs.
  *   `relevanceScoreSpec` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1SearchRequestRelevanceScoreSpec.t`, *default:* `nil`) - Optional. The specification for returning the relevance score.
  *   `relevanceThreshold` (*type:* `String.t`, *default:* `nil`) - The relevance threshold of the search results. Default to Google defined threshold, leveraging a balance of precision and recall to deliver both highly accurate results and comprehensive coverage of relevant information. This feature is not supported for healthcare search.
  *   `safeSearch` (*type:* `boolean()`, *default:* `nil`) - Whether to turn on safe search. This is only supported for website search.
  *   `searchAsYouTypeSpec` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1SearchRequestSearchAsYouTypeSpec.t`, *default:* `nil`) - Search as you type configuration. Only supported for the IndustryVertical.MEDIA vertical.
  *   `session` (*type:* `String.t`, *default:* `nil`) - The session resource name. Optional. Session allows users to do multi-turn /search API calls or coordination between /search API calls and /answer API calls. Example #1 (multi-turn /search API calls): 1. Call /search API with the auto-session mode (see below). 2. Call /search API with the session ID generated in the first call. Here, the previous search query gets considered in query standing. I.e., if the first query is "How did Alphabet do in 2022?" and the current query is "How about 2023?", the current query will be interpreted as "How did Alphabet do in 2023?". Example #2 (coordination between /search API calls and /answer API calls): 1. Call /search API with the auto-session mode (see below). 2. Call /answer API with the session ID generated in the first call. Here, the answer generation happens in the context of the search results from the first search call. Auto-session mode: when `projects/.../sessions/-` is used, a new session gets automatically created. Otherwise, users can use the create-session API to create a session manually. Multi-turn Search feature is currently at private GA stage. Please use v1alpha or v1beta version instead before we launch this feature to public GA. Or ask for allowlisting through Google Support team.
  *   `sessionSpec` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1SearchRequestSessionSpec.t`, *default:* `nil`) - Session specification. Can be used only when `session` is set.
  *   `spellCorrectionSpec` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1SearchRequestSpellCorrectionSpec.t`, *default:* `nil`) - The spell correction specification that specifies the mode under which spell correction takes effect.
  *   `userInfo` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1UserInfo.t`, *default:* `nil`) - Information about the end user. Highly recommended for analytics and personalization. UserInfo.user_agent is used to deduce `device_type` for analytics.
  *   `userLabels` (*type:* `map()`, *default:* `nil`) - The user labels applied to a resource must meet the following requirements: * Each resource can have multiple labels, up to a maximum of 64. * Each label must be a key-value pair. * Keys have a minimum length of 1 character and a maximum length of 63 characters and cannot be empty. Values can be empty and have a maximum length of 63 characters. * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. All characters must use UTF-8 encoding, and international characters are allowed. * The key portion of a label must be unique. However, you can use the same key with multiple resources. * Keys must start with a lowercase letter or international character. See [Google Cloud Document](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements) for more details.
  *   `userPseudoId` (*type:* `String.t`, *default:* `nil`) - A unique identifier for tracking visitors. For example, this could be implemented with an HTTP cookie, which should be able to uniquely identify a visitor on a single device. This unique identifier should not change if the visitor logs in or out of the website. This field should NOT have a fixed value such as `unknown_visitor`. This should be the same identifier as UserEvent.user_pseudo_id and CompleteQueryRequest.user_pseudo_id The field must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an `INVALID_ARGUMENT` error is returned.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :boostSpec =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1SearchRequestBoostSpec.t()
            | nil,
          :branch => String.t() | nil,
          :canonicalFilter => String.t() | nil,
          :contentSearchSpec =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpec.t()
            | nil,
          :dataStoreSpecs =>
            list(
              GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1SearchRequestDataStoreSpec.t()
            )
            | nil,
          :displaySpec =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1SearchRequestDisplaySpec.t()
            | nil,
          :facetSpecs =>
            list(
              GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1SearchRequestFacetSpec.t()
            )
            | nil,
          :filter => String.t() | nil,
          :imageQuery =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1SearchRequestImageQuery.t()
            | nil,
          :languageCode => String.t() | nil,
          :offset => integer() | nil,
          :oneBoxPageSize => integer() | nil,
          :orderBy => String.t() | nil,
          :pageSize => integer() | nil,
          :pageToken => String.t() | nil,
          :params => map() | nil,
          :query => String.t() | nil,
          :queryExpansionSpec =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1SearchRequestQueryExpansionSpec.t()
            | nil,
          :relevanceScoreSpec =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1SearchRequestRelevanceScoreSpec.t()
            | nil,
          :relevanceThreshold => String.t() | nil,
          :safeSearch => boolean() | nil,
          :searchAsYouTypeSpec =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1SearchRequestSearchAsYouTypeSpec.t()
            | nil,
          :session => String.t() | nil,
          :sessionSpec =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1SearchRequestSessionSpec.t()
            | nil,
          :spellCorrectionSpec =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1SearchRequestSpellCorrectionSpec.t()
            | nil,
          :userInfo =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1UserInfo.t() | nil,
          :userLabels => map() | nil,
          :userPseudoId => String.t() | nil
        }

  field(:boostSpec,
    as: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1SearchRequestBoostSpec
  )

  field(:branch)
  field(:canonicalFilter)

  field(:contentSearchSpec,
    as:
      GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpec
  )

  field(:dataStoreSpecs,
    as: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1SearchRequestDataStoreSpec,
    type: :list
  )

  field(:displaySpec,
    as: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1SearchRequestDisplaySpec
  )

  field(:facetSpecs,
    as: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1SearchRequestFacetSpec,
    type: :list
  )

  field(:filter)

  field(:imageQuery,
    as: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1SearchRequestImageQuery
  )

  field(:languageCode)
  field(:offset)
  field(:oneBoxPageSize)
  field(:orderBy)
  field(:pageSize)
  field(:pageToken)
  field(:params, type: :map)
  field(:query)

  field(:queryExpansionSpec,
    as:
      GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1SearchRequestQueryExpansionSpec
  )

  field(:relevanceScoreSpec,
    as:
      GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1SearchRequestRelevanceScoreSpec
  )

  field(:relevanceThreshold)
  field(:safeSearch)

  field(:searchAsYouTypeSpec,
    as:
      GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1SearchRequestSearchAsYouTypeSpec
  )

  field(:session)

  field(:sessionSpec,
    as: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1SearchRequestSessionSpec
  )

  field(:spellCorrectionSpec,
    as:
      GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1SearchRequestSpellCorrectionSpec
  )

  field(:userInfo, as: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1UserInfo)
  field(:userLabels, type: :map)
  field(:userPseudoId)
end

defimpl Poison.Decoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1SearchRequest do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1SearchRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1SearchRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
