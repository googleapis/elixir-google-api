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

defmodule GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaCertificate do
  @moduledoc """
  The certificate definition

  ## Attributes

  *   `certificateStatus` (*type:* `String.t`, *default:* `nil`) - Status of the certificate
  *   `credentialId` (*type:* `String.t`, *default:* `nil`) - Immutable. Credential id that will be used to register with trawler
  *   `description` (*type:* `String.t`, *default:* `nil`) - Description of the certificate
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. Name of the certificate
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Auto generated primary key
  *   `rawCertificate` (*type:* `GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaClientCertificate.t`, *default:* `nil`) - Input only. Raw client certificate which would be registered with trawler
  *   `requestorId` (*type:* `String.t`, *default:* `nil`) - Immutable. Requestor ID to be used to register certificate with trawler
  *   `validEndTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp after which certificate will expire
  *   `validStartTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp after which certificate will be valid
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :certificateStatus => String.t() | nil,
          :credentialId => String.t() | nil,
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :name => String.t() | nil,
          :rawCertificate =>
            GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaClientCertificate.t()
            | nil,
          :requestorId => String.t() | nil,
          :validEndTime => DateTime.t() | nil,
          :validStartTime => DateTime.t() | nil
        }

  field(:certificateStatus)
  field(:credentialId)
  field(:description)
  field(:displayName)
  field(:name)

  field(:rawCertificate,
    as: GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaClientCertificate
  )

  field(:requestorId)
  field(:validEndTime, as: DateTime)
  field(:validStartTime, as: DateTime)
end

defimpl Poison.Decoder,
  for: GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaCertificate do
  def decode(value, options) do
    GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaCertificate.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaCertificate do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
