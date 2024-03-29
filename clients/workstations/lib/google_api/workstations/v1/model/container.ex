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

defmodule GoogleApi.Workstations.V1.Model.Container do
  @moduledoc """
  A Docker container.

  ## Attributes

  *   `args` (*type:* `list(String.t)`, *default:* `nil`) - Optional. Arguments passed to the entrypoint.
  *   `command` (*type:* `list(String.t)`, *default:* `nil`) - Optional. If set, overrides the default ENTRYPOINT specified by the image.
  *   `env` (*type:* `map()`, *default:* `nil`) - Optional. Environment variables passed to the container's entrypoint.
  *   `image` (*type:* `String.t`, *default:* `nil`) - Optional. A Docker container image that defines a custom environment. Cloud Workstations provides a number of [preconfigured images](https://cloud.google.com/workstations/docs/preconfigured-base-images), but you can create your own [custom container images](https://cloud.google.com/workstations/docs/custom-container-images). If using a private image, the `host.gceInstance.serviceAccount` field must be specified in the workstation configuration. If using a custom container image, the service account must have [Artifact Registry Reader](https://cloud.google.com/artifact-registry/docs/access-control#roles) permission to pull the specified image. Otherwise, the image must be publicly accessible.
  *   `runAsUser` (*type:* `integer()`, *default:* `nil`) - Optional. If set, overrides the USER specified in the image with the given uid.
  *   `workingDir` (*type:* `String.t`, *default:* `nil`) - Optional. If set, overrides the default DIR specified by the image.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :args => list(String.t()) | nil,
          :command => list(String.t()) | nil,
          :env => map() | nil,
          :image => String.t() | nil,
          :runAsUser => integer() | nil,
          :workingDir => String.t() | nil
        }

  field(:args, type: :list)
  field(:command, type: :list)
  field(:env, type: :map)
  field(:image)
  field(:runAsUser)
  field(:workingDir)
end

defimpl Poison.Decoder, for: GoogleApi.Workstations.V1.Model.Container do
  def decode(value, options) do
    GoogleApi.Workstations.V1.Model.Container.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Workstations.V1.Model.Container do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
