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

defmodule GoogleApi.Monitoring.V3.Model.ClusterIstio do
  @moduledoc """
  Istio service scoped to a single Kubernetes cluster. Learn more at http://istio.io. Clusters running OSS Istio will have their services ingested as this type.

  ## Attributes

  *   `clusterName` (*type:* `String.t`, *default:* `nil`) - The name of the Kubernetes cluster in which this Istio service is defined. Corresponds to the cluster_name resource label in k8s_cluster resources.
  *   `location` (*type:* `String.t`, *default:* `nil`) - The location of the Kubernetes cluster in which this Istio service is defined. Corresponds to the location resource label in k8s_cluster resources.
  *   `serviceName` (*type:* `String.t`, *default:* `nil`) - The name of the Istio service underlying this service. Corresponds to the destination_service_name metric label in Istio metrics.
  *   `serviceNamespace` (*type:* `String.t`, *default:* `nil`) - The namespace of the Istio service underlying this service. Corresponds to the destination_service_namespace metric label in Istio metrics.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clusterName => String.t(),
          :location => String.t(),
          :serviceName => String.t(),
          :serviceNamespace => String.t()
        }

  field(:clusterName)
  field(:location)
  field(:serviceName)
  field(:serviceNamespace)
end

defimpl Poison.Decoder, for: GoogleApi.Monitoring.V3.Model.ClusterIstio do
  def decode(value, options) do
    GoogleApi.Monitoring.V3.Model.ClusterIstio.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Monitoring.V3.Model.ClusterIstio do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
