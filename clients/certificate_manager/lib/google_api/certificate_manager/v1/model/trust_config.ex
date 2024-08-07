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

defmodule GoogleApi.CertificateManager.V1.Model.TrustConfig do
  @moduledoc """
  Defines a trust config.

  ## Attributes

  *   `allowlistedCertificates` (*type:* `list(GoogleApi.CertificateManager.V1.Model.AllowlistedCertificate.t)`, *default:* `nil`) - Optional. A certificate matching an allowlisted certificate is always considered valid as long as the certificate is parseable, proof of private key possession is established, and constraints on the certificate's SAN field are met.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The creation timestamp of a TrustConfig.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. One or more paragraphs of text description of a TrustConfig.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. Set of labels associated with a TrustConfig.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Identifier. A user-defined name of the trust config. TrustConfig names must be unique globally and match pattern `projects/*/locations/*/trustConfigs/*`.
  *   `trustStores` (*type:* `list(GoogleApi.CertificateManager.V1.Model.TrustStore.t)`, *default:* `nil`) - Optional. Set of trust stores to perform validation against. This field is supported when TrustConfig is configured with Load Balancers, currently not supported for SPIFFE certificate validation. Only one TrustStore specified is currently allowed.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The last update timestamp of a TrustConfig.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowlistedCertificates =>
            list(GoogleApi.CertificateManager.V1.Model.AllowlistedCertificate.t()) | nil,
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :etag => String.t() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :trustStores => list(GoogleApi.CertificateManager.V1.Model.TrustStore.t()) | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:allowlistedCertificates,
    as: GoogleApi.CertificateManager.V1.Model.AllowlistedCertificate,
    type: :list
  )

  field(:createTime, as: DateTime)
  field(:description)
  field(:etag)
  field(:labels, type: :map)
  field(:name)
  field(:trustStores, as: GoogleApi.CertificateManager.V1.Model.TrustStore, type: :list)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.CertificateManager.V1.Model.TrustConfig do
  def decode(value, options) do
    GoogleApi.CertificateManager.V1.Model.TrustConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CertificateManager.V1.Model.TrustConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
