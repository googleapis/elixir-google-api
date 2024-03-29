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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ResourceRuntimeSpec do
  @moduledoc """
  Configuration for the runtime on a PersistentResource instance, including but not limited to: * Service accounts used to run the workloads. * Whether to make it a dedicated Ray Cluster.

  ## Attributes

  *   `raySpec` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1RaySpec.t`, *default:* `nil`) - Optional. Ray cluster configuration. Required when creating a dedicated RayCluster on the PersistentResource.
  *   `serviceAccountSpec` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ServiceAccountSpec.t`, *default:* `nil`) - Optional. Configure the use of workload identity on the PersistentResource
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :raySpec => GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1RaySpec.t() | nil,
          :serviceAccountSpec =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ServiceAccountSpec.t() | nil
        }

  field(:raySpec, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1RaySpec)

  field(:serviceAccountSpec,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ServiceAccountSpec
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ResourceRuntimeSpec do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ResourceRuntimeSpec.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ResourceRuntimeSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
