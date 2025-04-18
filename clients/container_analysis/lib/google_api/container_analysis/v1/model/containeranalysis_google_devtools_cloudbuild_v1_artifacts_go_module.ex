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

defmodule GoogleApi.ContainerAnalysis.V1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsGoModule do
  @moduledoc """
  Go module to upload to Artifact Registry upon successful completion of all build steps. A module refers to all dependencies in a go.mod file.

  ## Attributes

  *   `modulePath` (*type:* `String.t`, *default:* `nil`) - Optional. The Go module's "module path". e.g. example.com/foo/v2
  *   `moduleVersion` (*type:* `String.t`, *default:* `nil`) - Optional. The Go module's semantic version in the form vX.Y.Z. e.g. v0.1.1 Pre-release identifiers can also be added by appending a dash and dot separated ASCII alphanumeric characters and hyphens. e.g. v0.2.3-alpha.x.12m.5
  *   `repositoryLocation` (*type:* `String.t`, *default:* `nil`) - Optional. Location of the Artifact Registry repository. i.e. us-east1 Defaults to the build’s location.
  *   `repositoryName` (*type:* `String.t`, *default:* `nil`) - Optional. Artifact Registry repository name. Specified Go modules will be zipped and uploaded to Artifact Registry with this location as a prefix. e.g. my-go-repo
  *   `repositoryProjectId` (*type:* `String.t`, *default:* `nil`) - Optional. Project ID of the Artifact Registry repository. Defaults to the build project.
  *   `sourcePath` (*type:* `String.t`, *default:* `nil`) - Optional. Source path of the go.mod file in the build's workspace. If not specified, this will default to the current directory. e.g. ~/code/go/mypackage
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :modulePath => String.t() | nil,
          :moduleVersion => String.t() | nil,
          :repositoryLocation => String.t() | nil,
          :repositoryName => String.t() | nil,
          :repositoryProjectId => String.t() | nil,
          :sourcePath => String.t() | nil
        }

  field(:modulePath)
  field(:moduleVersion)
  field(:repositoryLocation)
  field(:repositoryName)
  field(:repositoryProjectId)
  field(:sourcePath)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ContainerAnalysis.V1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsGoModule do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsGoModule.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ContainerAnalysis.V1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsGoModule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
