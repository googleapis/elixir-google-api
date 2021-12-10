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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3Experiment do
  @moduledoc """
  Represents an experiment in an environment.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Creation time of this experiment.
  *   `definition` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3ExperimentDefinition.t`, *default:* `nil`) - The definition of the experiment.
  *   `description` (*type:* `String.t`, *default:* `nil`) - The human-readable description of the experiment.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. The human-readable name of the experiment (unique in an environment). Limit of 64 characters.
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - End time of this experiment.
  *   `experimentLength` (*type:* `String.t`, *default:* `nil`) - Maximum number of days to run the experiment/rollout. If auto-rollout is not enabled, default value and maximum will be 30 days. If auto-rollout is enabled, default value and maximum will be 6 days.
  *   `lastUpdateTime` (*type:* `DateTime.t`, *default:* `nil`) - Last update time of this experiment.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the experiment. Format: projects//locations//agents//environments//experiments/..
  *   `result` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3ExperimentResult.t`, *default:* `nil`) - Inference result of the experiment.
  *   `rolloutConfig` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3RolloutConfig.t`, *default:* `nil`) - The configuration for auto rollout. If set, there should be exactly two variants in the experiment (control variant being the default version of the flow), the traffic allocation for the non-control variant will gradually increase to 100% when conditions are met, and eventually replace the control variant to become the default version of the flow.
  *   `rolloutFailureReason` (*type:* `String.t`, *default:* `nil`) - The reason why rollout has failed. Should only be set when state is ROLLOUT_FAILED.
  *   `rolloutState` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3RolloutState.t`, *default:* `nil`) - State of the auto rollout process.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - Start time of this experiment.
  *   `state` (*type:* `String.t`, *default:* `nil`) - The current state of the experiment. Transition triggered by Experiments.StartExperiment: DRAFT->RUNNING. Transition triggered by Experiments.CancelExperiment: DRAFT->DONE or RUNNING->DONE.
  *   `variantsHistory` (*type:* `list(GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3VariantsHistory.t)`, *default:* `nil`) - The history of updates to the experiment variants.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :definition =>
            GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3ExperimentDefinition.t() | nil,
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :endTime => DateTime.t() | nil,
          :experimentLength => String.t() | nil,
          :lastUpdateTime => DateTime.t() | nil,
          :name => String.t() | nil,
          :result =>
            GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3ExperimentResult.t() | nil,
          :rolloutConfig =>
            GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3RolloutConfig.t() | nil,
          :rolloutFailureReason => String.t() | nil,
          :rolloutState =>
            GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3RolloutState.t() | nil,
          :startTime => DateTime.t() | nil,
          :state => String.t() | nil,
          :variantsHistory =>
            list(GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3VariantsHistory.t()) | nil
        }

  field(:createTime, as: DateTime)

  field(:definition,
    as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3ExperimentDefinition
  )

  field(:description)
  field(:displayName)
  field(:endTime, as: DateTime)
  field(:experimentLength)
  field(:lastUpdateTime, as: DateTime)
  field(:name)
  field(:result, as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3ExperimentResult)
  field(:rolloutConfig, as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3RolloutConfig)
  field(:rolloutFailureReason)
  field(:rolloutState, as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3RolloutState)
  field(:startTime, as: DateTime)
  field(:state)

  field(:variantsHistory,
    as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3VariantsHistory,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3Experiment do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3Experiment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3Experiment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
