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

defmodule GoogleApi.ServiceControl.V1.Model.AuthenticationInfo do
  @moduledoc """
  Authentication information for the operation.

  ## Attributes

  *   `authoritySelector` (*type:* `String.t`, *default:* `nil`) - The authority selector specified by the requestor, if any. It is not guaranteed that the principal was allowed to use this authority.
  *   `principalEmail` (*type:* `String.t`, *default:* `nil`) - The email address of the authenticated user (or service account on behalf of third party principal) making the request. For third party identity callers, the `principal_subject` field is populated instead of this field. For privacy reasons, the principal email address is sometimes redacted. For more information, see [Caller identities in audit logs](https://cloud.google.com/logging/docs/audit#user-id).
  *   `principalSubject` (*type:* `String.t`, *default:* `nil`) - String representation of identity of requesting party. Populated for both first and third party identities.
  *   `serviceAccountDelegationInfo` (*type:* `list(GoogleApi.ServiceControl.V1.Model.ServiceAccountDelegationInfo.t)`, *default:* `nil`) - Identity delegation history of an authenticated service account that makes the request. It contains information on the real authorities that try to access GCP resources by delegating on a service account. When multiple authorities present, they are guaranteed to be sorted based on the original ordering of the identity delegation events.
  *   `serviceAccountKeyName` (*type:* `String.t`, *default:* `nil`) - The name of the service account key used to create or exchange credentials for authenticating the service account making the request. This is a scheme-less URI full resource name. For example: "//iam.googleapis.com/projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}/keys/{key}"
  *   `serviceDelegationHistory` (*type:* `GoogleApi.ServiceControl.V1.Model.ServiceDelegationHistory.t`, *default:* `nil`) - Records the history of delegated resource access across Google services.
  *   `thirdPartyPrincipal` (*type:* `map()`, *default:* `nil`) - The third party identification (if any) of the authenticated user making the request. When the JSON object represented here has a proto equivalent, the proto name will be indicated in the `@type` property.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :authoritySelector => String.t() | nil,
          :principalEmail => String.t() | nil,
          :principalSubject => String.t() | nil,
          :serviceAccountDelegationInfo =>
            list(GoogleApi.ServiceControl.V1.Model.ServiceAccountDelegationInfo.t()) | nil,
          :serviceAccountKeyName => String.t() | nil,
          :serviceDelegationHistory =>
            GoogleApi.ServiceControl.V1.Model.ServiceDelegationHistory.t() | nil,
          :thirdPartyPrincipal => map() | nil
        }

  field(:authoritySelector)
  field(:principalEmail)
  field(:principalSubject)

  field(:serviceAccountDelegationInfo,
    as: GoogleApi.ServiceControl.V1.Model.ServiceAccountDelegationInfo,
    type: :list
  )

  field(:serviceAccountKeyName)
  field(:serviceDelegationHistory, as: GoogleApi.ServiceControl.V1.Model.ServiceDelegationHistory)
  field(:thirdPartyPrincipal, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceControl.V1.Model.AuthenticationInfo do
  def decode(value, options) do
    GoogleApi.ServiceControl.V1.Model.AuthenticationInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceControl.V1.Model.AuthenticationInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
