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

defmodule GoogleApi.CloudControlsPartner.V1.Model.Partner do
  @moduledoc """
  Message describing Partner resource

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time the resource was created
  *   `ekmSolutions` (*type:* `list(GoogleApi.CloudControlsPartner.V1.Model.EkmMetadata.t)`, *default:* `nil`) - List of Google Cloud supported EKM partners supported by the partner
  *   `name` (*type:* `String.t`, *default:* `nil`) - Identifier. The resource name of the partner. Format: `organizations/{organization}/locations/{location}/partner` Example: "organizations/123456/locations/us-central1/partner"
  *   `operatedCloudRegions` (*type:* `list(String.t)`, *default:* `nil`) - List of Google Cloud regions that the partner sells services to customers. Valid Google Cloud regions found here: https://cloud.google.com/compute/docs/regions-zones
  *   `partnerProjectId` (*type:* `String.t`, *default:* `nil`) - Google Cloud project ID in the partner's Google Cloud organization for receiving enhanced Logs for Partners.
  *   `skus` (*type:* `list(GoogleApi.CloudControlsPartner.V1.Model.Sku.t)`, *default:* `nil`) - List of SKUs the partner is offering
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The last time the resource was updated
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :ekmSolutions => list(GoogleApi.CloudControlsPartner.V1.Model.EkmMetadata.t()) | nil,
          :name => String.t() | nil,
          :operatedCloudRegions => list(String.t()) | nil,
          :partnerProjectId => String.t() | nil,
          :skus => list(GoogleApi.CloudControlsPartner.V1.Model.Sku.t()) | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:ekmSolutions, as: GoogleApi.CloudControlsPartner.V1.Model.EkmMetadata, type: :list)
  field(:name)
  field(:operatedCloudRegions, type: :list)
  field(:partnerProjectId)
  field(:skus, as: GoogleApi.CloudControlsPartner.V1.Model.Sku, type: :list)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.CloudControlsPartner.V1.Model.Partner do
  def decode(value, options) do
    GoogleApi.CloudControlsPartner.V1.Model.Partner.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudControlsPartner.V1.Model.Partner do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
