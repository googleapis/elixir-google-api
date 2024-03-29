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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3FormParameterFillBehavior do
  @moduledoc """
  Configuration for how the filling of a parameter should be handled.

  ## Attributes

  *   `initialPromptFulfillment` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3Fulfillment.t`, *default:* `nil`) - Required. The fulfillment to provide the initial prompt that the agent can present to the user in order to fill the parameter.
  *   `repromptEventHandlers` (*type:* `list(GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3EventHandler.t)`, *default:* `nil`) - The handlers for parameter-level events, used to provide reprompt for the parameter or transition to a different page/flow. The supported events are: * `sys.no-match-`, where N can be from 1 to 6 * `sys.no-match-default` * `sys.no-input-`, where N can be from 1 to 6 * `sys.no-input-default` * `sys.invalid-parameter` `initial_prompt_fulfillment` provides the first prompt for the parameter. If the user's response does not fill the parameter, a no-match/no-input event will be triggered, and the fulfillment associated with the `sys.no-match-1`/`sys.no-input-1` handler (if defined) will be called to provide a prompt. The `sys.no-match-2`/`sys.no-input-2` handler (if defined) will respond to the next no-match/no-input event, and so on. A `sys.no-match-default` or `sys.no-input-default` handler will be used to handle all following no-match/no-input events after all numbered no-match/no-input handlers for the parameter are consumed. A `sys.invalid-parameter` handler can be defined to handle the case where the parameter values have been `invalidated` by webhook. For example, if the user's response fill the parameter, however the parameter was invalidated by webhook, the fulfillment associated with the `sys.invalid-parameter` handler (if defined) will be called to provide a prompt. If the event handler for the corresponding event can't be found on the parameter, `initial_prompt_fulfillment` will be re-prompted.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :initialPromptFulfillment =>
            GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3Fulfillment.t() | nil,
          :repromptEventHandlers =>
            list(GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3EventHandler.t()) | nil
        }

  field(:initialPromptFulfillment,
    as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3Fulfillment
  )

  field(:repromptEventHandlers,
    as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3EventHandler,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3FormParameterFillBehavior do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3FormParameterFillBehavior.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3FormParameterFillBehavior do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
