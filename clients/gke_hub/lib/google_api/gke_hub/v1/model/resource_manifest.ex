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

defmodule GoogleApi.GKEHub.V1.Model.ResourceManifest do
  @moduledoc """
  ResourceManifest represents a single Kubernetes resource to be applied to the cluster.

  ## Attributes

  *   `clusterScoped` (*type:* `boolean()`, *default:* `nil`) - Whether the resource provided in the manifest is `cluster_scoped`. If unset, the manifest is assumed to be namespace scoped. This field is used for REST mapping when applying the resource in a cluster.
  *   `manifest` (*type:* `String.t`, *default:* `nil`) - YAML manifest of the resource.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clusterScoped => boolean() | nil,
          :manifest => String.t() | nil
        }

  field(:clusterScoped)
  field(:manifest)
end

defimpl Poison.Decoder, for: GoogleApi.GKEHub.V1.Model.ResourceManifest do
  def decode(value, options) do
    GoogleApi.GKEHub.V1.Model.ResourceManifest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GKEHub.V1.Model.ResourceManifest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
