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

defmodule GoogleApi.IAM.V1.Model.InlineCertificateIssuanceConfig do
  @moduledoc """
  Represents configuration for generating mutual TLS (mTLS) certificates for the identities within this pool.

  ## Attributes

  *   `caPools` (*type:* `map()`, *default:* `nil`) - Optional. A required mapping of a cloud region to the CA pool resource located in that region used for certificate issuance, adhering to these constraints: * Key format: A supported cloud region name equivalent to the location identifier in the corresponding map entry's value. * Value format: A valid CA pool resource path format like: "projects/{project}/locations/{location}/caPools/{ca_pool}" * Region Matching: Workloads are ONLY issued certificates from CA pools within the same region. Also the CA pool region (in value) must match the workload's region (key).
  *   `keyAlgorithm` (*type:* `String.t`, *default:* `nil`) - Optional. Key algorithm to use when generating the key pair. This key pair will be used to create the certificate. If unspecified, this will default to ECDSA_P256.
  *   `lifetime` (*type:* `String.t`, *default:* `nil`) - Optional. Lifetime of the workload certificates issued by the CA pool. Must be between 10 hours - 30 days. If unspecified, this will be defaulted to 24 hours.
  *   `rotationWindowPercentage` (*type:* `integer()`, *default:* `nil`) - Optional. Rotation window percentage indicating when certificate rotation should be initiated based on remaining lifetime. Must be between 10 - 80. If unspecified, this will be defaulted to 50.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :caPools => map() | nil,
          :keyAlgorithm => String.t() | nil,
          :lifetime => String.t() | nil,
          :rotationWindowPercentage => integer() | nil
        }

  field(:caPools, type: :map)
  field(:keyAlgorithm)
  field(:lifetime)
  field(:rotationWindowPercentage)
end

defimpl Poison.Decoder, for: GoogleApi.IAM.V1.Model.InlineCertificateIssuanceConfig do
  def decode(value, options) do
    GoogleApi.IAM.V1.Model.InlineCertificateIssuanceConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.IAM.V1.Model.InlineCertificateIssuanceConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
