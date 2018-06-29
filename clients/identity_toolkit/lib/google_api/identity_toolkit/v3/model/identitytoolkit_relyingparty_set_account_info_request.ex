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

defmodule GoogleApi.IdentityToolkit.V3.Model.IdentitytoolkitRelyingpartySetAccountInfoRequest do
  @moduledoc """
  Request to set the account information.

  ## Attributes

  - captchaChallenge (String.t): The captcha challenge. Defaults to: `null`.
  - captchaResponse (String.t): Response to the captcha. Defaults to: `null`.
  - createdAt (String.t): The timestamp when the account is created. Defaults to: `null`.
  - customAttributes (String.t): The custom attributes to be set in the user&#39;s id token. Defaults to: `null`.
  - delegatedProjectNumber (String.t): GCP project number of the requesting delegated app. Currently only intended for Firebase V1 migration. Defaults to: `null`.
  - deleteAttribute ([String.t]): The attributes users request to delete. Defaults to: `null`.
  - deleteProvider ([String.t]): The IDPs the user request to delete. Defaults to: `null`.
  - disableUser (boolean()): Whether to disable the user. Defaults to: `null`.
  - displayName (String.t): The name of the user. Defaults to: `null`.
  - email (String.t): The email of the user. Defaults to: `null`.
  - emailVerified (boolean()): Mark the email as verified or not. Defaults to: `null`.
  - idToken (String.t): The GITKit token of the authenticated user. Defaults to: `null`.
  - instanceId (String.t): Instance id token of the app. Defaults to: `null`.
  - lastLoginAt (String.t): Last login timestamp. Defaults to: `null`.
  - localId (String.t): The local ID of the user. Defaults to: `null`.
  - oobCode (String.t): The out-of-band code of the change email request. Defaults to: `null`.
  - password (String.t): The new password of the user. Defaults to: `null`.
  - phoneNumber (String.t): Privileged caller can update user with specified phone number. Defaults to: `null`.
  - photoUrl (String.t): The photo url of the user. Defaults to: `null`.
  - provider ([String.t]): The associated IDPs of the user. Defaults to: `null`.
  - returnSecureToken (boolean()): Whether return sts id token and refresh token instead of gitkit token. Defaults to: `null`.
  - upgradeToFederatedLogin (boolean()): Mark the user to upgrade to federated login. Defaults to: `null`.
  - validSince (String.t): Timestamp in seconds for valid login token. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :captchaChallenge => any(),
          :captchaResponse => any(),
          :createdAt => any(),
          :customAttributes => any(),
          :delegatedProjectNumber => any(),
          :deleteAttribute => list(any()),
          :deleteProvider => list(any()),
          :disableUser => any(),
          :displayName => any(),
          :email => any(),
          :emailVerified => any(),
          :idToken => any(),
          :instanceId => any(),
          :lastLoginAt => any(),
          :localId => any(),
          :oobCode => any(),
          :password => any(),
          :phoneNumber => any(),
          :photoUrl => any(),
          :provider => list(any()),
          :returnSecureToken => any(),
          :upgradeToFederatedLogin => any(),
          :validSince => any()
        }

  field(:captchaChallenge)
  field(:captchaResponse)
  field(:createdAt)
  field(:customAttributes)
  field(:delegatedProjectNumber)
  field(:deleteAttribute, type: :list)
  field(:deleteProvider, type: :list)
  field(:disableUser)
  field(:displayName)
  field(:email)
  field(:emailVerified)
  field(:idToken)
  field(:instanceId)
  field(:lastLoginAt)
  field(:localId)
  field(:oobCode)
  field(:password)
  field(:phoneNumber)
  field(:photoUrl)
  field(:provider, type: :list)
  field(:returnSecureToken)
  field(:upgradeToFederatedLogin)
  field(:validSince)
end

defimpl Poison.Decoder,
  for: GoogleApi.IdentityToolkit.V3.Model.IdentitytoolkitRelyingpartySetAccountInfoRequest do
  def decode(value, options) do
    GoogleApi.IdentityToolkit.V3.Model.IdentitytoolkitRelyingpartySetAccountInfoRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.IdentityToolkit.V3.Model.IdentitytoolkitRelyingpartySetAccountInfoRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
