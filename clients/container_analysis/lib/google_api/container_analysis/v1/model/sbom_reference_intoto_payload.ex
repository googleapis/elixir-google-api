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

defmodule GoogleApi.ContainerAnalysis.V1.Model.SbomReferenceIntotoPayload do
  @moduledoc """
  The actual payload that contains the SBOM Reference data. The payload follows the intoto statement specification. See https://github.com/in-toto/attestation/blob/main/spec/v1.0/statement.md for more details.

  ## Attributes

  *   `_type` (*type:* `String.t`, *default:* `nil`) - Identifier for the schema of the Statement.
  *   `predicate` (*type:* `GoogleApi.ContainerAnalysis.V1.Model.SbomReferenceIntotoPredicate.t`, *default:* `nil`) - Additional parameters of the Predicate. Includes the actual data about the SBOM.
  *   `predicateType` (*type:* `String.t`, *default:* `nil`) - URI identifying the type of the Predicate.
  *   `subject` (*type:* `list(GoogleApi.ContainerAnalysis.V1.Model.Subject.t)`, *default:* `nil`) - Set of software artifacts that the attestation applies to. Each element represents a single software artifact.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :_type => String.t() | nil,
          :predicate =>
            GoogleApi.ContainerAnalysis.V1.Model.SbomReferenceIntotoPredicate.t() | nil,
          :predicateType => String.t() | nil,
          :subject => list(GoogleApi.ContainerAnalysis.V1.Model.Subject.t()) | nil
        }

  field(:_type)
  field(:predicate, as: GoogleApi.ContainerAnalysis.V1.Model.SbomReferenceIntotoPredicate)
  field(:predicateType)
  field(:subject, as: GoogleApi.ContainerAnalysis.V1.Model.Subject, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.ContainerAnalysis.V1.Model.SbomReferenceIntotoPayload do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1.Model.SbomReferenceIntotoPayload.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContainerAnalysis.V1.Model.SbomReferenceIntotoPayload do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
