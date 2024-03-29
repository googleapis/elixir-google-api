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

defmodule GoogleApi.CloudBuild.V2.Model.StepTemplate do
  @moduledoc """
  StepTemplate can be used as the basis for all step containers within the Task, so that the steps inherit settings on the base container.

  ## Attributes

  *   `env` (*type:* `list(GoogleApi.CloudBuild.V2.Model.EnvVar.t)`, *default:* `nil`) - Optional. List of environment variables to set in the Step. Cannot be updated.
  *   `volumeMounts` (*type:* `list(GoogleApi.CloudBuild.V2.Model.VolumeMount.t)`, *default:* `nil`) - Optional. Pod volumes to mount into the container's filesystem.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :env => list(GoogleApi.CloudBuild.V2.Model.EnvVar.t()) | nil,
          :volumeMounts => list(GoogleApi.CloudBuild.V2.Model.VolumeMount.t()) | nil
        }

  field(:env, as: GoogleApi.CloudBuild.V2.Model.EnvVar, type: :list)
  field(:volumeMounts, as: GoogleApi.CloudBuild.V2.Model.VolumeMount, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudBuild.V2.Model.StepTemplate do
  def decode(value, options) do
    GoogleApi.CloudBuild.V2.Model.StepTemplate.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudBuild.V2.Model.StepTemplate do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
