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

defmodule GoogleApi.Container.V1.Model.MasterAuth do
  @moduledoc """
  The authentication information for accessing the master endpoint. Authentication can be done using HTTP basic auth or using client certificates.

  ## Attributes

  *   `clientCertificate` (*type:* `String.t`, *default:* `nil`) - Output only. Base64-encoded public certificate used by clients to authenticate to the cluster endpoint.
  *   `clientCertificateConfig` (*type:* `GoogleApi.Container.V1.Model.ClientCertificateConfig.t`, *default:* `nil`) - Configuration for client certificate authentication on the cluster. For clusters before v1.12, if no configuration is specified, a client certificate is issued.
  *   `clientKey` (*type:* `String.t`, *default:* `nil`) - Output only. Base64-encoded private key used by clients to authenticate to the cluster endpoint.
  *   `clusterCaCertificate` (*type:* `String.t`, *default:* `nil`) - Output only. Base64-encoded public certificate that is the root of trust for the cluster.
  *   `password` (*type:* `String.t`, *default:* `nil`) - The password to use for HTTP basic authentication to the master endpoint. Because the master endpoint is open to the Internet, you should create a strong password. If a password is provided for cluster creation, username must be non-empty. Warning: basic authentication is deprecated, and will be removed in GKE control plane versions 1.19 and newer. For a list of recommended authentication methods, see: https://cloud.google.com/kubernetes-engine/docs/how-to/api-server-authentication
  *   `username` (*type:* `String.t`, *default:* `nil`) - The username to use for HTTP basic authentication to the master endpoint. For clusters v1.6.0 and later, basic authentication can be disabled by leaving username unspecified (or setting it to the empty string). Warning: basic authentication is deprecated, and will be removed in GKE control plane versions 1.19 and newer. For a list of recommended authentication methods, see: https://cloud.google.com/kubernetes-engine/docs/how-to/api-server-authentication
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clientCertificate => String.t() | nil,
          :clientCertificateConfig =>
            GoogleApi.Container.V1.Model.ClientCertificateConfig.t() | nil,
          :clientKey => String.t() | nil,
          :clusterCaCertificate => String.t() | nil,
          :password => String.t() | nil,
          :username => String.t() | nil
        }

  field(:clientCertificate)
  field(:clientCertificateConfig, as: GoogleApi.Container.V1.Model.ClientCertificateConfig)
  field(:clientKey)
  field(:clusterCaCertificate)
  field(:password)
  field(:username)
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.MasterAuth do
  def decode(value, options) do
    GoogleApi.Container.V1.Model.MasterAuth.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Container.V1.Model.MasterAuth do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
