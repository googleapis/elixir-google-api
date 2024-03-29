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

defmodule GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1ListEntriesResponse do
  @moduledoc """
  Response message for ListEntries.

  ## Attributes

  *   `entries` (*type:* `list(GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1Entry.t)`, *default:* `nil`) - Entry details.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Pagination token of the next results page. Empty if there are no more items in results.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :entries =>
            list(GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1Entry.t()) | nil,
          :nextPageToken => String.t() | nil
        }

  field(:entries, as: GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1Entry, type: :list)
  field(:nextPageToken)
end

defimpl Poison.Decoder,
  for: GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1ListEntriesResponse do
  def decode(value, options) do
    GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1ListEntriesResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1ListEntriesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
