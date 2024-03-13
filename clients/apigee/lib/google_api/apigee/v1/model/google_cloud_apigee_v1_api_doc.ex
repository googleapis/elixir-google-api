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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ApiDoc do
  @moduledoc """
  `ApiDoc` represents an API catalog item. Catalog items are used in two ways in a portal: - Users can browse and interact with a visual representation of the API documentation - The `api_product_name` field provides a link to a backing [API product] (/apigee/docs/reference/apis/apigee/rest/v1/organizations.apiproducts). Through this link, portal users can create and manage developer apps linked to one or more API products.

  ## Attributes

  *   `anonAllowed` (*type:* `boolean()`, *default:* `nil`) - Optional. Boolean flag that manages user access to the catalog item. When true, the catalog item can be viewed anonymously; otherwise, only registered users may view it. Note: when the parent portal is enrolled in the [audience management feature](https://cloud.google.com/apigee/docs/api-platform/publish/portal/portal-audience#enrolling_in_the_beta_release_of_the_audience_management_feature), this flag is ignored; instead visibility must be further managed in the management UI (see [Manage the visibility of an API in your portal](https://cloud.google.com/apigee/docs/api-platform/publish/portal/publish-apis#visibility)).
  *   `apiProductName` (*type:* `String.t`, *default:* `nil`) - Required. Immutable. The `name` field of the associated [API product](/apigee/docs/reference/apis/apigee/rest/v1/organizations.apiproducts). A portal may have only one catalog item associated with a given API product.
  *   `categoryIds` (*type:* `list(String.t)`, *default:* `nil`) - Optional. The IDs of the API categories to which this catalog item belongs.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. Description of the catalog item. Max length is 10,000 characters.
  *   `edgeAPIProductName` (*type:* `String.t`, *default:* `nil`) - Optional. Immutable. DEPRECATED: use the `apiProductName` field instead
  *   `graphqlEndpointUrl` (*type:* `String.t`, *default:* `nil`) - Optional. DEPRECATED: manage documentation through the `getDocumentation` and `updateDocumentation` methods
  *   `graphqlSchema` (*type:* `String.t`, *default:* `nil`) - Optional. DEPRECATED: manage documentation through the `getDocumentation` and `updateDocumentation` methods
  *   `graphqlSchemaDisplayName` (*type:* `String.t`, *default:* `nil`) - Optional. DEPRECATED: manage documentation through the `getDocumentation` and `updateDocumentation` methods
  *   `id` (*type:* `String.t`, *default:* `nil`) - Output only. The ID of the catalog item.
  *   `imageUrl` (*type:* `String.t`, *default:* `nil`) - Optional. Location of the image used for the catalog item in the catalog. For portal files, this can have the format `/files/{filename}`. Max length is 2,083 characters.
  *   `modified` (*type:* `String.t`, *default:* `nil`) - Output only. Time the catalog item was last modified in milliseconds since epoch.
  *   `published` (*type:* `boolean()`, *default:* `nil`) - Optional. Denotes whether the catalog item is published to the portal or is in a draft state. When the parent portal is enrolled in the [audience management feature](https://cloud.google.com/apigee/docs/api-platform/publish/portal/portal-audience#enrolling_in_the_beta_release_of_the_audience_management_feature), the visibility must be further managed in the management UI (see [Manage the visibility of an API in your portal](https://cloud.google.com/apigee/docs/api-platform/publish/portal/publish-apis#visibility)) before it can be visible to any users. If not enrolled in the audience management feature, the visibility is further managed by the `anonAllowed` flag.
  *   `requireCallbackUrl` (*type:* `boolean()`, *default:* `nil`) - Optional. Whether a callback URL is required when this catalog item's API product is enabled in a developer app. When true, a portal user will be required to input a URL when managing the app (this is typically used for the app's OAuth flow).
  *   `siteId` (*type:* `String.t`, *default:* `nil`) - Output only. The ID of the parent portal.
  *   `specId` (*type:* `String.t`, *default:* `nil`) - Optional. DEPRECATED: DO NOT USE
  *   `title` (*type:* `String.t`, *default:* `nil`) - Required. The user-facing name of the catalog item. `title` must be a non-empty string with a max length of 255 characters.
  *   `visibility` (*type:* `boolean()`, *default:* `nil`) - Optional. DEPRECATED: use the `published` field instead
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :anonAllowed => boolean() | nil,
          :apiProductName => String.t() | nil,
          :categoryIds => list(String.t()) | nil,
          :description => String.t() | nil,
          :edgeAPIProductName => String.t() | nil,
          :graphqlEndpointUrl => String.t() | nil,
          :graphqlSchema => String.t() | nil,
          :graphqlSchemaDisplayName => String.t() | nil,
          :id => String.t() | nil,
          :imageUrl => String.t() | nil,
          :modified => String.t() | nil,
          :published => boolean() | nil,
          :requireCallbackUrl => boolean() | nil,
          :siteId => String.t() | nil,
          :specId => String.t() | nil,
          :title => String.t() | nil,
          :visibility => boolean() | nil
        }

  field(:anonAllowed)
  field(:apiProductName)
  field(:categoryIds, type: :list)
  field(:description)
  field(:edgeAPIProductName)
  field(:graphqlEndpointUrl)
  field(:graphqlSchema)
  field(:graphqlSchemaDisplayName)
  field(:id)
  field(:imageUrl)
  field(:modified)
  field(:published)
  field(:requireCallbackUrl)
  field(:siteId)
  field(:specId)
  field(:title)
  field(:visibility)
end

defimpl Poison.Decoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ApiDoc do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ApiDoc.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ApiDoc do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end