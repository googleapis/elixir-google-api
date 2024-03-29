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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1BatchDedicatedResources do
  @moduledoc """
  A description of resources that are used for performing batch operations, are dedicated to a Model, and need manual configuration.

  ## Attributes

  *   `machineSpec` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1MachineSpec.t`, *default:* `nil`) - Required. Immutable. The specification of a single machine.
  *   `maxReplicaCount` (*type:* `integer()`, *default:* `nil`) - Immutable. The maximum number of machine replicas the batch operation may be scaled to. The default value is 10.
  *   `startingReplicaCount` (*type:* `integer()`, *default:* `nil`) - Immutable. The number of machine replicas used at the start of the batch operation. If not set, Vertex AI decides starting number, not greater than max_replica_count
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :machineSpec =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1MachineSpec.t() | nil,
          :maxReplicaCount => integer() | nil,
          :startingReplicaCount => integer() | nil
        }

  field(:machineSpec, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1MachineSpec)
  field(:maxReplicaCount)
  field(:startingReplicaCount)
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1BatchDedicatedResources do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1BatchDedicatedResources.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1BatchDedicatedResources do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
