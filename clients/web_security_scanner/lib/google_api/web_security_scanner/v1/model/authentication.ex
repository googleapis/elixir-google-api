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

defmodule GoogleApi.WebSecurityScanner.V1.Model.Authentication do
  @moduledoc """
  Scan authentication configuration.

  ## Attributes

  *   `customAccount` (*type:* `GoogleApi.WebSecurityScanner.V1.Model.CustomAccount.t`, *default:* `nil`) - Authentication using a custom account.
  *   `googleAccount` (*type:* `GoogleApi.WebSecurityScanner.V1.Model.GoogleAccount.t`, *default:* `nil`) - Authentication using a Google account.
  *   `iapCredential` (*type:* `GoogleApi.WebSecurityScanner.V1.Model.IapCredential.t`, *default:* `nil`) - Authentication using Identity-Aware-Proxy (IAP).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :customAccount => GoogleApi.WebSecurityScanner.V1.Model.CustomAccount.t(),
          :googleAccount => GoogleApi.WebSecurityScanner.V1.Model.GoogleAccount.t(),
          :iapCredential => GoogleApi.WebSecurityScanner.V1.Model.IapCredential.t()
        }

  field(:customAccount, as: GoogleApi.WebSecurityScanner.V1.Model.CustomAccount)
  field(:googleAccount, as: GoogleApi.WebSecurityScanner.V1.Model.GoogleAccount)
  field(:iapCredential, as: GoogleApi.WebSecurityScanner.V1.Model.IapCredential)
end

defimpl Poison.Decoder, for: GoogleApi.WebSecurityScanner.V1.Model.Authentication do
  def decode(value, options) do
    GoogleApi.WebSecurityScanner.V1.Model.Authentication.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WebSecurityScanner.V1.Model.Authentication do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
