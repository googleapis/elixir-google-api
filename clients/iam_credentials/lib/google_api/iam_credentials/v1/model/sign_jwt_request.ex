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

defmodule GoogleApi.IAMCredentials.V1.Model.SignJwtRequest do
  @moduledoc """


  ## Attributes

  *   `delegates` (*type:* `list(String.t)`, *default:* `nil`) - The sequence of service accounts in a delegation chain. Each service
      account must be granted the `roles/iam.serviceAccountTokenCreator` role
      on its next service account in the chain. The last service account in the
      chain must be granted the `roles/iam.serviceAccountTokenCreator` role
      on the service account that is specified in the `name` field of the
      request.

      The delegates must have the following format:
      `projects/-/serviceAccounts/{ACCOUNT_EMAIL_OR_UNIQUEID}`. The `-` wildcard
      character is required; replacing it with a project ID is invalid.
  *   `payload` (*type:* `String.t`, *default:* `nil`) - Required. The JWT payload to sign. Must be a serialized JSON object that contains a
      JWT Claim Set. For example: `{"sub": "user@example.com", "iat": 313435}`

      If the claim set contains an `exp` claim, it must be an integer timestamp
      that is not in the past and at most 12 hours in the future.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :delegates => list(String.t()),
          :payload => String.t()
        }

  field(:delegates, type: :list)
  field(:payload)
end

defimpl Poison.Decoder, for: GoogleApi.IAMCredentials.V1.Model.SignJwtRequest do
  def decode(value, options) do
    GoogleApi.IAMCredentials.V1.Model.SignJwtRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.IAMCredentials.V1.Model.SignJwtRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
