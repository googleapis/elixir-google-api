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

defmodule GoogleApi.ContainerAnalysis.V1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1Volume do
  @moduledoc """
  Volume describes a Docker container volume which is mounted into build steps in order to persist files across build step execution.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the volume to mount. Volume names must be unique per build step and must be valid names for Docker volumes. Each named volume must be used by at least two build steps.
  *   `path` (*type:* `String.t`, *default:* `nil`) - Path at which to mount the volume. Paths must be absolute and cannot conflict with other volume paths on the same build step or with certain reserved volume paths.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :path => String.t() | nil
        }

  field(:name)
  field(:path)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContainerAnalysis.V1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1Volume do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1Volume.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContainerAnalysis.V1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1Volume do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
