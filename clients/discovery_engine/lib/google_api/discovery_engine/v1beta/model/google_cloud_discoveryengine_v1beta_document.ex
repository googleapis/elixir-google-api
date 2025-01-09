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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaDocument do
  @moduledoc """
  Document captures all raw metadata information of items to be recommended or searched.

  ## Attributes

  *   `content` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaDocumentContent.t`, *default:* `nil`) - The unstructured data linked to this document. Content must be set if this document is under a `CONTENT_REQUIRED` data store.
  *   `derivedStructData` (*type:* `map()`, *default:* `nil`) - Output only. This field is OUTPUT_ONLY. It contains derived data that are not in the original input document.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Immutable. The identifier of the document. Id should conform to [RFC-1034](https://tools.ietf.org/html/rfc1034) standard with a length limit of 128 characters.
  *   `indexStatus` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaDocumentIndexStatus.t`, *default:* `nil`) - Output only. The index status of the document. * If document is indexed successfully, the index_time field is populated. * Otherwise, if document is not indexed due to errors, the error_samples field is populated. * Otherwise, if document's index is in progress, the pending_message field is populated.
  *   `indexTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The last time the document was indexed. If this field is set, the document could be returned in search results. This field is OUTPUT_ONLY. If this field is not populated, it means the document has never been indexed.
  *   `jsonData` (*type:* `String.t`, *default:* `nil`) - The JSON string representation of the document. It should conform to the registered Schema or an `INVALID_ARGUMENT` error is thrown.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Immutable. The full resource name of the document. Format: `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/branches/{branch}/documents/{document_id}`. This field must be a UTF-8 encoded string with a length limit of 1024 characters.
  *   `parentDocumentId` (*type:* `String.t`, *default:* `nil`) - The identifier of the parent document. Currently supports at most two level document hierarchy. Id should conform to [RFC-1034](https://tools.ietf.org/html/rfc1034) standard with a length limit of 63 characters.
  *   `schemaId` (*type:* `String.t`, *default:* `nil`) - The identifier of the schema located in the same data store.
  *   `structData` (*type:* `map()`, *default:* `nil`) - The structured JSON data for the document. It should conform to the registered Schema or an `INVALID_ARGUMENT` error is thrown.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :content =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaDocumentContent.t()
            | nil,
          :derivedStructData => map() | nil,
          :id => String.t() | nil,
          :indexStatus =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaDocumentIndexStatus.t()
            | nil,
          :indexTime => DateTime.t() | nil,
          :jsonData => String.t() | nil,
          :name => String.t() | nil,
          :parentDocumentId => String.t() | nil,
          :schemaId => String.t() | nil,
          :structData => map() | nil
        }

  field(:content,
    as: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaDocumentContent
  )

  field(:derivedStructData, type: :map)
  field(:id)

  field(:indexStatus,
    as: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaDocumentIndexStatus
  )

  field(:indexTime, as: DateTime)
  field(:jsonData)
  field(:name)
  field(:parentDocumentId)
  field(:schemaId)
  field(:structData, type: :map)
end

defimpl Poison.Decoder,
  for: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaDocument do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaDocument.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaDocument do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
