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

defmodule GoogleApi.BinaryAuthorization.V1.Model.ValidateAttestationOccurrenceRequest do
  @moduledoc """
  Request message for ValidationHelperV1.ValidateAttestationOccurrence.

  ## Attributes

  *   `attestation` (*type:* `GoogleApi.BinaryAuthorization.V1.Model.AttestationOccurrence.t`, *default:* `nil`) - Required. An AttestationOccurrence to be checked that it can be verified by the `Attestor`. It does not have to be an existing entity in Container Analysis. It must otherwise be a valid `AttestationOccurrence`.
  *   `occurrenceNote` (*type:* `String.t`, *default:* `nil`) - Required. The resource name of the Note to which the containing Occurrence is associated.
  *   `occurrenceResourceUri` (*type:* `String.t`, *default:* `nil`) - Required. The URI of the artifact (e.g. container image) that is the subject of the containing Occurrence.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attestation => GoogleApi.BinaryAuthorization.V1.Model.AttestationOccurrence.t() | nil,
          :occurrenceNote => String.t() | nil,
          :occurrenceResourceUri => String.t() | nil
        }

  field(:attestation, as: GoogleApi.BinaryAuthorization.V1.Model.AttestationOccurrence)
  field(:occurrenceNote)
  field(:occurrenceResourceUri)
end

defimpl Poison.Decoder,
  for: GoogleApi.BinaryAuthorization.V1.Model.ValidateAttestationOccurrenceRequest do
  def decode(value, options) do
    GoogleApi.BinaryAuthorization.V1.Model.ValidateAttestationOccurrenceRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.BinaryAuthorization.V1.Model.ValidateAttestationOccurrenceRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
