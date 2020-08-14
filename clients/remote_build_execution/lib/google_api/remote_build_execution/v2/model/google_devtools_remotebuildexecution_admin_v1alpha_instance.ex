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

defmodule GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance do
  @moduledoc """
  Instance conceptually encapsulates all Remote Build Execution resources for remote builds. An instance consists of storage and compute resources (for example, `ContentAddressableStorage`, `ActionCache`, `WorkerPools`) used for running remote builds. All Remote Build Execution API calls are scoped to an instance.

  ## Attributes

  *   `featurePolicy` (*type:* `GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy.t`, *default:* `nil`) - The policy to define whether or not RBE features can be used or how they can be used.
  *   `location` (*type:* `String.t`, *default:* `nil`) - The location is a GCP region. Currently only `us-central1` is supported.
  *   `loggingEnabled` (*type:* `boolean()`, *default:* `nil`) - Output only. Whether stack driver logging is enabled for the instance.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Instance resource name formatted as: `projects/[PROJECT_ID]/instances/[INSTANCE_ID]`. Name should not be populated when creating an instance since it is provided in the `instance_id` field.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. State of the instance.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :featurePolicy =>
            GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy.t(),
          :location => String.t(),
          :loggingEnabled => boolean(),
          :name => String.t(),
          :state => String.t()
        }

  field(:featurePolicy,
    as:
      GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy
  )

  field(:location)
  field(:loggingEnabled)
  field(:name)
  field(:state)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance do
  def decode(value, options) do
    GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
