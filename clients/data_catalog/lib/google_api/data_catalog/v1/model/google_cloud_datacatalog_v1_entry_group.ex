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

defmodule GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1EntryGroup do
  @moduledoc """
  Entry group metadata. An `EntryGroup` resource represents a logical grouping of zero or more Data Catalog Entry resources.

  ## Attributes

  *   `dataCatalogTimestamps` (*type:* `GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1SystemTimestamps.t`, *default:* `nil`) - Output only. Timestamps of the entry group. Default value is empty.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Entry group description. Can consist of several sentences or paragraphs that describe the entry group contents. Default value is an empty string.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - A short name to identify the entry group, for example, "analytics data - jan 2011". Default value is an empty string.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Identifier. The resource name of the entry group in URL format. Note: The entry group itself and its child resources might not be stored in the location specified in its name.
  *   `transferredToDataplex` (*type:* `boolean()`, *default:* `nil`) - Optional. When set to [true], it means DataCatalog EntryGroup was transferred to Dataplex Catalog Service. It makes EntryGroup and its Entries to be read-only in DataCatalog. However, new Tags on EntryGroup and its Entries can be created. After setting the flag to [true] it cannot be unset.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dataCatalogTimestamps =>
            GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1SystemTimestamps.t() | nil,
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :name => String.t() | nil,
          :transferredToDataplex => boolean() | nil
        }

  field(:dataCatalogTimestamps,
    as: GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1SystemTimestamps
  )

  field(:description)
  field(:displayName)
  field(:name)
  field(:transferredToDataplex)
end

defimpl Poison.Decoder, for: GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1EntryGroup do
  def decode(value, options) do
    GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1EntryGroup.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1EntryGroup do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
