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

defmodule GoogleApi.Container.V1.Model.Jwk do
  @moduledoc """
  Jwk is a JSON Web Key as specified in RFC 7517

  ## Attributes

  *   `alg` (*type:* `String.t`, *default:* `nil`) - Algorithm.
  *   `crv` (*type:* `String.t`, *default:* `nil`) - Used for ECDSA keys.
  *   `e` (*type:* `String.t`, *default:* `nil`) - Used for RSA keys.
  *   `kid` (*type:* `String.t`, *default:* `nil`) - Key ID.
  *   `kty` (*type:* `String.t`, *default:* `nil`) - Key Type.
  *   `n` (*type:* `String.t`, *default:* `nil`) - Used for RSA keys.
  *   `use` (*type:* `String.t`, *default:* `nil`) - Permitted uses for the public keys.
  *   `x` (*type:* `String.t`, *default:* `nil`) - Used for ECDSA keys.
  *   `y` (*type:* `String.t`, *default:* `nil`) - Used for ECDSA keys.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :alg => String.t() | nil,
          :crv => String.t() | nil,
          :e => String.t() | nil,
          :kid => String.t() | nil,
          :kty => String.t() | nil,
          :n => String.t() | nil,
          :use => String.t() | nil,
          :x => String.t() | nil,
          :y => String.t() | nil
        }

  field(:alg)
  field(:crv)
  field(:e)
  field(:kid)
  field(:kty)
  field(:n)
  field(:use)
  field(:x)
  field(:y)
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.Jwk do
  def decode(value, options) do
    GoogleApi.Container.V1.Model.Jwk.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Container.V1.Model.Jwk do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
