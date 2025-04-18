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

defmodule GoogleApi.Integrations.V1.Model.EnterpriseCrmFrontendsEventbusProtoTriggerConfig do
  @moduledoc """
  Configuration detail of a trigger. Next available id: 22

  ## Attributes

  *   `alertConfig` (*type:* `list(GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoWorkflowAlertConfig.t)`, *default:* `nil`) - An alert threshold configuration for the [trigger + client + workflow] tuple. If these values are not specified in the trigger config, default values will be populated by the system. Note that there must be exactly one alert threshold configured per [client + trigger + workflow] when published.
  *   `cloudSchedulerConfig` (*type:* `GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoCloudSchedulerConfig.t`, *default:* `nil`) - 
  *   `description` (*type:* `String.t`, *default:* `nil`) - User-provided description intended to give more business context about the task.
  *   `enabledClients` (*type:* `list(String.t)`, *default:* `nil`) - Required. The list of client ids which are enabled to execute the workflow using this trigger. In other words, these clients have the workflow execution privledges for this trigger. For API trigger, the client id in the incoming request is validated against the list of enabled clients. For non-API triggers, one workflow execution is triggered on behalf of each enabled client.
  *   `errorCatcherId` (*type:* `String.t`, *default:* `nil`) - Optional Error catcher id of the error catch flow which will be executed when execution error happens in the task
  *   `inputVariables` (*type:* `GoogleApi.Integrations.V1.Model.EnterpriseCrmFrontendsEventbusProtoTriggerConfigVariables.t`, *default:* `nil`) - Optional. List of input variables for the api trigger.
  *   `label` (*type:* `String.t`, *default:* `nil`) - The user created label for a particular trigger.
  *   `nextTasksExecutionPolicy` (*type:* `String.t`, *default:* `nil`) - Dictates how next tasks will be executed.
  *   `outputVariables` (*type:* `GoogleApi.Integrations.V1.Model.EnterpriseCrmFrontendsEventbusProtoTriggerConfigVariables.t`, *default:* `nil`) - Optional. List of output variables for the api trigger.
  *   `pauseWorkflowExecutions` (*type:* `boolean()`, *default:* `nil`) - Optional. If set to true, any upcoming requests for this trigger config will be paused and the executions will be resumed later when the flag is reset. The workflow to which this trigger config belongs has to be in ACTIVE status for the executions to be paused or resumed.
  *   `position` (*type:* `GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoCoordinate.t`, *default:* `nil`) - Optional. Informs the front-end application where to draw this trigger config on the UI.
  *   `properties` (*type:* `map()`, *default:* `nil`) - Configurable properties of the trigger, not to be confused with workflow parameters. E.g. "name" is a property for API triggers and "subscription" is a property for Cloud Pubsub triggers.
  *   `startTasks` (*type:* `list(GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoNextTask.t)`, *default:* `nil`) - Set of tasks numbers from where the workflow execution is started by this trigger. If this is empty, then workflow is executed with default start tasks. In the list of start tasks, none of two tasks can have direct ancestor-descendant relationships (i.e. in a same workflow execution graph).
  *   `triggerCriteria` (*type:* `GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoTriggerCriteria.t`, *default:* `nil`) - Optional. When set, Eventbus will run the task specified in the trigger_criteria and validate the result using the trigger_criteria.condition, and only execute the workflow when result is true.
  *   `triggerId` (*type:* `String.t`, *default:* `nil`) - The backend trigger ID.
  *   `triggerName` (*type:* `String.t`, *default:* `nil`) - Optional. Name of the trigger This is added to identify the type of trigger. This is avoid the logic on triggerId to identify the trigger_type and push the same to monitoring.
  *   `triggerNumber` (*type:* `String.t`, *default:* `nil`) - Required. A number to uniquely identify each trigger config within the workflow on UI.
  *   `triggerType` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :alertConfig =>
            list(
              GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoWorkflowAlertConfig.t()
            )
            | nil,
          :cloudSchedulerConfig =>
            GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoCloudSchedulerConfig.t()
            | nil,
          :description => String.t() | nil,
          :enabledClients => list(String.t()) | nil,
          :errorCatcherId => String.t() | nil,
          :inputVariables =>
            GoogleApi.Integrations.V1.Model.EnterpriseCrmFrontendsEventbusProtoTriggerConfigVariables.t()
            | nil,
          :label => String.t() | nil,
          :nextTasksExecutionPolicy => String.t() | nil,
          :outputVariables =>
            GoogleApi.Integrations.V1.Model.EnterpriseCrmFrontendsEventbusProtoTriggerConfigVariables.t()
            | nil,
          :pauseWorkflowExecutions => boolean() | nil,
          :position =>
            GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoCoordinate.t() | nil,
          :properties => map() | nil,
          :startTasks =>
            list(GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoNextTask.t()) | nil,
          :triggerCriteria =>
            GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoTriggerCriteria.t() | nil,
          :triggerId => String.t() | nil,
          :triggerName => String.t() | nil,
          :triggerNumber => String.t() | nil,
          :triggerType => String.t() | nil
        }

  field(:alertConfig,
    as: GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoWorkflowAlertConfig,
    type: :list
  )

  field(:cloudSchedulerConfig,
    as: GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoCloudSchedulerConfig
  )

  field(:description)
  field(:enabledClients, type: :list)
  field(:errorCatcherId)

  field(:inputVariables,
    as: GoogleApi.Integrations.V1.Model.EnterpriseCrmFrontendsEventbusProtoTriggerConfigVariables
  )

  field(:label)
  field(:nextTasksExecutionPolicy)

  field(:outputVariables,
    as: GoogleApi.Integrations.V1.Model.EnterpriseCrmFrontendsEventbusProtoTriggerConfigVariables
  )

  field(:pauseWorkflowExecutions)
  field(:position, as: GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoCoordinate)
  field(:properties, type: :map)

  field(:startTasks,
    as: GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoNextTask,
    type: :list
  )

  field(:triggerCriteria,
    as: GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoTriggerCriteria
  )

  field(:triggerId)
  field(:triggerName)
  field(:triggerNumber)
  field(:triggerType)
end

defimpl Poison.Decoder,
  for: GoogleApi.Integrations.V1.Model.EnterpriseCrmFrontendsEventbusProtoTriggerConfig do
  def decode(value, options) do
    GoogleApi.Integrations.V1.Model.EnterpriseCrmFrontendsEventbusProtoTriggerConfig.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Integrations.V1.Model.EnterpriseCrmFrontendsEventbusProtoTriggerConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
