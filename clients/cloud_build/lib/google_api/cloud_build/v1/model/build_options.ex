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

defmodule GoogleApi.CloudBuild.V1.Model.BuildOptions do
  @moduledoc """
  Optional arguments to enable specific features of builds.

  ## Attributes

  *   `diskSizeGb` (*type:* `String.t`, *default:* `nil`) - Requested disk size for the VM that runs the build. Note that this is *NOT*
      "disk free"; some of the space will be used by the operating system and
      build utilities. Also note that this is the minimum disk size that will be
      allocated for the build -- the build may run with a larger disk than
      requested. At present, the maximum disk size is 1000GB; builds that request
      more than the maximum are rejected with an error.
  *   `dynamicSubstitutions` (*type:* `boolean()`, *default:* `nil`) - Option to specify whether or not to apply bash style string
      operations to the substitutions.

      NOTE: this is always enabled for triggered builds and cannot be
      overridden in the build configuration file.
  *   `env` (*type:* `list(String.t)`, *default:* `nil`) - A list of global environment variable definitions that will exist for all
      build steps in this build. If a variable is defined in both globally and in
      a build step, the variable will use the build step value.

      The elements are of the form "KEY=VALUE" for the environment variable "KEY"
      being given the value "VALUE".
  *   `logStreamingOption` (*type:* `String.t`, *default:* `nil`) - Option to define build log streaming behavior to Google Cloud
      Storage.
  *   `logging` (*type:* `String.t`, *default:* `nil`) - Option to specify the logging mode, which determines if and where build
      logs are stored.
  *   `machineType` (*type:* `String.t`, *default:* `nil`) - Compute Engine machine type on which to run the build.
  *   `requestedVerifyOption` (*type:* `String.t`, *default:* `nil`) - Requested verifiability options.
  *   `secretEnv` (*type:* `list(String.t)`, *default:* `nil`) - A list of global environment variables, which are encrypted using a Cloud
      Key Management Service crypto key. These values must be specified in the
      build's `Secret`. These variables will be available to all build steps
      in this build.
  *   `sourceProvenanceHash` (*type:* `list(String.t)`, *default:* `nil`) - Requested hash for SourceProvenance.
  *   `substitutionOption` (*type:* `String.t`, *default:* `nil`) - Option to specify behavior when there is an error in the substitution
      checks.

      NOTE: this is always set to ALLOW_LOOSE for triggered builds and cannot
      be overridden in the build configuration file.
  *   `volumes` (*type:* `list(GoogleApi.CloudBuild.V1.Model.Volume.t)`, *default:* `nil`) - Global list of volumes to mount for ALL build steps

      Each volume is created as an empty volume prior to starting the build
      process. Upon completion of the build, volumes and their contents are
      discarded. Global volume names and paths cannot conflict with the volumes
      defined a build step.

      Using a global volume in a build with only one step is not valid as
      it is indicative of a build request with an incorrect configuration.
  *   `workerPool` (*type:* `String.t`, *default:* `nil`) - Option to specify a `WorkerPool` for the build.
      Format: projects/{project}/workerPools/{workerPool}

      This field is experimental.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :diskSizeGb => String.t(),
          :dynamicSubstitutions => boolean(),
          :env => list(String.t()),
          :logStreamingOption => String.t(),
          :logging => String.t(),
          :machineType => String.t(),
          :requestedVerifyOption => String.t(),
          :secretEnv => list(String.t()),
          :sourceProvenanceHash => list(String.t()),
          :substitutionOption => String.t(),
          :volumes => list(GoogleApi.CloudBuild.V1.Model.Volume.t()),
          :workerPool => String.t()
        }

  field(:diskSizeGb)
  field(:dynamicSubstitutions)
  field(:env, type: :list)
  field(:logStreamingOption)
  field(:logging)
  field(:machineType)
  field(:requestedVerifyOption)
  field(:secretEnv, type: :list)
  field(:sourceProvenanceHash, type: :list)
  field(:substitutionOption)
  field(:volumes, as: GoogleApi.CloudBuild.V1.Model.Volume, type: :list)
  field(:workerPool)
end

defimpl Poison.Decoder, for: GoogleApi.CloudBuild.V1.Model.BuildOptions do
  def decode(value, options) do
    GoogleApi.CloudBuild.V1.Model.BuildOptions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudBuild.V1.Model.BuildOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
