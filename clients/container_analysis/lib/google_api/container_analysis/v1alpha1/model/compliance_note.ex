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

defmodule GoogleApi.ContainerAnalysis.V1alpha1.Model.ComplianceNote do
  @moduledoc """
  ComplianceNote encapsulates all information about a specific compliance check.

  ## Attributes

  *   `cisBenchmark` (*type:* `GoogleApi.ContainerAnalysis.V1alpha1.Model.CisBenchmark.t`, *default:* `nil`) - Right now we only have one compliance type, but we may add additional types in the future.
  *   `description` (*type:* `String.t`, *default:* `nil`) - A description about this compliance check.
  *   `rationale` (*type:* `String.t`, *default:* `nil`) - A rationale for the existence of this compliance check.
  *   `remediation` (*type:* `String.t`, *default:* `nil`) - A description of remediation steps if the compliance check fails.
  *   `scanInstructions` (*type:* `String.t`, *default:* `nil`) - Serialized scan instructions with a predefined format.
  *   `title` (*type:* `String.t`, *default:* `nil`) - The title that identifies this compliance check.
  *   `version` (*type:* `list(GoogleApi.ContainerAnalysis.V1alpha1.Model.ComplianceVersion.t)`, *default:* `nil`) - The OS and config versions the benchmark applies to.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cisBenchmark => GoogleApi.ContainerAnalysis.V1alpha1.Model.CisBenchmark.t() | nil,
          :description => String.t() | nil,
          :rationale => String.t() | nil,
          :remediation => String.t() | nil,
          :scanInstructions => String.t() | nil,
          :title => String.t() | nil,
          :version => list(GoogleApi.ContainerAnalysis.V1alpha1.Model.ComplianceVersion.t()) | nil
        }

  field(:cisBenchmark, as: GoogleApi.ContainerAnalysis.V1alpha1.Model.CisBenchmark)
  field(:description)
  field(:rationale)
  field(:remediation)
  field(:scanInstructions)
  field(:title)
  field(:version, as: GoogleApi.ContainerAnalysis.V1alpha1.Model.ComplianceVersion, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.ContainerAnalysis.V1alpha1.Model.ComplianceNote do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1alpha1.Model.ComplianceNote.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContainerAnalysis.V1alpha1.Model.ComplianceNote do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
