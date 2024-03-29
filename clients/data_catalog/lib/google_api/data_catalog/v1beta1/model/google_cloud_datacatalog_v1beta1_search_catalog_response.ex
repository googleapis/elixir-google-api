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

defmodule GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1beta1SearchCatalogResponse do
  @moduledoc """
  Response message for SearchCatalog.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - The token that can be used to retrieve the next page of results.
  *   `results` (*type:* `list(GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1beta1SearchCatalogResult.t)`, *default:* `nil`) - Search results.
  *   `totalSize` (*type:* `integer()`, *default:* `nil`) - The approximate total number of entries matched by the query.
  *   `unreachable` (*type:* `list(String.t)`, *default:* `nil`) - Unreachable locations. Search result does not include data from those locations. Users can get additional information on the error by repeating the search request with a more restrictive parameter -- setting the value for `SearchDataCatalogRequest.scope.restricted_locations`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t() | nil,
          :results =>
            list(
              GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1beta1SearchCatalogResult.t()
            )
            | nil,
          :totalSize => integer() | nil,
          :unreachable => list(String.t()) | nil
        }

  field(:nextPageToken)

  field(:results,
    as: GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1beta1SearchCatalogResult,
    type: :list
  )

  field(:totalSize)
  field(:unreachable, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1beta1SearchCatalogResponse do
  def decode(value, options) do
    GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1beta1SearchCatalogResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1beta1SearchCatalogResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
