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

defmodule GoogleApi.DeveloperConnect.V1.Model.GitLabEnterpriseConfig do
  @moduledoc """
  Configuration for connections to an instance of GitLab Enterprise.

  ## Attributes

  *   `authorizerCredential` (*type:* `GoogleApi.DeveloperConnect.V1.Model.UserCredential.t`, *default:* `nil`) - Required. A GitLab personal access token with the minimum `api` scope access and a minimum role of `maintainer`. The GitLab Projects visible to this Personal Access Token will control which Projects Developer Connect has access to.
  *   `hostUri` (*type:* `String.t`, *default:* `nil`) - Required. The URI of the GitLab Enterprise host this connection is for.
  *   `readAuthorizerCredential` (*type:* `GoogleApi.DeveloperConnect.V1.Model.UserCredential.t`, *default:* `nil`) - Required. A GitLab personal access token with the minimum `read_api` scope access and a minimum role of `reporter`. The GitLab Projects visible to this Personal Access Token will control which Projects Developer Connect has access to.
  *   `serverVersion` (*type:* `String.t`, *default:* `nil`) - Output only. Version of the GitLab Enterprise server running on the `host_uri`.
  *   `serviceDirectoryConfig` (*type:* `GoogleApi.DeveloperConnect.V1.Model.ServiceDirectoryConfig.t`, *default:* `nil`) - Optional. Configuration for using Service Directory to privately connect to a GitLab Enterprise instance. This should only be set if the GitLab Enterprise server is hosted on-premises and not reachable by public internet. If this field is left empty, calls to the GitLab Enterprise server will be made over the public internet.
  *   `sslCaCertificate` (*type:* `String.t`, *default:* `nil`) - Optional. SSL Certificate Authority certificate to use for requests to GitLab Enterprise instance.
  *   `webhookSecretSecretVersion` (*type:* `String.t`, *default:* `nil`) - Required. Immutable. SecretManager resource containing the webhook secret of a GitLab project, formatted as `projects/*/secrets/*/versions/*`. This is used to validate webhooks.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :authorizerCredential => GoogleApi.DeveloperConnect.V1.Model.UserCredential.t() | nil,
          :hostUri => String.t() | nil,
          :readAuthorizerCredential =>
            GoogleApi.DeveloperConnect.V1.Model.UserCredential.t() | nil,
          :serverVersion => String.t() | nil,
          :serviceDirectoryConfig =>
            GoogleApi.DeveloperConnect.V1.Model.ServiceDirectoryConfig.t() | nil,
          :sslCaCertificate => String.t() | nil,
          :webhookSecretSecretVersion => String.t() | nil
        }

  field(:authorizerCredential, as: GoogleApi.DeveloperConnect.V1.Model.UserCredential)
  field(:hostUri)
  field(:readAuthorizerCredential, as: GoogleApi.DeveloperConnect.V1.Model.UserCredential)
  field(:serverVersion)
  field(:serviceDirectoryConfig, as: GoogleApi.DeveloperConnect.V1.Model.ServiceDirectoryConfig)
  field(:sslCaCertificate)
  field(:webhookSecretSecretVersion)
end

defimpl Poison.Decoder, for: GoogleApi.DeveloperConnect.V1.Model.GitLabEnterpriseConfig do
  def decode(value, options) do
    GoogleApi.DeveloperConnect.V1.Model.GitLabEnterpriseConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DeveloperConnect.V1.Model.GitLabEnterpriseConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
