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

defmodule GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1Conversation do
  @moduledoc """
  The conversation resource.

  ## Attributes

  *   `agentId` (*type:* `String.t`, *default:* `nil`) - An opaque, user-specified string representing the human agent who handled the conversation.
  *   `callMetadata` (*type:* `GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1ConversationCallMetadata.t`, *default:* `nil`) - Call-specific metadata.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time at which the conversation was created.
  *   `dataSource` (*type:* `GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1ConversationDataSource.t`, *default:* `nil`) - The source of the audio and transcription for the conversation.
  *   `dialogflowIntents` (*type:* `%{optional(String.t) => GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1DialogflowIntent.t}`, *default:* `nil`) - Output only. All the matched Dialogflow intents in the call. The key corresponds to a Dialogflow intent, format: projects/{project}/agent/{agent}/intents/{intent}
  *   `duration` (*type:* `String.t`, *default:* `nil`) - Output only. The duration of the conversation.
  *   `expireTime` (*type:* `DateTime.t`, *default:* `nil`) - The time at which this conversation should expire. After this time, the conversation data and any associated analyses will be deleted.
  *   `labels` (*type:* `map()`, *default:* `nil`) - A map for the user to specify any custom fields. A maximum of 100 labels per conversation is allowed, with a maximum of 256 characters per entry.
  *   `languageCode` (*type:* `String.t`, *default:* `nil`) - A user-specified language code for the conversation.
  *   `latestAnalysis` (*type:* `GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1Analysis.t`, *default:* `nil`) - Output only. The conversation's latest analysis, if one exists.
  *   `latestSummary` (*type:* `GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1ConversationSummarizationSuggestionData.t`, *default:* `nil`) - Output only. Latest summary of the conversation.
  *   `medium` (*type:* `String.t`, *default:* `nil`) - Immutable. The conversation medium, if unspecified will default to PHONE_CALL.
  *   `metadataJson` (*type:* `String.t`, *default:* `nil`) - Input only. JSON metadata encoded as a string. This field is primarily used by Insights integrations with various telphony systems and must be in one of Insight's supported formats.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Immutable. The resource name of the conversation. Format: projects/{project}/locations/{location}/conversations/{conversation}
  *   `obfuscatedUserId` (*type:* `String.t`, *default:* `nil`) - Obfuscated user ID which the customer sent to us.
  *   `qualityMetadata` (*type:* `GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1ConversationQualityMetadata.t`, *default:* `nil`) - Conversation metadata related to quality management.
  *   `runtimeAnnotations` (*type:* `list(GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1RuntimeAnnotation.t)`, *default:* `nil`) - Output only. The annotations that were generated during the customer and agent interaction.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - The time at which the conversation started.
  *   `transcript` (*type:* `GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1ConversationTranscript.t`, *default:* `nil`) - Output only. The conversation transcript.
  *   `ttl` (*type:* `String.t`, *default:* `nil`) - Input only. The TTL for this resource. If specified, then this TTL will be used to calculate the expire time.
  *   `turnCount` (*type:* `integer()`, *default:* `nil`) - Output only. The number of turns in the conversation.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The most recent time at which the conversation was updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :agentId => String.t() | nil,
          :callMetadata =>
            GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1ConversationCallMetadata.t()
            | nil,
          :createTime => DateTime.t() | nil,
          :dataSource =>
            GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1ConversationDataSource.t()
            | nil,
          :dialogflowIntents =>
            %{
              optional(String.t()) =>
                GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1DialogflowIntent.t()
            }
            | nil,
          :duration => String.t() | nil,
          :expireTime => DateTime.t() | nil,
          :labels => map() | nil,
          :languageCode => String.t() | nil,
          :latestAnalysis =>
            GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1Analysis.t()
            | nil,
          :latestSummary =>
            GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1ConversationSummarizationSuggestionData.t()
            | nil,
          :medium => String.t() | nil,
          :metadataJson => String.t() | nil,
          :name => String.t() | nil,
          :obfuscatedUserId => String.t() | nil,
          :qualityMetadata =>
            GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1ConversationQualityMetadata.t()
            | nil,
          :runtimeAnnotations =>
            list(
              GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1RuntimeAnnotation.t()
            )
            | nil,
          :startTime => DateTime.t() | nil,
          :transcript =>
            GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1ConversationTranscript.t()
            | nil,
          :ttl => String.t() | nil,
          :turnCount => integer() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:agentId)

  field(:callMetadata,
    as:
      GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1ConversationCallMetadata
  )

  field(:createTime, as: DateTime)

  field(:dataSource,
    as:
      GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1ConversationDataSource
  )

  field(:dialogflowIntents,
    as:
      GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1DialogflowIntent,
    type: :map
  )

  field(:duration)
  field(:expireTime, as: DateTime)
  field(:labels, type: :map)
  field(:languageCode)

  field(:latestAnalysis,
    as: GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1Analysis
  )

  field(:latestSummary,
    as:
      GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1ConversationSummarizationSuggestionData
  )

  field(:medium)
  field(:metadataJson)
  field(:name)
  field(:obfuscatedUserId)

  field(:qualityMetadata,
    as:
      GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1ConversationQualityMetadata
  )

  field(:runtimeAnnotations,
    as:
      GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1RuntimeAnnotation,
    type: :list
  )

  field(:startTime, as: DateTime)

  field(:transcript,
    as:
      GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1ConversationTranscript
  )

  field(:ttl)
  field(:turnCount)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1Conversation do
  def decode(value, options) do
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1Conversation.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1Conversation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
