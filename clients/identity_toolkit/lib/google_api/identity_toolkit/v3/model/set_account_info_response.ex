# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.IdentityToolkit.V3.Model.SetAccountInfoResponse do
  @moduledoc """
  Respone of setting the account information.

  ## Attributes

  - displayName (String.t): The name of the user. Defaults to: `null`.
  - email (String.t): The email of the user. Defaults to: `null`.
  - emailVerified (boolean()): If email has been verified. Defaults to: `null`.
  - expiresIn (String.t): If idToken is STS id token, then this field will be expiration time of STS id token in seconds. Defaults to: `null`.
  - idToken (String.t): The Gitkit id token to login the newly sign up user. Defaults to: `null`.
  - kind (String.t): The fixed string \&quot;identitytoolkit#SetAccountInfoResponse\&quot;. Defaults to: `null`.
  - localId (String.t): The local ID of the user. Defaults to: `null`.
  - newEmail (String.t): The new email the user attempts to change to. Defaults to: `null`.
  - passwordHash (binary()): The user&#39;s hashed password. Defaults to: `null`.
  - photoUrl (String.t): The photo url of the user. Defaults to: `null`.
  - providerUserInfo ([SetAccountInfoResponseProviderUserInfo]): The user&#39;s profiles at the associated IdPs. Defaults to: `null`.
  - refreshToken (String.t): If idToken is STS id token, then this field will be refresh token. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => any(),
          :email => any(),
          :emailVerified => any(),
          :expiresIn => any(),
          :idToken => any(),
          :kind => any(),
          :localId => any(),
          :newEmail => any(),
          :passwordHash => any(),
          :photoUrl => any(),
          :providerUserInfo =>
            list(GoogleApi.IdentityToolkit.V3.Model.SetAccountInfoResponseProviderUserInfo.t()),
          :refreshToken => any()
        }

  field(:displayName)
  field(:email)
  field(:emailVerified)
  field(:expiresIn)
  field(:idToken)
  field(:kind)
  field(:localId)
  field(:newEmail)
  field(:passwordHash)
  field(:photoUrl)

  field(:providerUserInfo,
    as: GoogleApi.IdentityToolkit.V3.Model.SetAccountInfoResponseProviderUserInfo,
    type: :list
  )

  field(:refreshToken)
end

defimpl Poison.Decoder, for: GoogleApi.IdentityToolkit.V3.Model.SetAccountInfoResponse do
  def decode(value, options) do
    GoogleApi.IdentityToolkit.V3.Model.SetAccountInfoResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.IdentityToolkit.V3.Model.SetAccountInfoResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
