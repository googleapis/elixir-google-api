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

defmodule GoogleApi.Container.V1.Model.NodeConfigDefaults do
  @moduledoc """
  Subset of NodeConfig message that has defaults.

  ## Attributes

  *   `containerdConfig` (*type:* `GoogleApi.Container.V1.Model.ContainerdConfig.t`, *default:* `nil`) - Parameters for containerd customization.
  *   `gcfsConfig` (*type:* `GoogleApi.Container.V1.Model.GcfsConfig.t`, *default:* `nil`) - GCFS (Google Container File System, also known as Riptide) options.
  *   `loggingConfig` (*type:* `GoogleApi.Container.V1.Model.NodePoolLoggingConfig.t`, *default:* `nil`) - Logging configuration for node pools.
  *   `nodeKubeletConfig` (*type:* `GoogleApi.Container.V1.Model.NodeKubeletConfig.t`, *default:* `nil`) - NodeKubeletConfig controls the defaults for new node-pools. Currently only `insecure_kubelet_readonly_port_enabled` can be set here.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :containerdConfig => GoogleApi.Container.V1.Model.ContainerdConfig.t() | nil,
          :gcfsConfig => GoogleApi.Container.V1.Model.GcfsConfig.t() | nil,
          :loggingConfig => GoogleApi.Container.V1.Model.NodePoolLoggingConfig.t() | nil,
          :nodeKubeletConfig => GoogleApi.Container.V1.Model.NodeKubeletConfig.t() | nil
        }

  field(:containerdConfig, as: GoogleApi.Container.V1.Model.ContainerdConfig)
  field(:gcfsConfig, as: GoogleApi.Container.V1.Model.GcfsConfig)
  field(:loggingConfig, as: GoogleApi.Container.V1.Model.NodePoolLoggingConfig)
  field(:nodeKubeletConfig, as: GoogleApi.Container.V1.Model.NodeKubeletConfig)
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.NodeConfigDefaults do
  def decode(value, options) do
    GoogleApi.Container.V1.Model.NodeConfigDefaults.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Container.V1.Model.NodeConfigDefaults do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
