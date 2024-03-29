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

defmodule GoogleApi.VMMigration.V1.Model.AzureSourceDetails do
  @moduledoc """
  AzureSourceDetails message describes a specific source details for the Azure source type.

  ## Attributes

  *   `azureLocation` (*type:* `String.t`, *default:* `nil`) - Immutable. The Azure location (region) that the source VMs will be migrated from.
  *   `clientSecretCreds` (*type:* `GoogleApi.VMMigration.V1.Model.ClientSecretCredentials.t`, *default:* `nil`) - Azure Credentials using tenant ID, client ID and secret.
  *   `error` (*type:* `GoogleApi.VMMigration.V1.Model.Status.t`, *default:* `nil`) - Output only. Provides details on the state of the Source in case of an error.
  *   `migrationResourcesUserTags` (*type:* `map()`, *default:* `nil`) - User specified tags to add to every M2VM generated resource in Azure. These tags will be set in addition to the default tags that are set as part of the migration process. The tags must not begin with the reserved prefix `m4ce` or `m2vm`.
  *   `resourceGroupId` (*type:* `String.t`, *default:* `nil`) - Output only. The ID of the Azure resource group that contains all resources related to the migration process of this source.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. State of the source as determined by the health check.
  *   `subscriptionId` (*type:* `String.t`, *default:* `nil`) - Immutable. Azure subscription ID.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :azureLocation => String.t() | nil,
          :clientSecretCreds => GoogleApi.VMMigration.V1.Model.ClientSecretCredentials.t() | nil,
          :error => GoogleApi.VMMigration.V1.Model.Status.t() | nil,
          :migrationResourcesUserTags => map() | nil,
          :resourceGroupId => String.t() | nil,
          :state => String.t() | nil,
          :subscriptionId => String.t() | nil
        }

  field(:azureLocation)
  field(:clientSecretCreds, as: GoogleApi.VMMigration.V1.Model.ClientSecretCredentials)
  field(:error, as: GoogleApi.VMMigration.V1.Model.Status)
  field(:migrationResourcesUserTags, type: :map)
  field(:resourceGroupId)
  field(:state)
  field(:subscriptionId)
end

defimpl Poison.Decoder, for: GoogleApi.VMMigration.V1.Model.AzureSourceDetails do
  def decode(value, options) do
    GoogleApi.VMMigration.V1.Model.AzureSourceDetails.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.VMMigration.V1.Model.AzureSourceDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
