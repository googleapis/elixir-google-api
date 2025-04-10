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

defmodule GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaDataStore do
  @moduledoc """
  DataStore captures global settings and configs at the DataStore level.

  ## Attributes

  *   `aclEnabled` (*type:* `boolean()`, *default:* `nil`) - Immutable. Whether data in the DataStore has ACL information. If set to `true`, the source data must have ACL. ACL will be ingested when data is ingested by DocumentService.ImportDocuments methods. When ACL is enabled for the DataStore, Document can't be accessed by calling DocumentService.GetDocument or DocumentService.ListDocuments. Currently ACL is only supported in `GENERIC` industry vertical with non-`PUBLIC_WEBSITE` content config.
  *   `advancedSiteSearchConfig` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaAdvancedSiteSearchConfig.t`, *default:* `nil`) - Optional. Configuration for advanced site search.
  *   `billingEstimation` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaDataStoreBillingEstimation.t`, *default:* `nil`) - Output only. Data size estimation for billing.
  *   `cmekConfig` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaCmekConfig.t`, *default:* `nil`) - Output only. CMEK-related information for the DataStore.
  *   `contentConfig` (*type:* `String.t`, *default:* `nil`) - Immutable. The content config of the data store. If this field is unset, the server behavior defaults to ContentConfig.NO_CONTENT.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Timestamp the DataStore was created at.
  *   `defaultSchemaId` (*type:* `String.t`, *default:* `nil`) - Output only. The id of the default Schema associated to this data store.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. The data store display name. This field must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is returned.
  *   `documentProcessingConfig` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfig.t`, *default:* `nil`) - Configuration for Document understanding and enrichment.
  *   `healthcareFhirConfig` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaHealthcareFhirConfig.t`, *default:* `nil`) - Optional. Configuration for `HEALTHCARE_FHIR` vertical.
  *   `identityMappingStore` (*type:* `String.t`, *default:* `nil`) - Immutable. The fully qualified resource name of the associated IdentityMappingStore. This field can only be set for acl_enabled DataStores with `THIRD_PARTY` or `GSUITE` IdP. Format: `projects/{project}/locations/{location}/identityMappingStores/{identity_mapping_store}`.
  *   `idpConfig` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaIdpConfig.t`, *default:* `nil`) - Output only. Data store level identity provider config.
  *   `industryVertical` (*type:* `String.t`, *default:* `nil`) - Immutable. The industry vertical that the data store registers.
  *   `isInfobotFaqDataStore` (*type:* `boolean()`, *default:* `nil`) - Optional. If set, this DataStore is an Infobot FAQ DataStore.
  *   `kmsKeyName` (*type:* `String.t`, *default:* `nil`) - Input only. The KMS key to be used to protect this DataStore at creation time. Must be set for requests that need to comply with CMEK Org Policy protections. If this field is set and processed successfully, the DataStore will be protected by the KMS key, as indicated in the cmek_config field.
  *   `languageInfo` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaLanguageInfo.t`, *default:* `nil`) - Language info for DataStore.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Immutable. The full resource name of the data store. Format: `projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}`. This field must be a UTF-8 encoded string with a length limit of 1024 characters.
  *   `naturalLanguageQueryUnderstandingConfig` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaNaturalLanguageQueryUnderstandingConfig.t`, *default:* `nil`) - Optional. Configuration for Natural Language Query Understanding.
  *   `servingConfigDataStore` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaDataStoreServingConfigDataStore.t`, *default:* `nil`) - Optional. Stores serving config at DataStore level.
  *   `solutionTypes` (*type:* `list(String.t)`, *default:* `nil`) - The solutions that the data store enrolls. Available solutions for each industry_vertical: * `MEDIA`: `SOLUTION_TYPE_RECOMMENDATION` and `SOLUTION_TYPE_SEARCH`. * `SITE_SEARCH`: `SOLUTION_TYPE_SEARCH` is automatically enrolled. Other solutions cannot be enrolled.
  *   `startingSchema` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaSchema.t`, *default:* `nil`) - The start schema to use for this DataStore when provisioning it. If unset, a default vertical specialized schema will be used. This field is only used by CreateDataStore API, and will be ignored if used in other APIs. This field will be omitted from all API responses including CreateDataStore API. To retrieve a schema of a DataStore, use SchemaService.GetSchema API instead. The provided schema will be validated against certain rules on schema. Learn more from [this doc](https://cloud.google.com/generative-ai-app-builder/docs/provide-schema).
  *   `workspaceConfig` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaWorkspaceConfig.t`, *default:* `nil`) - Config to store data store type configuration for workspace data. This must be set when DataStore.content_config is set as DataStore.ContentConfig.GOOGLE_WORKSPACE.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :aclEnabled => boolean() | nil,
          :advancedSiteSearchConfig =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaAdvancedSiteSearchConfig.t()
            | nil,
          :billingEstimation =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaDataStoreBillingEstimation.t()
            | nil,
          :cmekConfig =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaCmekConfig.t()
            | nil,
          :contentConfig => String.t() | nil,
          :createTime => DateTime.t() | nil,
          :defaultSchemaId => String.t() | nil,
          :displayName => String.t() | nil,
          :documentProcessingConfig =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfig.t()
            | nil,
          :healthcareFhirConfig =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaHealthcareFhirConfig.t()
            | nil,
          :identityMappingStore => String.t() | nil,
          :idpConfig =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaIdpConfig.t()
            | nil,
          :industryVertical => String.t() | nil,
          :isInfobotFaqDataStore => boolean() | nil,
          :kmsKeyName => String.t() | nil,
          :languageInfo =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaLanguageInfo.t()
            | nil,
          :name => String.t() | nil,
          :naturalLanguageQueryUnderstandingConfig =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaNaturalLanguageQueryUnderstandingConfig.t()
            | nil,
          :servingConfigDataStore =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaDataStoreServingConfigDataStore.t()
            | nil,
          :solutionTypes => list(String.t()) | nil,
          :startingSchema =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaSchema.t() | nil,
          :workspaceConfig =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaWorkspaceConfig.t()
            | nil
        }

  field(:aclEnabled)

  field(:advancedSiteSearchConfig,
    as:
      GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaAdvancedSiteSearchConfig
  )

  field(:billingEstimation,
    as:
      GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaDataStoreBillingEstimation
  )

  field(:cmekConfig,
    as: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaCmekConfig
  )

  field(:contentConfig)
  field(:createTime, as: DateTime)
  field(:defaultSchemaId)
  field(:displayName)

  field(:documentProcessingConfig,
    as:
      GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfig
  )

  field(:healthcareFhirConfig,
    as: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaHealthcareFhirConfig
  )

  field(:identityMappingStore)

  field(:idpConfig,
    as: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaIdpConfig
  )

  field(:industryVertical)
  field(:isInfobotFaqDataStore)
  field(:kmsKeyName)

  field(:languageInfo,
    as: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaLanguageInfo
  )

  field(:name)

  field(:naturalLanguageQueryUnderstandingConfig,
    as:
      GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaNaturalLanguageQueryUnderstandingConfig
  )

  field(:servingConfigDataStore,
    as:
      GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaDataStoreServingConfigDataStore
  )

  field(:solutionTypes, type: :list)

  field(:startingSchema,
    as: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaSchema
  )

  field(:workspaceConfig,
    as: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaWorkspaceConfig
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaDataStore do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaDataStore.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaDataStore do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
