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

defmodule GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgumentValue do
  @moduledoc """
  A message representing the value of an argument. All types in the "value" oneof should have a corresponding field in the ValueType or OpaqueType protos defined in knowledge/answers/config/value.proto. This is specified by annotating each ArgumentValue type with options of the form (value_type_name) = A unit test ensure that this field is set and is valid for all types in ArgumentValue. A small number of special cases (such as funcall and simple_value) are allowed to omit the annotation. See intent_query_proto_test.cc for details. Note: If you are trying to add a new OpaqueType, stop; OpaqueType is deprecated, refer to go/opaque_type for details. If you think this is the only way to implement your feature, attend an office hours (go/meaning-help) and discuss with the MRF team. Next Id: 42

  ## Attributes

  *   `complexQueriesRewrite` (*type:* `GoogleApi.ContentWarehouse.V1.Model.QualityGenieComplexQueriesComplexQueriesOutputRewrite.t`, *default:* `nil`) - Custom type used by Complex Queries. This is populated based on the output of the RPC to the Complex Queries Boq node.
  *   `audio` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaAudio.t`, *default:* `nil`) - 
  *   `appAnnotation` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingAppAnnotation.t`, *default:* `nil`) - Device actions custom types.
  *   `calendarReference` (*type:* `GoogleApi.ContentWarehouse.V1.Model.QualityQrewriteCalendarReference.t`, *default:* `nil`) - 
  *   `scalarValue` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryScalarValue.t`, *default:* `nil`) - A scalar value with optional unit; used ONLY for resolved values after grounding.
  *   `componentReference` (*type:* `GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefComponentReference.t`, *default:* `nil`) - Component reference between WebrefEntity and Mention. This should only ever be set in argument values in WebrefEntities (e.g. in a QueryJoin). The processing expectation is that the value including the component reference is discarded altogether and replaced by reference target. Use QueryJoinToMeaningStructConverter to perform the replacement. An example value parallel to this reference may exist, but it's meant purely for human consumption and should not be used.
  *   `timer` (*type:* `GoogleApi.ContentWarehouse.V1.Model.QualityActionsTimer.t`, *default:* `nil`) - Productivity custom types. Team: go/productivity-assistance.
  *   `money` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMoneyMoney.t`, *default:* `nil`) - Represents: money expressions (e.g. 25$). Annotated by: number subgrammar.
  *   `dateTime` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeDateTime.t`, *default:* `nil`) - *** Opaque types that are likely to become fully supported: *** Represents: date and time expressions. Annotated by: datetime subgrammar.
  *   `productivityListItem` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantProductivityListItem.t`, *default:* `nil`) - 
  *   `funcall` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryFunctionCall.t`, *default:* `nil`) - *** Fully supported types *** An argument can also be a function call.
  *   `deviceId` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesDeviceId.t`, *default:* `nil`) - DeviceId custom types. Details in go/reply-broadcast
  *   `recurrence` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsRecurrence.t`, *default:* `nil`) - Represents: intervals of recurrence for repeated tasks. See go/recurrence-subgrammar Annotated by: recurrence subgrammar.
  *   `shoppingOffer` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsShoppingAssistantOffer.t`, *default:* `nil`) - Shopping custom types. See go/sopa-attentional.
  *   `sensitiveValue` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQuerySensitiveArgumentValueGuard.t`, *default:* `nil`) - Sensitive value, see go/sensitive-intents and go/a4w-multi-turn-dialog
  *   `shoppingMerchant` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsShoppingAssistantMerchant.t`, *default:* `nil`) - 
  *   `deviceUserIdentity` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesDeviceUserIdentity.t`, *default:* `nil`) - DeviceUserIdentity custom types. Details in go/reply-broadcast
  *   `location` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingLocalLocation.t`, *default:* `nil`) - Represents: location expressions. Annotated by: location subgrammar.
  *   `shoppingProduct` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsShoppingAssistantProduct.t`, *default:* `nil`) - 
  *   `calendarEvent` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesCalendarEvent.t`, *default:* `nil`) - Calendar custom types. Details in go/cal-ref.
  *   `media` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaMediaAnnotation.t`, *default:* `nil`) - 
  *   `homeAutomationDevice` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantVerticalsHomeautomationProtoHomeAutomationDevice.t`, *default:* `nil`) - HomeAutomation custom types. Details in go/smarthome_with_monastery.
  *   `shoppingProductExpression` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsShoppingAssistantProductExpression.t`, *default:* `nil`) - 
  *   `simpleValue` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQuerySimpleValue.t`, *default:* `nil`) - When literal is a datetime, it's really just an ISO 8601 datetime string. This case will eventually be replaced with the date_time field, which is more expressive and can also represent recurrences, ranges, etc. Likewise, simple_value will replace the other types of simple values that literal is currently being used to represent.
  *   `sensitivity` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersSensitivitySensitivity.t)`, *default:* `nil`) - Argument level query sensitivities. 1) Statically defined Sensitivity is copied from IntentSlot at serving time so it can be propagated along with FunctionCall to places where the Intent Catalog is not available. See go/sensitive-intents for details. 2) For the same reason, contextual sensitivites (eg., from AttentionalEntity mentions) are populated here too. See go/tagging-sensitive-ae for details.
  *   `duration` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeDuration.t`, *default:* `nil`) - Represents: duration expressions (e.g. 5 minutes). Annotated by: datetime subgrammar.
  *   `onDevice` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsOnDevice.t`, *default:* `nil`) - OnDevice custom types. Device on which an intent should be fulfilled. Differs semantically from device fields used by Media and HomeAutomation: this is annotated by the on_device subgrammar, and will not output any metadata beyond what the subgrammar outputs. See go/on_device_induction_quality.
  *   `messageNotification` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesMessageNotification.t`, *default:* `nil`) - Custom type used by tap-to-read for embedding a MessageNotification message in a GetMessageContent intent.
  *   `coreference` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryCoreference.t`, *default:* `nil`) - A value that is a coreference or variable binding to some other part of the tree. See go/mrf-variables.
  *   `narrativeNewsProvider` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsNarrativeNewsNewsProvider.t`, *default:* `nil`) - Custom type used by NarrativeNews. This is populated by the narrative news provider annotator, and it differs semantically from a mid for a news brand in that it doesn't refer to the field of widely known news brands but rather but to the specific audio news RSS feeds that the narrative news feature serves. (There is of course substantial overlap between those two concepts)
  *   `reminder` (*type:* `GoogleApi.ContentWarehouse.V1.Model.QualityActionsReminder.t`, *default:* `nil`) - 
  *   `device` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaCastDeviceAnnotation.t`, *default:* `nil`) - Media custom types. For example use, see go/valyrian-media-dd.
  *   `calendarEventWrapper` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesCalendarEventWrapper.t`, *default:* `nil`) - Details in go/multi-account-event-representation.
  *   `number` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingNumberNumber.t`, *default:* `nil`) - Represents: number expressions. Annotated by: number subgrammar.
  *   `shoppingStore` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsShoppingAssistantStore.t`, *default:* `nil`) - 
  *   `aogSlot` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingProtoActionsOnGoogleAogSlot.t`, *default:* `nil`) - Custom type used by actions-on-google in-dialog queries. See go/3p-custom-intents-wrt-meaning-catalog
  *   `personalIntelligenceEntity` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingPersonalIntelligenceEntity.t`, *default:* `nil`) - Entity parsed from manual grammar interpretation in the Personal Intelligence domain.
  *   `person` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsPersonPerson.t`, *default:* `nil`) - Represents: structured person names, including common names and personal contacts. Annotated by: go/person-subgrammar.
  *   `timezone` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeTimeZone.t`, *default:* `nil`) - Represents: timezone expressions (e.g. Eastern Daylight Time). Annotated by: datetime subgrammar.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :complexQueriesRewrite =>
            GoogleApi.ContentWarehouse.V1.Model.QualityGenieComplexQueriesComplexQueriesOutputRewrite.t()
            | nil,
          :audio =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaAudio.t() | nil,
          :appAnnotation =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingAppAnnotation.t() | nil,
          :calendarReference =>
            GoogleApi.ContentWarehouse.V1.Model.QualityQrewriteCalendarReference.t() | nil,
          :scalarValue =>
            GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryScalarValue.t() | nil,
          :componentReference =>
            GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefComponentReference.t() | nil,
          :timer => GoogleApi.ContentWarehouse.V1.Model.QualityActionsTimer.t() | nil,
          :money =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMoneyMoney.t() | nil,
          :dateTime =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeDateTime.t() | nil,
          :productivityListItem =>
            GoogleApi.ContentWarehouse.V1.Model.AssistantProductivityListItem.t() | nil,
          :funcall =>
            GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryFunctionCall.t() | nil,
          :deviceId =>
            GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesDeviceId.t() | nil,
          :recurrence =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsRecurrence.t() | nil,
          :shoppingOffer =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsShoppingAssistantOffer.t()
            | nil,
          :sensitiveValue =>
            GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQuerySensitiveArgumentValueGuard.t()
            | nil,
          :shoppingMerchant =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsShoppingAssistantMerchant.t()
            | nil,
          :deviceUserIdentity =>
            GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesDeviceUserIdentity.t() | nil,
          :location =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingLocalLocation.t() | nil,
          :shoppingProduct =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsShoppingAssistantProduct.t()
            | nil,
          :calendarEvent =>
            GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesCalendarEvent.t() | nil,
          :media =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaMediaAnnotation.t()
            | nil,
          :homeAutomationDevice =>
            GoogleApi.ContentWarehouse.V1.Model.AssistantVerticalsHomeautomationProtoHomeAutomationDevice.t()
            | nil,
          :shoppingProductExpression =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsShoppingAssistantProductExpression.t()
            | nil,
          :simpleValue =>
            GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQuerySimpleValue.t() | nil,
          :sensitivity =>
            list(GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersSensitivitySensitivity.t())
            | nil,
          :duration =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeDuration.t() | nil,
          :onDevice =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsOnDevice.t() | nil,
          :messageNotification =>
            GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesMessageNotification.t() | nil,
          :coreference =>
            GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryCoreference.t() | nil,
          :narrativeNewsProvider =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsNarrativeNewsNewsProvider.t()
            | nil,
          :reminder => GoogleApi.ContentWarehouse.V1.Model.QualityActionsReminder.t() | nil,
          :device =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaCastDeviceAnnotation.t()
            | nil,
          :calendarEventWrapper =>
            GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesCalendarEventWrapper.t()
            | nil,
          :number => GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingNumberNumber.t() | nil,
          :shoppingStore =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsShoppingAssistantStore.t()
            | nil,
          :aogSlot =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingProtoActionsOnGoogleAogSlot.t()
            | nil,
          :personalIntelligenceEntity =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingPersonalIntelligenceEntity.t()
            | nil,
          :person =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsPersonPerson.t() | nil,
          :timezone =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeTimeZone.t() | nil
        }

  field(:complexQueriesRewrite,
    as: GoogleApi.ContentWarehouse.V1.Model.QualityGenieComplexQueriesComplexQueriesOutputRewrite
  )

  field(:audio, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaAudio)
  field(:appAnnotation, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingAppAnnotation)

  field(:calendarReference,
    as: GoogleApi.ContentWarehouse.V1.Model.QualityQrewriteCalendarReference
  )

  field(:scalarValue,
    as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryScalarValue
  )

  field(:componentReference,
    as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefComponentReference
  )

  field(:timer, as: GoogleApi.ContentWarehouse.V1.Model.QualityActionsTimer)
  field(:money, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMoneyMoney)
  field(:dateTime, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeDateTime)

  field(:productivityListItem,
    as: GoogleApi.ContentWarehouse.V1.Model.AssistantProductivityListItem
  )

  field(:funcall, as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryFunctionCall)
  field(:deviceId, as: GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesDeviceId)
  field(:recurrence, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsRecurrence)

  field(:shoppingOffer,
    as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsShoppingAssistantOffer
  )

  field(:sensitiveValue,
    as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQuerySensitiveArgumentValueGuard
  )

  field(:shoppingMerchant,
    as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsShoppingAssistantMerchant
  )

  field(:deviceUserIdentity,
    as: GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesDeviceUserIdentity
  )

  field(:location, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingLocalLocation)

  field(:shoppingProduct,
    as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsShoppingAssistantProduct
  )

  field(:calendarEvent, as: GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesCalendarEvent)

  field(:media,
    as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaMediaAnnotation
  )

  field(:homeAutomationDevice,
    as:
      GoogleApi.ContentWarehouse.V1.Model.AssistantVerticalsHomeautomationProtoHomeAutomationDevice
  )

  field(:shoppingProductExpression,
    as:
      GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsShoppingAssistantProductExpression
  )

  field(:simpleValue,
    as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQuerySimpleValue
  )

  field(:sensitivity,
    as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersSensitivitySensitivity,
    type: :list
  )

  field(:duration, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeDuration)
  field(:onDevice, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsOnDevice)

  field(:messageNotification,
    as: GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesMessageNotification
  )

  field(:coreference,
    as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryCoreference
  )

  field(:narrativeNewsProvider,
    as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsNarrativeNewsNewsProvider
  )

  field(:reminder, as: GoogleApi.ContentWarehouse.V1.Model.QualityActionsReminder)

  field(:device,
    as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaCastDeviceAnnotation
  )

  field(:calendarEventWrapper,
    as: GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesCalendarEventWrapper
  )

  field(:number, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingNumberNumber)

  field(:shoppingStore,
    as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsShoppingAssistantStore
  )

  field(:aogSlot,
    as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingProtoActionsOnGoogleAogSlot
  )

  field(:personalIntelligenceEntity,
    as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingPersonalIntelligenceEntity
  )

  field(:person, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsPersonPerson)
  field(:timezone, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeTimeZone)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgumentValue do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgumentValue.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgumentValue do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
