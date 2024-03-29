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

defmodule GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1ImportTaxonomiesResponse do
  @moduledoc """
  Response message for ImportTaxonomies.

  ## Attributes

  *   `taxonomies` (*type:* `list(GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1Taxonomy.t)`, *default:* `nil`) - Imported taxonomies.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :taxonomies =>
            list(GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1Taxonomy.t()) | nil
        }

  field(:taxonomies,
    as: GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1Taxonomy,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1ImportTaxonomiesResponse do
  def decode(value, options) do
    GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1ImportTaxonomiesResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1ImportTaxonomiesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
