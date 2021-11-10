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

defmodule GoogleApi.ContainerAnalysis.V1alpha1.Model.InTotoStatement do
  @moduledoc """
  Spec defined at https://github.com/in-toto/attestation/tree/main/spec#statement The serialized InTotoStatement will be stored as Envelope.payload. Envelope.payloadType is always "application/vnd.in-toto+json".

  ## Attributes

  *   `_type` (*type:* `String.t`, *default:* `nil`) - Always "https://in-toto.io/Statement/v0.1".
  *   `predicateType` (*type:* `String.t`, *default:* `nil`) - "https://slsa.dev/provenance/v0.1" for SlsaProvenance.
  *   `provenance` (*type:* `GoogleApi.ContainerAnalysis.V1alpha1.Model.InTotoProvenance.t`, *default:* `nil`) - provenance is a predicate of type intotoprovenance
  *   `slsaProvenance` (*type:* `GoogleApi.ContainerAnalysis.V1alpha1.Model.SlsaProvenance.t`, *default:* `nil`) - slsa_provenance is a predicate of type slsaProvenance
  *   `subject` (*type:* `list(GoogleApi.ContainerAnalysis.V1alpha1.Model.Subject.t)`, *default:* `nil`) - subject is the subjects of the intoto statement
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :_type => String.t() | nil,
          :predicateType => String.t() | nil,
          :provenance => GoogleApi.ContainerAnalysis.V1alpha1.Model.InTotoProvenance.t() | nil,
          :slsaProvenance => GoogleApi.ContainerAnalysis.V1alpha1.Model.SlsaProvenance.t() | nil,
          :subject => list(GoogleApi.ContainerAnalysis.V1alpha1.Model.Subject.t()) | nil
        }

  field(:_type)
  field(:predicateType)
  field(:provenance, as: GoogleApi.ContainerAnalysis.V1alpha1.Model.InTotoProvenance)
  field(:slsaProvenance, as: GoogleApi.ContainerAnalysis.V1alpha1.Model.SlsaProvenance)
  field(:subject, as: GoogleApi.ContainerAnalysis.V1alpha1.Model.Subject, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.ContainerAnalysis.V1alpha1.Model.InTotoStatement do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1alpha1.Model.InTotoStatement.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContainerAnalysis.V1alpha1.Model.InTotoStatement do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
