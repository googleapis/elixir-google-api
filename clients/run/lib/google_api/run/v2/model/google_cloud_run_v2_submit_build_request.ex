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

defmodule GoogleApi.Run.V2.Model.GoogleCloudRunV2SubmitBuildRequest do
  @moduledoc """
  Request message for submitting a Build.

  ## Attributes

  *   `buildpackBuild` (*type:* `GoogleApi.Run.V2.Model.GoogleCloudRunV2BuildpacksBuild.t`, *default:* `nil`) - Build the source using Buildpacks.
  *   `dockerBuild` (*type:* `GoogleApi.Run.V2.Model.GoogleCloudRunV2DockerBuild.t`, *default:* `nil`) - Build the source using Docker. This means the source has a Dockerfile.
  *   `imageUri` (*type:* `String.t`, *default:* `nil`) - Required. Artifact Registry URI to store the built image.
  *   `serviceAccount` (*type:* `String.t`, *default:* `nil`) - Optional. The service account to use for the build. If not set, the default Cloud Build service account for the project will be used.
  *   `storageSource` (*type:* `GoogleApi.Run.V2.Model.GoogleCloudRunV2StorageSource.t`, *default:* `nil`) - Required. Source for the build.
  *   `tags` (*type:* `list(String.t)`, *default:* `nil`) - Optional. Additional tags to annotate the build.
  *   `workerPool` (*type:* `String.t`, *default:* `nil`) - Optional. Name of the Cloud Build Custom Worker Pool that should be used to build the function. The format of this field is `projects/{project}/locations/{region}/workerPools/{workerPool}` where `{project}` and `{region}` are the project id and region respectively where the worker pool is defined and `{workerPool}` is the short name of the worker pool.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :buildpackBuild => GoogleApi.Run.V2.Model.GoogleCloudRunV2BuildpacksBuild.t() | nil,
          :dockerBuild => GoogleApi.Run.V2.Model.GoogleCloudRunV2DockerBuild.t() | nil,
          :imageUri => String.t() | nil,
          :serviceAccount => String.t() | nil,
          :storageSource => GoogleApi.Run.V2.Model.GoogleCloudRunV2StorageSource.t() | nil,
          :tags => list(String.t()) | nil,
          :workerPool => String.t() | nil
        }

  field(:buildpackBuild, as: GoogleApi.Run.V2.Model.GoogleCloudRunV2BuildpacksBuild)
  field(:dockerBuild, as: GoogleApi.Run.V2.Model.GoogleCloudRunV2DockerBuild)
  field(:imageUri)
  field(:serviceAccount)
  field(:storageSource, as: GoogleApi.Run.V2.Model.GoogleCloudRunV2StorageSource)
  field(:tags, type: :list)
  field(:workerPool)
end

defimpl Poison.Decoder, for: GoogleApi.Run.V2.Model.GoogleCloudRunV2SubmitBuildRequest do
  def decode(value, options) do
    GoogleApi.Run.V2.Model.GoogleCloudRunV2SubmitBuildRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Run.V2.Model.GoogleCloudRunV2SubmitBuildRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
