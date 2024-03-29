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

defmodule GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminControlPlaneConfig do
  @moduledoc """
  BareMetalAdminControlPlaneConfig specifies the control plane configuration.

  ## Attributes

  *   `apiServerArgs` (*type:* `list(GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminApiServerArgument.t)`, *default:* `nil`) - Customizes the default API server args. Only a subset of customized flags are supported. Please refer to the API server documentation below to know the exact format: https://kubernetes.io/docs/reference/command-line-tools-reference/kube-apiserver/
  *   `controlPlaneNodePoolConfig` (*type:* `GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminControlPlaneNodePoolConfig.t`, *default:* `nil`) - Required. Configures the node pool running the control plane. If specified the corresponding NodePool will be created for the cluster's control plane. The NodePool will have the same name and namespace as the cluster.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :apiServerArgs =>
            list(GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminApiServerArgument.t()) | nil,
          :controlPlaneNodePoolConfig =>
            GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminControlPlaneNodePoolConfig.t() | nil
        }

  field(:apiServerArgs,
    as: GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminApiServerArgument,
    type: :list
  )

  field(:controlPlaneNodePoolConfig,
    as: GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminControlPlaneNodePoolConfig
  )
end

defimpl Poison.Decoder, for: GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminControlPlaneConfig do
  def decode(value, options) do
    GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminControlPlaneConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminControlPlaneConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
