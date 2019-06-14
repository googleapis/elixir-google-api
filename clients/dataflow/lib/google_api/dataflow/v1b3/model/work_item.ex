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

defmodule GoogleApi.Dataflow.V1b3.Model.WorkItem do
  @moduledoc """
  WorkItem represents basic information about a WorkItem to be executed
  in the cloud.

  ## Attributes

  - configuration (String.t): Work item-specific configuration as an opaque blob. Defaults to `nil`.
  - id (String.t): Identifies this WorkItem. Defaults to `nil`.
  - initialReportIndex (String.t): The initial index to use when reporting the status of the WorkItem. Defaults to `nil`.
  - jobId (String.t): Identifies the workflow job this WorkItem belongs to. Defaults to `nil`.
  - leaseExpireTime (DateTime.t): Time when the lease on this Work will expire. Defaults to `nil`.
  - mapTask (GoogleApi.Dataflow.V1b3.Model.MapTask.t): Additional information for MapTask WorkItems. Defaults to `nil`.
  - packages (list(GoogleApi.Dataflow.V1b3.Model.Package.t)): Any required packages that need to be fetched in order to execute
  this WorkItem. Defaults to `nil`.
  - projectId (String.t): Identifies the cloud project this WorkItem belongs to. Defaults to `nil`.
  - reportStatusInterval (String.t): Recommended reporting interval. Defaults to `nil`.
  - seqMapTask (GoogleApi.Dataflow.V1b3.Model.SeqMapTask.t): Additional information for SeqMapTask WorkItems. Defaults to `nil`.
  - shellTask (GoogleApi.Dataflow.V1b3.Model.ShellTask.t): Additional information for ShellTask WorkItems. Defaults to `nil`.
  - sourceOperationTask (GoogleApi.Dataflow.V1b3.Model.SourceOperationRequest.t): Additional information for source operation WorkItems. Defaults to `nil`.
  - streamingComputationTask (GoogleApi.Dataflow.V1b3.Model.StreamingComputationTask.t): Additional information for StreamingComputationTask WorkItems. Defaults to `nil`.
  - streamingConfigTask (GoogleApi.Dataflow.V1b3.Model.StreamingConfigTask.t): Additional information for StreamingConfigTask WorkItems. Defaults to `nil`.
  - streamingSetupTask (GoogleApi.Dataflow.V1b3.Model.StreamingSetupTask.t): Additional information for StreamingSetupTask WorkItems. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :configuration => String.t(),
          :id => String.t(),
          :initialReportIndex => String.t(),
          :jobId => String.t(),
          :leaseExpireTime => DateTime.t(),
          :mapTask => GoogleApi.Dataflow.V1b3.Model.MapTask.t(),
          :packages => list(GoogleApi.Dataflow.V1b3.Model.Package.t()),
          :projectId => String.t(),
          :reportStatusInterval => String.t(),
          :seqMapTask => GoogleApi.Dataflow.V1b3.Model.SeqMapTask.t(),
          :shellTask => GoogleApi.Dataflow.V1b3.Model.ShellTask.t(),
          :sourceOperationTask => GoogleApi.Dataflow.V1b3.Model.SourceOperationRequest.t(),
          :streamingComputationTask => GoogleApi.Dataflow.V1b3.Model.StreamingComputationTask.t(),
          :streamingConfigTask => GoogleApi.Dataflow.V1b3.Model.StreamingConfigTask.t(),
          :streamingSetupTask => GoogleApi.Dataflow.V1b3.Model.StreamingSetupTask.t()
        }

  field(:configuration)
  field(:id)
  field(:initialReportIndex)
  field(:jobId)
  field(:leaseExpireTime, as: DateTime)
  field(:mapTask, as: GoogleApi.Dataflow.V1b3.Model.MapTask)
  field(:packages, as: GoogleApi.Dataflow.V1b3.Model.Package, type: :list)
  field(:projectId)
  field(:reportStatusInterval)
  field(:seqMapTask, as: GoogleApi.Dataflow.V1b3.Model.SeqMapTask)
  field(:shellTask, as: GoogleApi.Dataflow.V1b3.Model.ShellTask)
  field(:sourceOperationTask, as: GoogleApi.Dataflow.V1b3.Model.SourceOperationRequest)
  field(:streamingComputationTask, as: GoogleApi.Dataflow.V1b3.Model.StreamingComputationTask)
  field(:streamingConfigTask, as: GoogleApi.Dataflow.V1b3.Model.StreamingConfigTask)
  field(:streamingSetupTask, as: GoogleApi.Dataflow.V1b3.Model.StreamingSetupTask)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.WorkItem do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.WorkItem.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.WorkItem do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
