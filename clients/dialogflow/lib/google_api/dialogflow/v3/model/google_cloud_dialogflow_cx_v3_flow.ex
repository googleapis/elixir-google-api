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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3Flow do
  @moduledoc """
  Flows represents the conversation flows when you build your chatbot agent. A flow consists of many pages connected by the transition routes. Conversations always start with the built-in Start Flow (with an all-0 ID). Transition routes can direct the conversation session from the current flow (parent flow) to another flow (sub flow). When the sub flow is finished, Dialogflow will bring the session back to the parent flow, where the sub flow is started. Usually, when a transition route is followed by a matched intent, the intent will be "consumed". This means the intent won't activate more transition routes. However, when the followed transition route moves the conversation session into a different flow, the matched intent can be carried over and to be consumed in the target flow.

  ## Attributes

  *   `advancedSettings` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3AdvancedSettings.t`, *default:* `nil`) - Hierarchical advanced settings for this flow. The settings exposed at the lower level overrides the settings exposed at the higher level.
  *   `description` (*type:* `String.t`, *default:* `nil`) - The description of the flow. The maximum length is 500 characters. If exceeded, the request is rejected.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. The human-readable name of the flow.
  *   `eventHandlers` (*type:* `list(GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3EventHandler.t)`, *default:* `nil`) - A flow's event handlers serve two purposes: * They are responsible for handling events (e.g. no match, webhook errors) in the flow. * They are inherited by every page's event handlers, which can be used to handle common events regardless of the current page. Event handlers defined in the page have higher priority than those defined in the flow. Unlike transition_routes, these handlers are evaluated on a first-match basis. The first one that matches the event get executed, with the rest being ignored.
  *   `knowledgeConnectorSettings` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3KnowledgeConnectorSettings.t`, *default:* `nil`) - Optional. Knowledge connector configuration.
  *   `locked` (*type:* `boolean()`, *default:* `nil`) - Indicates whether the flow is locked for changes. If the flow is locked, modifications to the flow will be rejected.
  *   `multiLanguageSettings` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3FlowMultiLanguageSettings.t`, *default:* `nil`) - Optional. Multi-lingual agent settings for this flow.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The unique identifier of the flow. Format: `projects//locations//agents//flows/`.
  *   `nluSettings` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3NluSettings.t`, *default:* `nil`) - NLU related settings of the flow.
  *   `transitionRouteGroups` (*type:* `list(String.t)`, *default:* `nil`) - A flow's transition route group serve two purposes: * They are responsible for matching the user's first utterances in the flow. * They are inherited by every page's transition route groups. Transition route groups defined in the page have higher priority than those defined in the flow. Format: `projects//locations//agents//flows//transitionRouteGroups/` or `projects//locations//agents//transitionRouteGroups/` for agent-level groups.
  *   `transitionRoutes` (*type:* `list(GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3TransitionRoute.t)`, *default:* `nil`) - A flow's transition routes serve two purposes: * They are responsible for matching the user's first utterances in the flow. * They are inherited by every page's transition routes and can support use cases such as the user saying "help" or "can I talk to a human?", which can be handled in a common way regardless of the current page. Transition routes defined in the page have higher priority than those defined in the flow. TransitionRoutes are evalauted in the following order: * TransitionRoutes with intent specified. * TransitionRoutes with only condition specified. TransitionRoutes with intent specified are inherited by pages in the flow.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :advancedSettings =>
            GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3AdvancedSettings.t() | nil,
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :eventHandlers =>
            list(GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3EventHandler.t()) | nil,
          :knowledgeConnectorSettings =>
            GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3KnowledgeConnectorSettings.t()
            | nil,
          :locked => boolean() | nil,
          :multiLanguageSettings =>
            GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3FlowMultiLanguageSettings.t()
            | nil,
          :name => String.t() | nil,
          :nluSettings =>
            GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3NluSettings.t() | nil,
          :transitionRouteGroups => list(String.t()) | nil,
          :transitionRoutes =>
            list(GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3TransitionRoute.t()) | nil
        }

  field(:advancedSettings,
    as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3AdvancedSettings
  )

  field(:description)
  field(:displayName)

  field(:eventHandlers,
    as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3EventHandler,
    type: :list
  )

  field(:knowledgeConnectorSettings,
    as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3KnowledgeConnectorSettings
  )

  field(:locked)

  field(:multiLanguageSettings,
    as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3FlowMultiLanguageSettings
  )

  field(:name)
  field(:nluSettings, as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3NluSettings)
  field(:transitionRouteGroups, type: :list)

  field(:transitionRoutes,
    as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3TransitionRoute,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3Flow do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3Flow.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3Flow do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
