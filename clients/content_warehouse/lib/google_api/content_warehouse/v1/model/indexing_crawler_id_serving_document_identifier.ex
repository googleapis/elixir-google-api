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

defmodule GoogleApi.ContentWarehouse.V1.Model.IndexingCrawlerIdServingDocumentIdentifier do
  @moduledoc """


  ## Attributes

  *   `doubleIndexingExperimentId` (*type:* `String.t`, *default:* `nil`) - Only for double indexing experiments. This field is set for duplicated documents so that docjoin users will not see duplicated docs.
  *   `dupExperimentId` (*type:* `String.t`, *default:* `nil`) - Only for Experimental clusters, not relevant for production serving data: Index-Dups can run experiments in Quality Clusters where different versions of the same document (e.g. with different signals) are serving in parallel. They are uniquely identified by the dup-experiment-IDs. This is for experimental clusters only. In prod-versions the member will not be set.
  *   `key` (*type:* `String.t`, *default:* `nil`) - The primary identifier of a production document is the document key, which is the same as the row-key in Alexandria, and represents a URL and its crawling context. The document key is the unique identifier for each document, but multiple document keys can cover the same URL (e.g. crawled with different device types). In your production code, please always assume that the document key is the only way to uniquely identify a document. Link for more background information: http://go/url The document key is populated for all docs in indexing since 2014-03. ## Recommended way of reading: const string& doc_key = cdoc.doc().id().key(); ## CHECK(!doc_key.empty()); Note: For older DocJoins (e.g. historical DocJoins), the field is not populated. In those scenarios it is recommended to use the function 'GetDocumentKeyFromCompositeDoc' in '//indexing/crawler_id/utils/compositedoc/compositedoc_util.h' instead.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :doubleIndexingExperimentId => String.t() | nil,
          :dupExperimentId => String.t() | nil,
          :key => String.t() | nil
        }

  field(:doubleIndexingExperimentId)
  field(:dupExperimentId)
  field(:key)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.IndexingCrawlerIdServingDocumentIdentifier do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.IndexingCrawlerIdServingDocumentIdentifier.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.IndexingCrawlerIdServingDocumentIdentifier do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end