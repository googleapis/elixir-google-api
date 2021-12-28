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

defmodule GoogleApi.Connectors.V1.Model.Field do
  @moduledoc """
  Metadata of an entity field.

  ## Attributes

  *   `additionalDetails` (*type:* `map()`, *default:* `nil`) - The following map contains fields that are not explicitly mentioned above,this give connectors the flexibility to add new metadata fields.
  *   `dataType` (*type:* `String.t`, *default:* `nil`) - The data type of the Field.
  *   `defaultValue` (*type:* `any()`, *default:* `nil`) - The following field specifies the default value of the Field provided by the external system if a value is not provided.
  *   `description` (*type:* `String.t`, *default:* `nil`) - A brief description of the Field.
  *   `field` (*type:* `String.t`, *default:* `nil`) - Name of the Field.
  *   `key` (*type:* `boolean()`, *default:* `nil`) - The following boolean field specifies if the current Field acts as a primary key or id if the parent is of type entity.
  *   `nullable` (*type:* `boolean()`, *default:* `nil`) - Specifies whether a null value is allowed.
  *   `readonly` (*type:* `boolean()`, *default:* `nil`) - Specifies if the Field is readonly.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :additionalDetails => map() | nil,
          :dataType => String.t() | nil,
          :defaultValue => any() | nil,
          :description => String.t() | nil,
          :field => String.t() | nil,
          :key => boolean() | nil,
          :nullable => boolean() | nil,
          :readonly => boolean() | nil
        }

  field(:additionalDetails, type: :map)
  field(:dataType)
  field(:defaultValue)
  field(:description)
  field(:field)
  field(:key)
  field(:nullable)
  field(:readonly)
end

defimpl Poison.Decoder, for: GoogleApi.Connectors.V1.Model.Field do
  def decode(value, options) do
    GoogleApi.Connectors.V1.Model.Field.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Connectors.V1.Model.Field do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
