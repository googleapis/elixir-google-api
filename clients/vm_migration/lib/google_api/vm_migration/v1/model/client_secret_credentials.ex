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

defmodule GoogleApi.VMMigration.V1.Model.ClientSecretCredentials do
  @moduledoc """
  Message describing Azure Credentials using tenant ID, client ID and secret.

  ## Attributes

  *   `clientId` (*type:* `String.t`, *default:* `nil`) - Azure client ID.
  *   `clientSecret` (*type:* `String.t`, *default:* `nil`) - Input only. Azure client secret.
  *   `tenantId` (*type:* `String.t`, *default:* `nil`) - Azure tenant ID.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clientId => String.t() | nil,
          :clientSecret => String.t() | nil,
          :tenantId => String.t() | nil
        }

  field(:clientId)
  field(:clientSecret)
  field(:tenantId)
end

defimpl Poison.Decoder, for: GoogleApi.VMMigration.V1.Model.ClientSecretCredentials do
  def decode(value, options) do
    GoogleApi.VMMigration.V1.Model.ClientSecretCredentials.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.VMMigration.V1.Model.ClientSecretCredentials do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
