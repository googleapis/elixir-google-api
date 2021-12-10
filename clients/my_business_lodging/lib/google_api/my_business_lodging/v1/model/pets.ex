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

defmodule GoogleApi.MyBusinessLodging.V1.Model.Pets do
  @moduledoc """
  Policies regarding guest-owned animals.

  ## Attributes

  *   `catsAllowed` (*type:* `boolean()`, *default:* `nil`) - Cats allowed. Domesticated felines are permitted at the property and allowed to stay in the guest room of their owner. May or may not require a fee.
  *   `catsAllowedException` (*type:* `String.t`, *default:* `nil`) - Cats allowed exception.
  *   `dogsAllowed` (*type:* `boolean()`, *default:* `nil`) - Dogs allowed. Domesticated canines are permitted at the property and allowed to stay in the guest room of their owner. May or may not require a fee.
  *   `dogsAllowedException` (*type:* `String.t`, *default:* `nil`) - Dogs allowed exception.
  *   `petsAllowed` (*type:* `boolean()`, *default:* `nil`) - Pets allowed. Household animals are allowed at the property and in the specific guest room of their owner. May or may not include dogs, cats, reptiles and/or fish. May or may not require a fee. Service animals are not considered to be pets, so not governed by this policy.
  *   `petsAllowedException` (*type:* `String.t`, *default:* `nil`) - Pets allowed exception.
  *   `petsAllowedFree` (*type:* `boolean()`, *default:* `nil`) - Pets allowed free. Household animals are allowed at the property and in the specific guest room of their owner for free. May or may not include dogs, cats, reptiles, and/or fish.
  *   `petsAllowedFreeException` (*type:* `String.t`, *default:* `nil`) - Pets allowed free exception.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :catsAllowed => boolean() | nil,
          :catsAllowedException => String.t() | nil,
          :dogsAllowed => boolean() | nil,
          :dogsAllowedException => String.t() | nil,
          :petsAllowed => boolean() | nil,
          :petsAllowedException => String.t() | nil,
          :petsAllowedFree => boolean() | nil,
          :petsAllowedFreeException => String.t() | nil
        }

  field(:catsAllowed)
  field(:catsAllowedException)
  field(:dogsAllowed)
  field(:dogsAllowedException)
  field(:petsAllowed)
  field(:petsAllowedException)
  field(:petsAllowedFree)
  field(:petsAllowedFreeException)
end

defimpl Poison.Decoder, for: GoogleApi.MyBusinessLodging.V1.Model.Pets do
  def decode(value, options) do
    GoogleApi.MyBusinessLodging.V1.Model.Pets.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MyBusinessLodging.V1.Model.Pets do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
