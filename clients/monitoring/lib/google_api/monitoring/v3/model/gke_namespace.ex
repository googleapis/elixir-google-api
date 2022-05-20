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

defmodule GoogleApi.Monitoring.V3.Model.GkeNamespace do
  @moduledoc """
  GKE Namespace. The field names correspond to the resource metadata labels on monitored resources that fall under a namespace (e.g. k8s_container, k8s_pod).

  ## Attributes

  *   `clusterName` (*type:* `String.t`, *default:* `nil`) - The name of the parent cluster.
  *   `location` (*type:* `String.t`, *default:* `nil`) - The location of the parent cluster. This may be a zone or region.
  *   `namespaceName` (*type:* `String.t`, *default:* `nil`) - The name of this namespace.
  *   `projectId` (*type:* `String.t`, *default:* `nil`) - Output only. The project this resource lives in. For legacy services migrated from the Custom type, this may be a distinct project from the one parenting the service itself.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clusterName => String.t() | nil,
          :location => String.t() | nil,
          :namespaceName => String.t() | nil,
          :projectId => String.t() | nil
        }

  field(:clusterName)
  field(:location)
  field(:namespaceName)
  field(:projectId)
end

defimpl Poison.Decoder, for: GoogleApi.Monitoring.V3.Model.GkeNamespace do
  def decode(value, options) do
    GoogleApi.Monitoring.V3.Model.GkeNamespace.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Monitoring.V3.Model.GkeNamespace do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
