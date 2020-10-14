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

defmodule GoogleApi.DoubleClickBidManager.V1.Model.DownloadRequest do
  @moduledoc """
  Request to fetch stored inventory sources, campaigns, insertion orders, line items, YouTube ad groups and ads.

  ## Attributes

  *   `fileTypes` (*type:* `list(String.t)`, *default:* `nil`) - File types that will be returned. If INVENTORY_SOURCE is requested, no other file types may be requested. Acceptable values are: - "AD" - "AD_GROUP" - "CAMPAIGN" - "INSERTION_ORDER" - "INVENTORY_SOURCE" - "LINE_ITEM" 
  *   `filterIds` (*type:* `list(String.t)`, *default:* `nil`) - The IDs of the specified filter type. This is used to filter entities to fetch. At least one ID must be specified.
  *   `filterType` (*type:* `String.t`, *default:* `nil`) - Filter type used to filter entities to fetch. PARTNER_ID and INVENTORY_SOURCE_ID may only be used when downloading inventory sources.
  *   `version` (*type:* `String.t`, *default:* `nil`) - SDF Version (column names, types, order) in which the entities will be returned. Default to 5.2.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fileTypes => list(String.t()),
          :filterIds => list(String.t()),
          :filterType => String.t(),
          :version => String.t()
        }

  field(:fileTypes, type: :list)
  field(:filterIds, type: :list)
  field(:filterType)
  field(:version)
end

defimpl Poison.Decoder, for: GoogleApi.DoubleClickBidManager.V1.Model.DownloadRequest do
  def decode(value, options) do
    GoogleApi.DoubleClickBidManager.V1.Model.DownloadRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DoubleClickBidManager.V1.Model.DownloadRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
