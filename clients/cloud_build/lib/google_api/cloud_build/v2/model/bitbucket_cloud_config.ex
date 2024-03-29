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

defmodule GoogleApi.CloudBuild.V2.Model.BitbucketCloudConfig do
  @moduledoc """
  Configuration for connections to Bitbucket Cloud.

  ## Attributes

  *   `authorizerCredential` (*type:* `GoogleApi.CloudBuild.V2.Model.UserCredential.t`, *default:* `nil`) - Required. An access token with the `webhook`, `repository`, `repository:admin` and `pullrequest` scope access. It can be either a workspace, project or repository access token. It's recommended to use a system account to generate these credentials.
  *   `readAuthorizerCredential` (*type:* `GoogleApi.CloudBuild.V2.Model.UserCredential.t`, *default:* `nil`) - Required. An access token with the `repository` access. It can be either a workspace, project or repository access token. It's recommended to use a system account to generate the credentials.
  *   `webhookSecretSecretVersion` (*type:* `String.t`, *default:* `nil`) - Required. SecretManager resource containing the webhook secret used to verify webhook events, formatted as `projects/*/secrets/*/versions/*`.
  *   `workspace` (*type:* `String.t`, *default:* `nil`) - Required. The Bitbucket Cloud Workspace ID to be connected to Google Cloud Platform.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :authorizerCredential => GoogleApi.CloudBuild.V2.Model.UserCredential.t() | nil,
          :readAuthorizerCredential => GoogleApi.CloudBuild.V2.Model.UserCredential.t() | nil,
          :webhookSecretSecretVersion => String.t() | nil,
          :workspace => String.t() | nil
        }

  field(:authorizerCredential, as: GoogleApi.CloudBuild.V2.Model.UserCredential)
  field(:readAuthorizerCredential, as: GoogleApi.CloudBuild.V2.Model.UserCredential)
  field(:webhookSecretSecretVersion)
  field(:workspace)
end

defimpl Poison.Decoder, for: GoogleApi.CloudBuild.V2.Model.BitbucketCloudConfig do
  def decode(value, options) do
    GoogleApi.CloudBuild.V2.Model.BitbucketCloudConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudBuild.V2.Model.BitbucketCloudConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
