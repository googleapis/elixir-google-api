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

defmodule GoogleApi.CustomSearch.V1.Model.Search do
  @moduledoc """
  Response to a custom search request.

  ## Attributes

  *   `context` (*type:* `map()`, *default:* `nil`) - Metadata and refinements associated with the given search engine, including: * The name of the search engine that was used for the query. * A set of [facet objects](https://developers.google.com/custom-search/docs/refinements#create) (refinements) you can use for refining a search.
  *   `items` (*type:* `list(GoogleApi.CustomSearch.V1.Model.Result.t)`, *default:* `nil`) - The current set of custom search results.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Unique identifier for the type of current object. For this API, it is customsearch#search.
  *   `promotions` (*type:* `list(GoogleApi.CustomSearch.V1.Model.Promotion.t)`, *default:* `nil`) - The set of [promotions](https://developers.google.com/custom-search/docs/promotions). Present only if the custom search engine's configuration files define any promotions for the given query.
  *   `queries` (*type:* `GoogleApi.CustomSearch.V1.Model.SearchQueries.t`, *default:* `nil`) - Query metadata for the previous, current, and next pages of results.
  *   `searchInformation` (*type:* `GoogleApi.CustomSearch.V1.Model.SearchSearchInformation.t`, *default:* `nil`) - Metadata about a search operation.
  *   `spelling` (*type:* `GoogleApi.CustomSearch.V1.Model.SearchSpelling.t`, *default:* `nil`) - Spell correction information for a query.
  *   `url` (*type:* `GoogleApi.CustomSearch.V1.Model.SearchUrl.t`, *default:* `nil`) - OpenSearch template and URL.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :context => map(),
          :items => list(GoogleApi.CustomSearch.V1.Model.Result.t()),
          :kind => String.t(),
          :promotions => list(GoogleApi.CustomSearch.V1.Model.Promotion.t()),
          :queries => GoogleApi.CustomSearch.V1.Model.SearchQueries.t(),
          :searchInformation => GoogleApi.CustomSearch.V1.Model.SearchSearchInformation.t(),
          :spelling => GoogleApi.CustomSearch.V1.Model.SearchSpelling.t(),
          :url => GoogleApi.CustomSearch.V1.Model.SearchUrl.t()
        }

  field(:context, type: :map)
  field(:items, as: GoogleApi.CustomSearch.V1.Model.Result, type: :list)
  field(:kind)
  field(:promotions, as: GoogleApi.CustomSearch.V1.Model.Promotion, type: :list)
  field(:queries, as: GoogleApi.CustomSearch.V1.Model.SearchQueries)
  field(:searchInformation, as: GoogleApi.CustomSearch.V1.Model.SearchSearchInformation)
  field(:spelling, as: GoogleApi.CustomSearch.V1.Model.SearchSpelling)
  field(:url, as: GoogleApi.CustomSearch.V1.Model.SearchUrl)
end

defimpl Poison.Decoder, for: GoogleApi.CustomSearch.V1.Model.Search do
  def decode(value, options) do
    GoogleApi.CustomSearch.V1.Model.Search.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CustomSearch.V1.Model.Search do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
