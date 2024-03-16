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

defmodule GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefWebrefDocumentInfo do
  @moduledoc """
  All information that applies globally to the document. Next available tag: 11

  ## Attributes

  *   `documentMetadata` (*type:* `GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefDocumentMetadata.t`, *default:* `nil`) - Information about the document copied from the docjoin. This will never be populated when WebrefEntities appears inside a CompositeDoc, but may we used when it stands alone.
  *   `extensions` (*type:* `GoogleApi.ContentWarehouse.V1.Model.Proto2BridgeMessageSet.t`, *default:* `nil`) - Optional extensions (e.g. taxonomic classifications).
  *   `webrefParsedContentSentence` (*type:* `list(String.t)`, *default:* `nil`) - The content (CONTENT section 0) as parsed by WebrefParser. Only used by //r/w/postprocessing/idf/idf-pipeline for document ngram idf computation. Populated when the annotator is run with webref_populate_parsed_content Each webref_parsed_content_sentence represents one sentence of the context where saft annotations were used to determine the sentence boundaries. See r/w/universal/processors/saft/saft-sentence-helper.h for details.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :documentMetadata =>
            GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefDocumentMetadata.t() | nil,
          :extensions => GoogleApi.ContentWarehouse.V1.Model.Proto2BridgeMessageSet.t() | nil,
          :webrefParsedContentSentence => list(String.t()) | nil
        }

  field(:documentMetadata,
    as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefDocumentMetadata
  )

  field(:extensions, as: GoogleApi.ContentWarehouse.V1.Model.Proto2BridgeMessageSet)
  field(:webrefParsedContentSentence, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefWebrefDocumentInfo do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefWebrefDocumentInfo.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefWebrefDocumentInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end