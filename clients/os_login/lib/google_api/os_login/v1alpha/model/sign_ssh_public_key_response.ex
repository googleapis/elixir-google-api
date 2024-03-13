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

defmodule GoogleApi.OSLogin.V1alpha.Model.SignSshPublicKeyResponse do
  @moduledoc """


  ## Attributes

  *   `signedSshPublicKey` (*type:* `String.t`, *default:* `nil`) - The signed SSH public key to use in the SSH handshake.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :signedSshPublicKey => String.t() | nil
        }

  field(:signedSshPublicKey)
end

defimpl Poison.Decoder, for: GoogleApi.OSLogin.V1alpha.Model.SignSshPublicKeyResponse do
  def decode(value, options) do
    GoogleApi.OSLogin.V1alpha.Model.SignSshPublicKeyResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.OSLogin.V1alpha.Model.SignSshPublicKeyResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end