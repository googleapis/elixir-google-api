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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1WorkerPoolSpec do
  @moduledoc """
  Represents the spec of a worker pool in a job.

  ## Attributes

  *   `containerSpec` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ContainerSpec.t`, *default:* `nil`) - The custom container task.
  *   `diskSpec` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1DiskSpec.t`, *default:* `nil`) - Disk spec.
  *   `machineSpec` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1MachineSpec.t`, *default:* `nil`) - Optional. Immutable. The specification of a single machine.
  *   `nfsMounts` (*type:* `list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1NfsMount.t)`, *default:* `nil`) - Optional. List of NFS mount spec.
  *   `pythonPackageSpec` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1PythonPackageSpec.t`, *default:* `nil`) - The Python packaged task.
  *   `replicaCount` (*type:* `String.t`, *default:* `nil`) - Optional. The number of worker replicas to use for this worker pool.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :containerSpec =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ContainerSpec.t() | nil,
          :diskSpec => GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1DiskSpec.t() | nil,
          :machineSpec =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1MachineSpec.t() | nil,
          :nfsMounts =>
            list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1NfsMount.t()) | nil,
          :pythonPackageSpec =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1PythonPackageSpec.t() | nil,
          :replicaCount => String.t() | nil
        }

  field(:containerSpec, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ContainerSpec)
  field(:diskSpec, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1DiskSpec)
  field(:machineSpec, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1MachineSpec)

  field(:nfsMounts, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1NfsMount, type: :list)

  field(:pythonPackageSpec,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1PythonPackageSpec
  )

  field(:replicaCount)
end

defimpl Poison.Decoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1WorkerPoolSpec do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1WorkerPoolSpec.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1WorkerPoolSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
