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

defmodule GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefCompactFlatPropertyValue do
  @moduledoc """
  Flattened version of possibly nested compound values. This means that the `value` in here is *never* a `compound_value` and all predicate MIDs on the nested path are collapsed into the repeated `predicate_encoded_mid` field. When `predicate_encoded_mid` contains only one predicate, this is equivalent to a CompactKgPropertyValue.

  ## Attributes

  *   `predicateEncodedMid` (*type:* `list(String.t)`, *default:* `nil`) - 
  *   `propertyName` (*type:* `String.t`, *default:* `nil`) - The property corresponding to predicte_encoded_mid above. This is populated in some non-serving tables.
  *   `value` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefCompactKgValue.t)`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :predicateEncodedMid => list(String.t()) | nil,
          :propertyName => String.t() | nil,
          :value =>
            list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefCompactKgValue.t()) | nil
        }

  field(:predicateEncodedMid, type: :list)
  field(:propertyName)

  field(:value,
    as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefCompactKgValue,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefCompactFlatPropertyValue do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefCompactFlatPropertyValue.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefCompactFlatPropertyValue do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
