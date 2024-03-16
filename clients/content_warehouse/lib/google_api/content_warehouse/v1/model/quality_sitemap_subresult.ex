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

defmodule GoogleApi.ContentWarehouse.V1.Model.QualitySitemapSubresult do
  @moduledoc """
  Information about a single sub-result.

  ## Attributes

  *   `docid` (*type:* `String.t`, *default:* `nil`) - 
  *   `itemMetadata` (*type:* `GoogleApi.ContentWarehouse.V1.Model.QualitySitemapThirdPartyCarouselsListItemMuppetMetadata.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :docid => String.t() | nil,
          :itemMetadata =>
            GoogleApi.ContentWarehouse.V1.Model.QualitySitemapThirdPartyCarouselsListItemMuppetMetadata.t()
            | nil
        }

  field(:docid)

  field(:itemMetadata,
    as:
      GoogleApi.ContentWarehouse.V1.Model.QualitySitemapThirdPartyCarouselsListItemMuppetMetadata
  )
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.QualitySitemapSubresult do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.QualitySitemapSubresult.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.QualitySitemapSubresult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end