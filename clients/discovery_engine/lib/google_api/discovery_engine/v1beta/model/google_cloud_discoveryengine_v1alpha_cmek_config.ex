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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaCmekConfig do
  @moduledoc """
  Configurations used to enable CMEK data encryption with Cloud KMS keys.

  ## Attributes

  *   `isDefault` (*type:* `boolean()`, *default:* `nil`) - Output only. The default CmekConfig for the Customer.
  *   `kmsKey` (*type:* `String.t`, *default:* `nil`) - Kms key resource name which will be used to encrypt resources `projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{keyId}`.
  *   `kmsKeyVersion` (*type:* `String.t`, *default:* `nil`) - Kms key version resource name which will be used to encrypt resources `/cryptoKeyVersions/{keyVersion}`.
  *   `lastRotationTimestampMicros` (*type:* `String.t`, *default:* `nil`) - Output only. The timestamp of the last key rotation.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. Name of the CmekConfig, of the form `projects/{project}/locations/{location}/cmekConfig` or `projects/{project}/locations/{location}/cmekConfigs/{cmekConfig}`.
  *   `singleRegionKeys` (*type:* `list(GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaSingleRegionKey.t)`, *default:* `nil`) - Optional. Single-regional CMEKs that are required for some VAIS features.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. State of the CmekConfig.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :isDefault => boolean() | nil,
          :kmsKey => String.t() | nil,
          :kmsKeyVersion => String.t() | nil,
          :lastRotationTimestampMicros => String.t() | nil,
          :name => String.t() | nil,
          :singleRegionKeys =>
            list(
              GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaSingleRegionKey.t()
            )
            | nil,
          :state => String.t() | nil
        }

  field(:isDefault)
  field(:kmsKey)
  field(:kmsKeyVersion)
  field(:lastRotationTimestampMicros)
  field(:name)

  field(:singleRegionKeys,
    as: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaSingleRegionKey,
    type: :list
  )

  field(:state)
end

defimpl Poison.Decoder,
  for: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaCmekConfig do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaCmekConfig.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaCmekConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
