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

defmodule GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1Asset do
  @moduledoc """
  An asset represents a cloud resource that is being managed within a lake as a member of a zone.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the asset was created.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. Description of the asset.
  *   `discoverySpec` (*type:* `GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1AssetDiscoverySpec.t`, *default:* `nil`) - Optional. Specification of the discovery feature applied to data referenced by this asset. When this spec is left unset, the asset will use the spec set on the parent zone.
  *   `discoveryStatus` (*type:* `GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1AssetDiscoveryStatus.t`, *default:* `nil`) - Output only. Status of the discovery feature applied to data referenced by this asset.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Optional. User friendly display name.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. User defined labels for the asset.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The relative resource name of the asset, of the form: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}/assets/{asset_id}.
  *   `resourceSpec` (*type:* `GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1AssetResourceSpec.t`, *default:* `nil`) - Required. Specification of the resource that is referenced by this asset.
  *   `resourceStatus` (*type:* `GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1AssetResourceStatus.t`, *default:* `nil`) - Output only. Status of the resource referenced by this asset.
  *   `securityStatus` (*type:* `GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1AssetSecurityStatus.t`, *default:* `nil`) - Output only. Status of the security policy applied to resource referenced by this asset.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. Current state of the asset.
  *   `uid` (*type:* `String.t`, *default:* `nil`) - Output only. System generated globally unique ID for the asset. This ID will be different if the asset is deleted and re-created with the same name.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the asset was last updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :discoverySpec =>
            GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1AssetDiscoverySpec.t() | nil,
          :discoveryStatus =>
            GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1AssetDiscoveryStatus.t() | nil,
          :displayName => String.t() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :resourceSpec =>
            GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1AssetResourceSpec.t() | nil,
          :resourceStatus =>
            GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1AssetResourceStatus.t() | nil,
          :securityStatus =>
            GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1AssetSecurityStatus.t() | nil,
          :state => String.t() | nil,
          :uid => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:description)
  field(:discoverySpec, as: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1AssetDiscoverySpec)

  field(:discoveryStatus,
    as: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1AssetDiscoveryStatus
  )

  field(:displayName)
  field(:labels, type: :map)
  field(:name)
  field(:resourceSpec, as: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1AssetResourceSpec)
  field(:resourceStatus, as: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1AssetResourceStatus)
  field(:securityStatus, as: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1AssetSecurityStatus)
  field(:state)
  field(:uid)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1Asset do
  def decode(value, options) do
    GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1Asset.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1Asset do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
