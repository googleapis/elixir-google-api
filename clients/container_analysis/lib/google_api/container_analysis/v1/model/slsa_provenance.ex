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

defmodule GoogleApi.ContainerAnalysis.V1.Model.SlsaProvenance do
  @moduledoc """


  ## Attributes

  *   `builder` (*type:* `GoogleApi.ContainerAnalysis.V1.Model.SlsaBuilder.t`, *default:* `nil`) - required
  *   `materials` (*type:* `list(GoogleApi.ContainerAnalysis.V1.Model.Material.t)`, *default:* `nil`) - The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on. This is considered to be incomplete unless metadata.completeness.materials is true. Unset or null is equivalent to empty.
  *   `metadata` (*type:* `GoogleApi.ContainerAnalysis.V1.Model.SlsaMetadata.t`, *default:* `nil`) - 
  *   `recipe` (*type:* `GoogleApi.ContainerAnalysis.V1.Model.SlsaRecipe.t`, *default:* `nil`) - Identifies the configuration used for the build. When combined with materials, this SHOULD fully describe the build, such that re-running this recipe results in bit-for-bit identical output (if the build is reproducible). required
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :builder => GoogleApi.ContainerAnalysis.V1.Model.SlsaBuilder.t() | nil,
          :materials => list(GoogleApi.ContainerAnalysis.V1.Model.Material.t()) | nil,
          :metadata => GoogleApi.ContainerAnalysis.V1.Model.SlsaMetadata.t() | nil,
          :recipe => GoogleApi.ContainerAnalysis.V1.Model.SlsaRecipe.t() | nil
        }

  field(:builder, as: GoogleApi.ContainerAnalysis.V1.Model.SlsaBuilder)
  field(:materials, as: GoogleApi.ContainerAnalysis.V1.Model.Material, type: :list)
  field(:metadata, as: GoogleApi.ContainerAnalysis.V1.Model.SlsaMetadata)
  field(:recipe, as: GoogleApi.ContainerAnalysis.V1.Model.SlsaRecipe)
end

defimpl Poison.Decoder, for: GoogleApi.ContainerAnalysis.V1.Model.SlsaProvenance do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1.Model.SlsaProvenance.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContainerAnalysis.V1.Model.SlsaProvenance do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
