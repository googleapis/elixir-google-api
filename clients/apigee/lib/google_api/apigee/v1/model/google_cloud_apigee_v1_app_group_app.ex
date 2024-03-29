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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1AppGroupApp do
  @moduledoc """
  Response for [GetAppGroupApp].[AppGroupApps.GetAppGroupApp], [CreateAppGroupAppRequest].[AppGroupApp.CreateAppGroupAppRequest] and [DeleteAppGroupApp].[AppGroupApp.DeleteAppGroupApp]

  ## Attributes

  *   `apiProducts` (*type:* `list(String.t)`, *default:* `nil`) - List of API products associated with the AppGroup app.
  *   `appGroup` (*type:* `String.t`, *default:* `nil`) - Immutable. Name of the parent AppGroup whose resource name format is of syntax (organizations/*/appgroups/*).
  *   `appId` (*type:* `String.t`, *default:* `nil`) - Immutable. ID of the AppGroup app.
  *   `attributes` (*type:* `list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Attribute.t)`, *default:* `nil`) - List of attributes for the AppGroup app.
  *   `callbackUrl` (*type:* `String.t`, *default:* `nil`) - Callback URL used by OAuth 2.0 authorization servers to communicate authorization codes back to AppGroup apps.
  *   `createdAt` (*type:* `String.t`, *default:* `nil`) - Output only. Time the AppGroup app was created in milliseconds since epoch.
  *   `credentials` (*type:* `list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Credential.t)`, *default:* `nil`) - Output only. Set of credentials for the AppGroup app consisting of the consumer key/secret pairs associated with the API products.
  *   `keyExpiresIn` (*type:* `String.t`, *default:* `nil`) - Immutable. Expiration time, in seconds, for the consumer key that is generated for the AppGroup app. If not set or left to the default value of `-1`, the API key never expires. The expiration time can't be updated after it is set.
  *   `lastModifiedAt` (*type:* `String.t`, *default:* `nil`) - Output only. Time the AppGroup app was modified in milliseconds since epoch.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Immutable. Name of the AppGroup app whose resource name format is of syntax (organizations/*/appgroups/*/apps/*).
  *   `scopes` (*type:* `list(String.t)`, *default:* `nil`) - Scopes to apply to the AppGroup app. The specified scopes must already exist for the API product that you associate with the AppGroup app.
  *   `status` (*type:* `String.t`, *default:* `nil`) - Status of the App. Valid values include `approved` or `revoked`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :apiProducts => list(String.t()) | nil,
          :appGroup => String.t() | nil,
          :appId => String.t() | nil,
          :attributes => list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Attribute.t()) | nil,
          :callbackUrl => String.t() | nil,
          :createdAt => String.t() | nil,
          :credentials => list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Credential.t()) | nil,
          :keyExpiresIn => String.t() | nil,
          :lastModifiedAt => String.t() | nil,
          :name => String.t() | nil,
          :scopes => list(String.t()) | nil,
          :status => String.t() | nil
        }

  field(:apiProducts, type: :list)
  field(:appGroup)
  field(:appId)
  field(:attributes, as: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Attribute, type: :list)
  field(:callbackUrl)
  field(:createdAt)
  field(:credentials, as: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Credential, type: :list)
  field(:keyExpiresIn)
  field(:lastModifiedAt)
  field(:name)
  field(:scopes, type: :list)
  field(:status)
end

defimpl Poison.Decoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1AppGroupApp do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1AppGroupApp.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1AppGroupApp do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
