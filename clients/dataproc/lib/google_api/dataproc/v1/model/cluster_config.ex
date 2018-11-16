# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Dataproc.V1.Model.ClusterConfig do
  @moduledoc """
  The cluster config.

  ## Attributes

  - configBucket (String.t): Optional. A Cloud Storage staging bucket used for sharing generated SSH keys and config. If you do not specify a staging bucket, Cloud Dataproc will determine an appropriate Cloud Storage location (US, ASIA, or EU) for your cluster&#39;s staging bucket according to the Google Compute Engine zone where your cluster is deployed, and then it will create and manage this project-level, per-location bucket for you. Defaults to: `null`.
  - encryptionConfig (EncryptionConfig): Optional. Encryption settings for the cluster. Defaults to: `null`.
  - gceClusterConfig (GceClusterConfig): Required. The shared Compute Engine config settings for all instances in a cluster. Defaults to: `null`.
  - initializationActions ([NodeInitializationAction]): Optional. Commands to execute on each node after config is completed. By default, executables are run on master and all worker nodes. You can test a node&#39;s role metadata to run an executable on a master or worker node, as shown below using curl (you can also use wget): ROLE&#x3D;$(curl -H Metadata-Flavor:Google http://metadata/computeMetadata/v1/instance/attributes/dataproc-role) if [[ \&quot;${ROLE}\&quot; &#x3D;&#x3D; &#39;Master&#39; ]]; then   ... master specific actions ... else   ... worker specific actions ... fi  Defaults to: `null`.
  - masterConfig (InstanceGroupConfig): Optional. The Compute Engine config settings for the master instance in a cluster. Defaults to: `null`.
  - secondaryWorkerConfig (InstanceGroupConfig): Optional. The Compute Engine config settings for additional worker instances in a cluster. Defaults to: `null`.
  - softwareConfig (SoftwareConfig): Optional. The config settings for software inside the cluster. Defaults to: `null`.
  - workerConfig (InstanceGroupConfig): Optional. The Compute Engine config settings for worker instances in a cluster. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :configBucket => any(),
          :encryptionConfig => GoogleApi.Dataproc.V1.Model.EncryptionConfig.t(),
          :gceClusterConfig => GoogleApi.Dataproc.V1.Model.GceClusterConfig.t(),
          :initializationActions =>
            list(GoogleApi.Dataproc.V1.Model.NodeInitializationAction.t()),
          :masterConfig => GoogleApi.Dataproc.V1.Model.InstanceGroupConfig.t(),
          :secondaryWorkerConfig => GoogleApi.Dataproc.V1.Model.InstanceGroupConfig.t(),
          :softwareConfig => GoogleApi.Dataproc.V1.Model.SoftwareConfig.t(),
          :workerConfig => GoogleApi.Dataproc.V1.Model.InstanceGroupConfig.t()
        }

  field(:configBucket)
  field(:encryptionConfig, as: GoogleApi.Dataproc.V1.Model.EncryptionConfig)
  field(:gceClusterConfig, as: GoogleApi.Dataproc.V1.Model.GceClusterConfig)

  field(:initializationActions,
    as: GoogleApi.Dataproc.V1.Model.NodeInitializationAction,
    type: :list
  )

  field(:masterConfig, as: GoogleApi.Dataproc.V1.Model.InstanceGroupConfig)
  field(:secondaryWorkerConfig, as: GoogleApi.Dataproc.V1.Model.InstanceGroupConfig)
  field(:softwareConfig, as: GoogleApi.Dataproc.V1.Model.SoftwareConfig)
  field(:workerConfig, as: GoogleApi.Dataproc.V1.Model.InstanceGroupConfig)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.ClusterConfig do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.ClusterConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.ClusterConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
