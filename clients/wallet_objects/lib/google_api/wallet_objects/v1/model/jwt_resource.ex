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

defmodule GoogleApi.WalletObjects.V1.Model.JwtResource do
  @moduledoc """


  ## Attributes

  *   `jwt` (*type:* `String.t`, *default:* `nil`) - A string representing a JWT of the format described at https://developers.google.com/wallet/reference/rest/v1/Jwt
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :jwt => String.t() | nil
        }

  field(:jwt)
end

defimpl Poison.Decoder, for: GoogleApi.WalletObjects.V1.Model.JwtResource do
  def decode(value, options) do
    GoogleApi.WalletObjects.V1.Model.JwtResource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WalletObjects.V1.Model.JwtResource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
