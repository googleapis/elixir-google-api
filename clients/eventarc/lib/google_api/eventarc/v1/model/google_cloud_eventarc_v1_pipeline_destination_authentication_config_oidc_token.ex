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

defmodule GoogleApi.Eventarc.V1.Model.GoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOidcToken do
  @moduledoc """
  Represents a config used to authenticate with a Google OIDC token using a GCP service account. Use this authentication method to invoke your Cloud Run and Cloud Functions destinations or HTTP endpoints that support Google OIDC.

  ## Attributes

  *   `audience` (*type:* `String.t`, *default:* `nil`) - Optional. Audience to be used to generate the OIDC Token. The audience claim identifies the recipient that the JWT is intended for. If unspecified, the destination URI will be used.
  *   `serviceAccount` (*type:* `String.t`, *default:* `nil`) - Required. Service account email used to generate the OIDC Token. The principal who calls this API must have iam.serviceAccounts.actAs permission in the service account. See https://cloud.google.com/iam/docs/understanding-service-accounts for more information. Eventarc service agents must have roles/roles/iam.serviceAccountTokenCreator role to allow the Pipeline to create OpenID tokens for authenticated requests.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :audience => String.t() | nil,
          :serviceAccount => String.t() | nil
        }

  field(:audience)
  field(:serviceAccount)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.Eventarc.V1.Model.GoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOidcToken do
  def decode(value, options) do
    GoogleApi.Eventarc.V1.Model.GoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOidcToken.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.Eventarc.V1.Model.GoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOidcToken do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
