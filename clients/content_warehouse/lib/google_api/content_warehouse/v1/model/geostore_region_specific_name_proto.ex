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

defmodule GoogleApi.ContentWarehouse.V1.Model.GeostoreRegionSpecificNameProto do
  @moduledoc """
  This protocol buffer supports a name per region per language, allowing it to represent the name of a given feature in different regions and languages. For example, the Persian Gulf has different English names in UAE versus Lebanon; each would need to be represented as distinct RegionSpecificNameProtos.

  ## Attributes

  *   `displayableAsAlternativeName` (*type:* `boolean()`, *default:* `nil`) - If true, this region specific name should be appended, in parentheses, to the appropriate name from FeatureProto.name, for the default rest of world behavior.
  *   `name` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostoreNameProto.t`, *default:* `nil`) - Name to be used for this feature in a specific region and language.
  *   `regionCode` (*type:* `String.t`, *default:* `nil`) - Region code (or other identifier) for the region.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayableAsAlternativeName => boolean() | nil,
          :name => GoogleApi.ContentWarehouse.V1.Model.GeostoreNameProto.t() | nil,
          :regionCode => String.t() | nil
        }

  field(:displayableAsAlternativeName)
  field(:name, as: GoogleApi.ContentWarehouse.V1.Model.GeostoreNameProto)
  field(:regionCode)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreRegionSpecificNameProto do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GeostoreRegionSpecificNameProto.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreRegionSpecificNameProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
