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

defmodule GoogleApi.ContainerAnalysis.V1alpha1.Model.InTotoSlsaProvenanceV1 do
  @moduledoc """


  ## Attributes

  *   `_type` (*type:* `String.t`, *default:* `nil`) - InToto spec defined at https://github.com/in-toto/attestation/tree/main/spec#statement
  *   `predicate` (*type:* `GoogleApi.ContainerAnalysis.V1alpha1.Model.SlsaProvenanceV1.t`, *default:* `nil`) - 
  *   `predicateType` (*type:* `String.t`, *default:* `nil`) - 
  *   `subject` (*type:* `list(GoogleApi.ContainerAnalysis.V1alpha1.Model.Subject.t)`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :_type => String.t() | nil,
          :predicate => GoogleApi.ContainerAnalysis.V1alpha1.Model.SlsaProvenanceV1.t() | nil,
          :predicateType => String.t() | nil,
          :subject => list(GoogleApi.ContainerAnalysis.V1alpha1.Model.Subject.t()) | nil
        }

  field(:_type)
  field(:predicate, as: GoogleApi.ContainerAnalysis.V1alpha1.Model.SlsaProvenanceV1)
  field(:predicateType)
  field(:subject, as: GoogleApi.ContainerAnalysis.V1alpha1.Model.Subject, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.ContainerAnalysis.V1alpha1.Model.InTotoSlsaProvenanceV1 do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1alpha1.Model.InTotoSlsaProvenanceV1.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContainerAnalysis.V1alpha1.Model.InTotoSlsaProvenanceV1 do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
