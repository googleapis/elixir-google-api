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

defmodule GoogleApi.ToolResults.V1beta3.Model.Execution do
  @moduledoc """
  An Execution represents a collection of Steps. For instance, it could represent: - a mobile test executed across a range of device configurations - a jenkins job with a build step followed by a test step The maximum size of an execution message is 1 MiB. An Execution can be updated until its state is set to COMPLETE at which point it becomes immutable.

  ## Attributes

  *   `completionTime` (*type:* `GoogleApi.ToolResults.V1beta3.Model.Timestamp.t`, *default:* `nil`) - The time when the Execution status transitioned to COMPLETE. This value will be set automatically when state transitions to COMPLETE. - In response: set if the execution state is COMPLETE. - In create/update request: never set
  *   `creationTime` (*type:* `GoogleApi.ToolResults.V1beta3.Model.Timestamp.t`, *default:* `nil`) - The time when the Execution was created. This value will be set automatically when CreateExecution is called. - In response: always set - In create/update request: never set
  *   `dimensionDefinitions` (*type:* `list(GoogleApi.ToolResults.V1beta3.Model.MatrixDimensionDefinition.t)`, *default:* `nil`) - The dimensions along which different steps in this execution may vary. This must remain fixed over the life of the execution. Returns INVALID_ARGUMENT if this field is set in an update request. Returns INVALID_ARGUMENT if the same name occurs in more than one dimension_definition. Returns INVALID_ARGUMENT if the size of the list is over 100. - In response: present if set by create - In create request: optional - In update request: never set
  *   `executionId` (*type:* `String.t`, *default:* `nil`) - A unique identifier within a History for this Execution. Returns INVALID_ARGUMENT if this field is set or overwritten by the caller. - In response always set - In create/update request: never set
  *   `outcome` (*type:* `GoogleApi.ToolResults.V1beta3.Model.Outcome.t`, *default:* `nil`) - Classify the result, for example into SUCCESS or FAILURE - In response: present if set by create/update request - In create/update request: optional
  *   `specification` (*type:* `GoogleApi.ToolResults.V1beta3.Model.Specification.t`, *default:* `nil`) - Lightweight information about execution request. - In response: present if set by create - In create: optional - In update: optional
  *   `state` (*type:* `String.t`, *default:* `nil`) - The initial state is IN_PROGRESS. The only legal state transitions is from IN_PROGRESS to COMPLETE. A PRECONDITION_FAILED will be returned if an invalid transition is requested. The state can only be set to COMPLETE once. A FAILED_PRECONDITION will be returned if the state is set to COMPLETE multiple times. If the state is set to COMPLETE, all the in-progress steps within the execution will be set as COMPLETE. If the outcome of the step is not set, the outcome will be set to INCONCLUSIVE. - In response always set - In create/update request: optional
  *   `testExecutionMatrixId` (*type:* `String.t`, *default:* `nil`) - TestExecution Matrix ID that the TestExecutionService uses. - In response: present if set by create - In create: optional - In update: never set
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :completionTime => GoogleApi.ToolResults.V1beta3.Model.Timestamp.t(),
          :creationTime => GoogleApi.ToolResults.V1beta3.Model.Timestamp.t(),
          :dimensionDefinitions =>
            list(GoogleApi.ToolResults.V1beta3.Model.MatrixDimensionDefinition.t()),
          :executionId => String.t(),
          :outcome => GoogleApi.ToolResults.V1beta3.Model.Outcome.t(),
          :specification => GoogleApi.ToolResults.V1beta3.Model.Specification.t(),
          :state => String.t(),
          :testExecutionMatrixId => String.t()
        }

  field(:completionTime, as: GoogleApi.ToolResults.V1beta3.Model.Timestamp)
  field(:creationTime, as: GoogleApi.ToolResults.V1beta3.Model.Timestamp)

  field(:dimensionDefinitions,
    as: GoogleApi.ToolResults.V1beta3.Model.MatrixDimensionDefinition,
    type: :list
  )

  field(:executionId)
  field(:outcome, as: GoogleApi.ToolResults.V1beta3.Model.Outcome)
  field(:specification, as: GoogleApi.ToolResults.V1beta3.Model.Specification)
  field(:state)
  field(:testExecutionMatrixId)
end

defimpl Poison.Decoder, for: GoogleApi.ToolResults.V1beta3.Model.Execution do
  def decode(value, options) do
    GoogleApi.ToolResults.V1beta3.Model.Execution.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ToolResults.V1beta3.Model.Execution do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
