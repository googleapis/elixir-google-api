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

defmodule GoogleApi.Composer.V1.Model.EnvironmentConfig do
  @moduledoc """
  Configuration information for an environment.

  ## Attributes

  *   `airflowUri` (*type:* `String.t`, *default:* `nil`) - Output only. The URI of the Apache Airflow Web UI hosted within this environment (see
      [Airflow web
      interface](/composer/docs/how-to/accessing/airflow-web-interface)).
  *   `dagGcsPrefix` (*type:* `String.t`, *default:* `nil`) - Output only. The Cloud Storage prefix of the DAGs for this environment. Although Cloud
      Storage objects reside in a flat namespace, a hierarchical file tree
      can be simulated using "/"-delimited object name prefixes. DAG objects for
      this environment reside in a simulated directory with the given prefix.
  *   `gkeCluster` (*type:* `String.t`, *default:* `nil`) - Output only. The Kubernetes Engine cluster used to run this environment.
  *   `nodeConfig` (*type:* `GoogleApi.Composer.V1.Model.NodeConfig.t`, *default:* `nil`) - The configuration used for the Kubernetes Engine cluster.
  *   `nodeCount` (*type:* `integer()`, *default:* `nil`) - The number of nodes in the Kubernetes Engine cluster that will be
      used to run this environment.
  *   `softwareConfig` (*type:* `GoogleApi.Composer.V1.Model.SoftwareConfig.t`, *default:* `nil`) - The configuration settings for software inside the environment.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :airflowUri => String.t(),
          :dagGcsPrefix => String.t(),
          :gkeCluster => String.t(),
          :nodeConfig => GoogleApi.Composer.V1.Model.NodeConfig.t(),
          :nodeCount => integer(),
          :softwareConfig => GoogleApi.Composer.V1.Model.SoftwareConfig.t()
        }

  field(:airflowUri)
  field(:dagGcsPrefix)
  field(:gkeCluster)
  field(:nodeConfig, as: GoogleApi.Composer.V1.Model.NodeConfig)
  field(:nodeCount)
  field(:softwareConfig, as: GoogleApi.Composer.V1.Model.SoftwareConfig)
end

defimpl Poison.Decoder, for: GoogleApi.Composer.V1.Model.EnvironmentConfig do
  def decode(value, options) do
    GoogleApi.Composer.V1.Model.EnvironmentConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Composer.V1.Model.EnvironmentConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
