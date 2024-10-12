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

defmodule GoogleApi.ArtifactRegistry.V1.Model.RemoteRepositoryConfig do
  @moduledoc """
  Remote repository configuration.

  ## Attributes

  *   `aptRepository` (*type:* `GoogleApi.ArtifactRegistry.V1.Model.AptRepository.t`, *default:* `nil`) - Specific settings for an Apt remote repository.
  *   `commonRepository` (*type:* `GoogleApi.ArtifactRegistry.V1.Model.CommonRemoteRepository.t`, *default:* `nil`) - Common remote repository settings. Used as the remote repository upstream URL.
  *   `description` (*type:* `String.t`, *default:* `nil`) - The description of the remote source.
  *   `disableUpstreamValidation` (*type:* `boolean()`, *default:* `nil`) - Input only. A create/update remote repo option to avoid making a HEAD/GET request to validate a remote repo and any supplied upstream credentials.
  *   `dockerRepository` (*type:* `GoogleApi.ArtifactRegistry.V1.Model.DockerRepository.t`, *default:* `nil`) - Specific settings for a Docker remote repository.
  *   `mavenRepository` (*type:* `GoogleApi.ArtifactRegistry.V1.Model.MavenRepository.t`, *default:* `nil`) - Specific settings for a Maven remote repository.
  *   `npmRepository` (*type:* `GoogleApi.ArtifactRegistry.V1.Model.NpmRepository.t`, *default:* `nil`) - Specific settings for an Npm remote repository.
  *   `pythonRepository` (*type:* `GoogleApi.ArtifactRegistry.V1.Model.PythonRepository.t`, *default:* `nil`) - Specific settings for a Python remote repository.
  *   `upstreamCredentials` (*type:* `GoogleApi.ArtifactRegistry.V1.Model.UpstreamCredentials.t`, *default:* `nil`) - Optional. The credentials used to access the remote repository.
  *   `yumRepository` (*type:* `GoogleApi.ArtifactRegistry.V1.Model.YumRepository.t`, *default:* `nil`) - Specific settings for a Yum remote repository.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :aptRepository => GoogleApi.ArtifactRegistry.V1.Model.AptRepository.t() | nil,
          :commonRepository =>
            GoogleApi.ArtifactRegistry.V1.Model.CommonRemoteRepository.t() | nil,
          :description => String.t() | nil,
          :disableUpstreamValidation => boolean() | nil,
          :dockerRepository => GoogleApi.ArtifactRegistry.V1.Model.DockerRepository.t() | nil,
          :mavenRepository => GoogleApi.ArtifactRegistry.V1.Model.MavenRepository.t() | nil,
          :npmRepository => GoogleApi.ArtifactRegistry.V1.Model.NpmRepository.t() | nil,
          :pythonRepository => GoogleApi.ArtifactRegistry.V1.Model.PythonRepository.t() | nil,
          :upstreamCredentials =>
            GoogleApi.ArtifactRegistry.V1.Model.UpstreamCredentials.t() | nil,
          :yumRepository => GoogleApi.ArtifactRegistry.V1.Model.YumRepository.t() | nil
        }

  field(:aptRepository, as: GoogleApi.ArtifactRegistry.V1.Model.AptRepository)
  field(:commonRepository, as: GoogleApi.ArtifactRegistry.V1.Model.CommonRemoteRepository)
  field(:description)
  field(:disableUpstreamValidation)
  field(:dockerRepository, as: GoogleApi.ArtifactRegistry.V1.Model.DockerRepository)
  field(:mavenRepository, as: GoogleApi.ArtifactRegistry.V1.Model.MavenRepository)
  field(:npmRepository, as: GoogleApi.ArtifactRegistry.V1.Model.NpmRepository)
  field(:pythonRepository, as: GoogleApi.ArtifactRegistry.V1.Model.PythonRepository)
  field(:upstreamCredentials, as: GoogleApi.ArtifactRegistry.V1.Model.UpstreamCredentials)
  field(:yumRepository, as: GoogleApi.ArtifactRegistry.V1.Model.YumRepository)
end

defimpl Poison.Decoder, for: GoogleApi.ArtifactRegistry.V1.Model.RemoteRepositoryConfig do
  def decode(value, options) do
    GoogleApi.ArtifactRegistry.V1.Model.RemoteRepositoryConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ArtifactRegistry.V1.Model.RemoteRepositoryConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
