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

defmodule GoogleApi.CloudPrivateCatalog.V1beta1.Model.GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse do
  @moduledoc """
  Response message for PrivateCatalog.SearchVersions.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - A pagination token returned from a previous call to SearchVersions that
      indicates from where the listing should continue.
      This field is optional.
  *   `versions` (*type:* `list(GoogleApi.CloudPrivateCatalog.V1beta1.Model.GoogleCloudPrivatecatalogV1beta1Version.t)`, *default:* `nil`) - The `Version` resources computed from the resource context.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t(),
          :versions =>
            list(
              GoogleApi.CloudPrivateCatalog.V1beta1.Model.GoogleCloudPrivatecatalogV1beta1Version.t()
            )
        }

  field(:nextPageToken)

  field(:versions,
    as: GoogleApi.CloudPrivateCatalog.V1beta1.Model.GoogleCloudPrivatecatalogV1beta1Version,
    type: :list
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.CloudPrivateCatalog.V1beta1.Model.GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse do
  def decode(value, options) do
    GoogleApi.CloudPrivateCatalog.V1beta1.Model.GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.CloudPrivateCatalog.V1beta1.Model.GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
