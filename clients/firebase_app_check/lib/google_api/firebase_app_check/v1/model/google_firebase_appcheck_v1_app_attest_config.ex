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

defmodule GoogleApi.FirebaseAppCheck.V1.Model.GoogleFirebaseAppcheckV1AppAttestConfig do
  @moduledoc """
  An app's App Attest configuration object. This configuration controls certain properties of the `AppCheckToken` returned by ExchangeAppAttestAttestation and ExchangeAppAttestAssertion, such as its ttl. Note that the Team ID registered with your app is used as part of the validation process. Please register it via the Firebase Console or programmatically via the [Firebase Management Service](https://firebase.google.com/docs/projects/api/reference/rest/v11/projects.iosApps/patch).

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. The relative resource name of the App Attest configuration object, in the format: ``` projects/{project_number}/apps/{app_id}/appAttestConfig ```
  *   `tokenTtl` (*type:* `String.t`, *default:* `nil`) - Specifies the duration for which App Check tokens exchanged from App Attest artifacts will be valid. If unset, a default value of 1 hour is assumed. Must be between 30 minutes and 7 days, inclusive.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :tokenTtl => String.t() | nil
        }

  field(:name)
  field(:tokenTtl)
end

defimpl Poison.Decoder,
  for: GoogleApi.FirebaseAppCheck.V1.Model.GoogleFirebaseAppcheckV1AppAttestConfig do
  def decode(value, options) do
    GoogleApi.FirebaseAppCheck.V1.Model.GoogleFirebaseAppcheckV1AppAttestConfig.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.FirebaseAppCheck.V1.Model.GoogleFirebaseAppcheckV1AppAttestConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
