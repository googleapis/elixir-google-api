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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ConversationProfile do
  @moduledoc """
  Defines the services to connect to incoming Dialogflow conversations.

  ## Attributes

  *   `automatedAgentConfig` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2AutomatedAgentConfig.t`, *default:* `nil`) - Configuration for an automated agent to use with this profile.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Create time of the conversation profile.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. Human readable name for this profile. Max length 1024 bytes.
  *   `humanAgentAssistantConfig` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2HumanAgentAssistantConfig.t`, *default:* `nil`) - Configuration for agent assistance to use with this profile.
  *   `humanAgentHandoffConfig` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2HumanAgentHandoffConfig.t`, *default:* `nil`) - Configuration for connecting to a live agent. Currently, this feature is not general available, please contact Google to get access.
  *   `languageCode` (*type:* `String.t`, *default:* `nil`) - Language which represents the conversationProfile. If unspecified, the default language code en-us applies. Users need to create a ConversationProfile for each language they want to support.
  *   `loggingConfig` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2LoggingConfig.t`, *default:* `nil`) - Configuration for logging conversation lifecycle events.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The unique identifier of this conversation profile. Format: `projects//locations//conversationProfiles/`.
  *   `newMessageEventNotificationConfig` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2NotificationConfig.t`, *default:* `nil`) - Configuration for publishing new message events. Event will be sent in format of ConversationEvent
  *   `notificationConfig` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2NotificationConfig.t`, *default:* `nil`) - Configuration for publishing conversation lifecycle events.
  *   `sttConfig` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SpeechToTextConfig.t`, *default:* `nil`) - Settings for speech transcription.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Update time of the conversation profile.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :automatedAgentConfig =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2AutomatedAgentConfig.t() | nil,
          :createTime => DateTime.t() | nil,
          :displayName => String.t() | nil,
          :humanAgentAssistantConfig =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2HumanAgentAssistantConfig.t()
            | nil,
          :humanAgentHandoffConfig =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2HumanAgentHandoffConfig.t() | nil,
          :languageCode => String.t() | nil,
          :loggingConfig =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2LoggingConfig.t() | nil,
          :name => String.t() | nil,
          :newMessageEventNotificationConfig =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2NotificationConfig.t() | nil,
          :notificationConfig =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2NotificationConfig.t() | nil,
          :sttConfig =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SpeechToTextConfig.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:automatedAgentConfig,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2AutomatedAgentConfig
  )

  field(:createTime, as: DateTime)
  field(:displayName)

  field(:humanAgentAssistantConfig,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2HumanAgentAssistantConfig
  )

  field(:humanAgentHandoffConfig,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2HumanAgentHandoffConfig
  )

  field(:languageCode)
  field(:loggingConfig, as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2LoggingConfig)
  field(:name)

  field(:newMessageEventNotificationConfig,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2NotificationConfig
  )

  field(:notificationConfig,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2NotificationConfig
  )

  field(:sttConfig, as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SpeechToTextConfig)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ConversationProfile do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ConversationProfile.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ConversationProfile do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
