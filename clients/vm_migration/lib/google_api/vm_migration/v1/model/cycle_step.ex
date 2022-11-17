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

defmodule GoogleApi.VMMigration.V1.Model.CycleStep do
  @moduledoc """
  CycleStep holds information about a step progress.

  ## Attributes

  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - The time the cycle step has ended.
  *   `initializingReplication` (*type:* `GoogleApi.VMMigration.V1.Model.InitializingReplicationStep.t`, *default:* `nil`) - Initializing replication step.
  *   `postProcessing` (*type:* `GoogleApi.VMMigration.V1.Model.PostProcessingStep.t`, *default:* `nil`) - Post processing step.
  *   `replicating` (*type:* `GoogleApi.VMMigration.V1.Model.ReplicatingStep.t`, *default:* `nil`) - Replicating step.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - The time the cycle step has started.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endTime => DateTime.t() | nil,
          :initializingReplication =>
            GoogleApi.VMMigration.V1.Model.InitializingReplicationStep.t() | nil,
          :postProcessing => GoogleApi.VMMigration.V1.Model.PostProcessingStep.t() | nil,
          :replicating => GoogleApi.VMMigration.V1.Model.ReplicatingStep.t() | nil,
          :startTime => DateTime.t() | nil
        }

  field(:endTime, as: DateTime)
  field(:initializingReplication, as: GoogleApi.VMMigration.V1.Model.InitializingReplicationStep)
  field(:postProcessing, as: GoogleApi.VMMigration.V1.Model.PostProcessingStep)
  field(:replicating, as: GoogleApi.VMMigration.V1.Model.ReplicatingStep)
  field(:startTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.VMMigration.V1.Model.CycleStep do
  def decode(value, options) do
    GoogleApi.VMMigration.V1.Model.CycleStep.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.VMMigration.V1.Model.CycleStep do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end