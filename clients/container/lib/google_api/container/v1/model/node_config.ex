# Copyright 2019 Google LLC
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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Container.V1.Model.NodeConfig do
  @moduledoc """
  Parameters that describe the nodes in a cluster.

  ## Attributes

  - accelerators (list(GoogleApi.Container.V1.Model.AcceleratorConfig.t)): A list of hardware accelerators to be attached to each node.
  See https://cloud.google.com/compute/docs/gpus for more information about
  support for GPUs. Defaults to `nil`.
  - diskSizeGb (integer()): Size of the disk attached to each node, specified in GB.
  The smallest allowed disk size is 10GB.

  If unspecified, the default disk size is 100GB. Defaults to `nil`.
  - diskType (String.t): Type of the disk attached to each node (e.g. 'pd-standard' or 'pd-ssd')

  If unspecified, the default disk type is 'pd-standard' Defaults to `nil`.
  - imageType (String.t): The image type to use for this node. Note that for a given image type,
  the latest version of it will be used. Defaults to `nil`.
  - labels (map()): The map of Kubernetes labels (key/value pairs) to be applied to each node.
  These will added in addition to any default label(s) that
  Kubernetes may apply to the node.
  In case of conflict in label keys, the applied set may differ depending on
  the Kubernetes version -- it's best to assume the behavior is undefined
  and conflicts should be avoided.
  For more information, including usage and the valid values, see:
  https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ Defaults to `nil`.
  - localSsdCount (integer()): The number of local SSD disks to be attached to the node.

  The limit for this value is dependant upon the maximum number of
  disks available on a machine per zone. See:
  https://cloud.google.com/compute/docs/disks/local-ssd#local_ssd_limits
  for more information. Defaults to `nil`.
  - machineType (String.t): The name of a Google Compute Engine [machine
  type](/compute/docs/machine-types) (e.g.
  `n1-standard-1`).

  If unspecified, the default machine type is
  `n1-standard-1`. Defaults to `nil`.
  - metadata (map()): The metadata key/value pairs assigned to instances in the cluster.

  Keys must conform to the regexp [a-zA-Z0-9-_]+ and be less than 128 bytes
  in length. These are reflected as part of a URL in the metadata server.
  Additionally, to avoid ambiguity, keys must not conflict with any other
  metadata keys for the project or be one of the reserved keys:
  "cluster-location"
  "cluster-name"
  "cluster-uid"
  "configure-sh"
  "containerd-configure-sh"
  "enable-os-login"
  "gci-update-strategy"
  "gci-ensure-gke-docker"
  "instance-template"
  "kube-env"
  "startup-script"
  "user-data"
  "disable-address-manager"
  "windows-startup-script-ps1"
  "common-psm1"
  "k8s-node-setup-psm1"
  "install-ssh-psm1"
  "user-profile-psm1"
  "serial-port-logging-enable"

  Values are free-form strings, and only have meaning as interpreted by
  the image running in the instance. The only restriction placed on them is
  that each value's size must be less than or equal to 32 KB.

  The total size of all keys and values must be less than 512 KB. Defaults to `nil`.
  - minCpuPlatform (String.t): Minimum CPU platform to be used by this instance. The instance may be
  scheduled on the specified or newer CPU platform. Applicable values are the
  friendly names of CPU platforms, such as
  <code>minCpuPlatform: &quot;Intel Haswell&quot;</code> or
  <code>minCpuPlatform: &quot;Intel Sandy Bridge&quot;</code>. For more
  information, read [how to specify min CPU
  platform](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform) Defaults to `nil`.
  - oauthScopes (list(String.t)): The set of Google API scopes to be made available on all of the
  node VMs under the "default" service account.

  The following scopes are recommended, but not required, and by default are
  not included:

  * `https://www.googleapis.com/auth/compute` is required for mounting
  persistent storage on your nodes.
  * `https://www.googleapis.com/auth/devstorage.read_only` is required for
  communicating with **gcr.io**
  (the [Google Container Registry](/container-registry/)).

  If unspecified, no scopes are added, unless Cloud Logging or Cloud
  Monitoring are enabled, in which case their required scopes will be added. Defaults to `nil`.
  - preemptible (boolean()): Whether the nodes are created as preemptible VM instances. See:
  https://cloud.google.com/compute/docs/instances/preemptible for more
  information about preemptible VM instances. Defaults to `nil`.
  - serviceAccount (String.t): The Google Cloud Platform Service Account to be used by the node VMs. If
  no Service Account is specified, the "default" service account is used. Defaults to `nil`.
  - tags (list(String.t)): The list of instance tags applied to all nodes. Tags are used to identify
  valid sources or targets for network firewalls and are specified by
  the client during cluster or node pool creation. Each tag within the list
  must comply with RFC1035. Defaults to `nil`.
  - taints (list(GoogleApi.Container.V1.Model.NodeTaint.t)): List of kubernetes taints to be applied to each node.

  For more information, including usage and the valid values, see:
  https://kubernetes.io/docs/concepts/configuration/taint-and-toleration/ Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accelerators => list(GoogleApi.Container.V1.Model.AcceleratorConfig.t()),
          :diskSizeGb => integer(),
          :diskType => String.t(),
          :imageType => String.t(),
          :labels => map(),
          :localSsdCount => integer(),
          :machineType => String.t(),
          :metadata => map(),
          :minCpuPlatform => String.t(),
          :oauthScopes => list(String.t()),
          :preemptible => boolean(),
          :serviceAccount => String.t(),
          :tags => list(String.t()),
          :taints => list(GoogleApi.Container.V1.Model.NodeTaint.t())
        }

  field(:accelerators, as: GoogleApi.Container.V1.Model.AcceleratorConfig, type: :list)
  field(:diskSizeGb)
  field(:diskType)
  field(:imageType)
  field(:labels, type: :map)
  field(:localSsdCount)
  field(:machineType)
  field(:metadata, type: :map)
  field(:minCpuPlatform)
  field(:oauthScopes, type: :list)
  field(:preemptible)
  field(:serviceAccount)
  field(:tags, type: :list)
  field(:taints, as: GoogleApi.Container.V1.Model.NodeTaint, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.NodeConfig do
  def decode(value, options) do
    GoogleApi.Container.V1.Model.NodeConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Container.V1.Model.NodeConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
