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

defmodule GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchSourceUrlDocjoinInfoWebrefEntityInfo do
  @moduledoc """
  The mid and description of a WebRefEntity.

  ## Attributes

  *   `deprecatedEntityType` (*type:* `String.t`, *default:* `nil`) - DEPRECATED. See entity_type instead.
  *   `description` (*type:* `String.t`, *default:* `nil`) - The English description of the mid from the KG.
  *   `entityCollectionType` (*type:* `list(String.t)`, *default:* `nil`) - 
  *   `kgCollection` (*type:* `list(String.t)`, *default:* `nil`) - HRID of the KG collections
  *   `mid` (*type:* `String.t`, *default:* `nil`) - The KG identifier of the WebrefEntity.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deprecatedEntityType => String.t() | nil,
          :description => String.t() | nil,
          :entityCollectionType => list(String.t()) | nil,
          :kgCollection => list(String.t()) | nil,
          :mid => String.t() | nil
        }

  field(:deprecatedEntityType)
  field(:description)
  field(:entityCollectionType, type: :list)
  field(:kgCollection, type: :list)
  field(:mid)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchSourceUrlDocjoinInfoWebrefEntityInfo do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchSourceUrlDocjoinInfoWebrefEntityInfo.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchSourceUrlDocjoinInfoWebrefEntityInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
