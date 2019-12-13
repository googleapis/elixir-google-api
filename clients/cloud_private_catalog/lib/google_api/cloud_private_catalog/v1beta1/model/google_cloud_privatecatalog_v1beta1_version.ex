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

defmodule GoogleApi.CloudPrivateCatalog.V1beta1.Model.GoogleCloudPrivatecatalogV1beta1Version do
  @moduledoc """
  The consumer representation of a version which is a child resource under a
  `Product` with asset data.

  ## Attributes

  *   `asset` (*type:* `map()`, *default:* `nil`) - Output only. The asset which has been validated and is ready to be
      provisioned. See
      google.cloud.privatecatalogproducer.v1beta.Version.asset for details.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the version was created.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Output only. The user-supplied description of the version. Maximum of 256
      characters.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the version, in the format
      `catalogs/{catalog_id}/products/{product_id}/versions/a-z*[a-z0-9]'.

      A unique identifier for the version under a product.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the version was last updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :asset => map(),
          :createTime => DateTime.t(),
          :description => String.t(),
          :name => String.t(),
          :updateTime => DateTime.t()
        }

  field(:asset, type: :map)
  field(:createTime, as: DateTime)
  field(:description)
  field(:name)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder,
  for: GoogleApi.CloudPrivateCatalog.V1beta1.Model.GoogleCloudPrivatecatalogV1beta1Version do
  def decode(value, options) do
    GoogleApi.CloudPrivateCatalog.V1beta1.Model.GoogleCloudPrivatecatalogV1beta1Version.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.CloudPrivateCatalog.V1beta1.Model.GoogleCloudPrivatecatalogV1beta1Version do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
