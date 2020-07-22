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

defmodule GoogleApi.People.V1.Model.Address do
  @moduledoc """
  A person's physical address. May be a P.O. box or street address. All fields are optional.

  ## Attributes

  *   `city` (*type:* `String.t`, *default:* `nil`) - The city of the address.
  *   `country` (*type:* `String.t`, *default:* `nil`) - The country of the address.
  *   `countryCode` (*type:* `String.t`, *default:* `nil`) - The [ISO 3166-1 alpha-2](http://www.iso.org/iso/country_codes.htm) country code of the address.
  *   `extendedAddress` (*type:* `String.t`, *default:* `nil`) - The extended address of the address; for example, the apartment number.
  *   `formattedType` (*type:* `String.t`, *default:* `nil`) - Output only. The type of the address translated and formatted in the viewer's account locale or the `Accept-Language` HTTP header locale.
  *   `formattedValue` (*type:* `String.t`, *default:* `nil`) - The unstructured value of the address. If this is not set by the user it will be automatically constructed from structured values.
  *   `metadata` (*type:* `GoogleApi.People.V1.Model.FieldMetadata.t`, *default:* `nil`) - Metadata about the address.
  *   `poBox` (*type:* `String.t`, *default:* `nil`) - The P.O. box of the address.
  *   `postalCode` (*type:* `String.t`, *default:* `nil`) - The postal code of the address.
  *   `region` (*type:* `String.t`, *default:* `nil`) - The region of the address; for example, the state or province.
  *   `streetAddress` (*type:* `String.t`, *default:* `nil`) - The street address.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of the address. The type can be custom or one of these predefined values: * `home` * `work` * `other`
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :city => String.t(),
          :country => String.t(),
          :countryCode => String.t(),
          :extendedAddress => String.t(),
          :formattedType => String.t(),
          :formattedValue => String.t(),
          :metadata => GoogleApi.People.V1.Model.FieldMetadata.t(),
          :poBox => String.t(),
          :postalCode => String.t(),
          :region => String.t(),
          :streetAddress => String.t(),
          :type => String.t()
        }

  field(:city)
  field(:country)
  field(:countryCode)
  field(:extendedAddress)
  field(:formattedType)
  field(:formattedValue)
  field(:metadata, as: GoogleApi.People.V1.Model.FieldMetadata)
  field(:poBox)
  field(:postalCode)
  field(:region)
  field(:streetAddress)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.People.V1.Model.Address do
  def decode(value, options) do
    GoogleApi.People.V1.Model.Address.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.People.V1.Model.Address do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
