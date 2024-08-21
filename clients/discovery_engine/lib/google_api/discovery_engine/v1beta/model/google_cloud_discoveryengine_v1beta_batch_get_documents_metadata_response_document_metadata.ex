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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaBatchGetDocumentsMetadataResponseDocumentMetadata do
  @moduledoc """
  The metadata of a Document.

  ## Attributes

  *   `dataIngestionSource` (*type:* `String.t`, *default:* `nil`) - The data ingestion source of the Document. Allowed values are: * `batch`: Data ingested via Batch API, e.g., ImportDocuments. * `streaming` Data ingested via Streaming API, e.g., FHIR streaming.
  *   `lastRefreshedTime` (*type:* `DateTime.t`, *default:* `nil`) - The timestamp of the last time the Document was last indexed.
  *   `matcherValue` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaBatchGetDocumentsMetadataResponseDocumentMetadataMatcherValue.t`, *default:* `nil`) - The value of the matcher that was used to match the Document.
  *   `status` (*type:* `String.t`, *default:* `nil`) - The status of the document.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dataIngestionSource => String.t() | nil,
          :lastRefreshedTime => DateTime.t() | nil,
          :matcherValue =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaBatchGetDocumentsMetadataResponseDocumentMetadataMatcherValue.t()
            | nil,
          :status => String.t() | nil
        }

  field(:dataIngestionSource)
  field(:lastRefreshedTime, as: DateTime)

  field(:matcherValue,
    as:
      GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaBatchGetDocumentsMetadataResponseDocumentMetadataMatcherValue
  )

  field(:status)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaBatchGetDocumentsMetadataResponseDocumentMetadata do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaBatchGetDocumentsMetadataResponseDocumentMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaBatchGetDocumentsMetadataResponseDocumentMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
