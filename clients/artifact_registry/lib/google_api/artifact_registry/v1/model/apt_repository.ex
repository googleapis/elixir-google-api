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

defmodule GoogleApi.ArtifactRegistry.V1.Model.AptRepository do
  @moduledoc """
  Configuration for an Apt remote repository.

  ## Attributes

  *   `customRepository` (*type:* `GoogleApi.ArtifactRegistry.V1.Model.GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigAptRepositoryCustomRepository.t`, *default:* `nil`) - Customer-specified remote repository.
  *   `publicRepository` (*type:* `GoogleApi.ArtifactRegistry.V1.Model.GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigAptRepositoryPublicRepository.t`, *default:* `nil`) - One of the publicly available Apt repositories supported by Artifact Registry.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :customRepository =>
            GoogleApi.ArtifactRegistry.V1.Model.GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigAptRepositoryCustomRepository.t()
            | nil,
          :publicRepository =>
            GoogleApi.ArtifactRegistry.V1.Model.GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigAptRepositoryPublicRepository.t()
            | nil
        }

  field(:customRepository,
    as:
      GoogleApi.ArtifactRegistry.V1.Model.GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigAptRepositoryCustomRepository
  )

  field(:publicRepository,
    as:
      GoogleApi.ArtifactRegistry.V1.Model.GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigAptRepositoryPublicRepository
  )
end

defimpl Poison.Decoder, for: GoogleApi.ArtifactRegistry.V1.Model.AptRepository do
  def decode(value, options) do
    GoogleApi.ArtifactRegistry.V1.Model.AptRepository.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ArtifactRegistry.V1.Model.AptRepository do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
