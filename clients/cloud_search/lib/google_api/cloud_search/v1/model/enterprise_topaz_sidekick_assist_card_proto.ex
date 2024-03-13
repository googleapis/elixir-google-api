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

defmodule GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickAssistCardProto do
  @moduledoc """
  Wrapper proto for the Assist cards.

  ## Attributes

  *   `agendaGroupCardProto` (*type:* `GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickAgendaGroupCardProto.t`, *default:* `nil`) - Agenda group card.
  *   `cardMetadata` (*type:* `GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickCardMetadata.t`, *default:* `nil`) - Card metadata such as chronology and render mode of the card.
  *   `cardType` (*type:* `String.t`, *default:* `nil`) - Card type.
  *   `conflictingMeetingsCard` (*type:* `GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickConflictingEventsCardProto.t`, *default:* `nil`) - Conflicting events card.
  *   `documentListCard` (*type:* `GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickDocumentPerCategoryList.t`, *default:* `nil`) - Answer card for documents that are applicable to the current query.
  *   `documentsWithMentions` (*type:* `GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickDocumentPerCategoryList.t`, *default:* `nil`) - Documents with mentions.
  *   `findMeetingTimeCard` (*type:* `GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickFindMeetingTimeCardProto.t`, *default:* `nil`) - Find meeting time card.
  *   `genericAnswerCard` (*type:* `GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickGenericAnswerCard.t`, *default:* `nil`) - Generic answer card.
  *   `getAndKeepAheadCard` (*type:* `GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickGetAndKeepAheadCardProto.t`, *default:* `nil`) - Get and keep ahead card.
  *   `meeting` (*type:* `GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickAgendaEntry.t`, *default:* `nil`) - Meeting card.
  *   `meetingNotesCard` (*type:* `GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickMeetingNotesCardProto.t`, *default:* `nil`) - Meeting notes card.
  *   `meetingNotesCardRequest` (*type:* `GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickMeetingNotesCardRequest.t`, *default:* `nil`) - Request for meeting notes card.
  *   `peopleDisambiguationCard` (*type:* `GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickPeopleDisambiguationCard.t`, *default:* `nil`) - The people disambiguation card.
  *   `peoplePromotionCard` (*type:* `GoogleApi.CloudSearch.V1.Model.PeoplePromotionCard.t`, *default:* `nil`) - People Search promotion card.
  *   `personAnswerCard` (*type:* `GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickPeopleAnswerPersonAnswerCard.t`, *default:* `nil`) - Answer card that represents a single person.
  *   `personProfileCard` (*type:* `GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickPersonProfileCard.t`, *default:* `nil`) - Full profile card.
  *   `personalizedDocsCard` (*type:* `GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickPersonalizedDocsCardProto.t`, *default:* `nil`) - Card with recommended documents for the user.
  *   `relatedPeopleAnswerCard` (*type:* `GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard.t`, *default:* `nil`) - Answer card that represents a list of people related to a person.
  *   `shareMeetingDocsCard` (*type:* `GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickShareMeetingDocsCardProto.t`, *default:* `nil`) - Sahre meeting docs card.
  *   `sharedDocuments` (*type:* `GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickDocumentPerCategoryList.t`, *default:* `nil`) - Shared documents.
  *   `suggestedQueryAnswerCard` (*type:* `GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickAnswerSuggestedQueryAnswerCard.t`, *default:* `nil`) - Answer card for what natural language queries the user can ask.
  *   `thirdPartyAnswerCard` (*type:* `GoogleApi.CloudSearch.V1.Model.ThirdPartyGenericCard.t`, *default:* `nil`) - Third party answer cards.
  *   `workInProgressCardProto` (*type:* `GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickRecentDocumentsCardProto.t`, *default:* `nil`) - Work In Progress card.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :agendaGroupCardProto =>
            GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickAgendaGroupCardProto.t() | nil,
          :cardMetadata =>
            GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickCardMetadata.t() | nil,
          :cardType => String.t() | nil,
          :conflictingMeetingsCard =>
            GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickConflictingEventsCardProto.t()
            | nil,
          :documentListCard =>
            GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickDocumentPerCategoryList.t()
            | nil,
          :documentsWithMentions =>
            GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickDocumentPerCategoryList.t()
            | nil,
          :findMeetingTimeCard =>
            GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickFindMeetingTimeCardProto.t()
            | nil,
          :genericAnswerCard =>
            GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickGenericAnswerCard.t() | nil,
          :getAndKeepAheadCard =>
            GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickGetAndKeepAheadCardProto.t()
            | nil,
          :meeting => GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickAgendaEntry.t() | nil,
          :meetingNotesCard =>
            GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickMeetingNotesCardProto.t() | nil,
          :meetingNotesCardRequest =>
            GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickMeetingNotesCardRequest.t()
            | nil,
          :peopleDisambiguationCard =>
            GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickPeopleDisambiguationCard.t()
            | nil,
          :peoplePromotionCard => GoogleApi.CloudSearch.V1.Model.PeoplePromotionCard.t() | nil,
          :personAnswerCard =>
            GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickPeopleAnswerPersonAnswerCard.t()
            | nil,
          :personProfileCard =>
            GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickPersonProfileCard.t() | nil,
          :personalizedDocsCard =>
            GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickPersonalizedDocsCardProto.t()
            | nil,
          :relatedPeopleAnswerCard =>
            GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard.t()
            | nil,
          :shareMeetingDocsCard =>
            GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickShareMeetingDocsCardProto.t()
            | nil,
          :sharedDocuments =>
            GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickDocumentPerCategoryList.t()
            | nil,
          :suggestedQueryAnswerCard =>
            GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickAnswerSuggestedQueryAnswerCard.t()
            | nil,
          :thirdPartyAnswerCard => GoogleApi.CloudSearch.V1.Model.ThirdPartyGenericCard.t() | nil,
          :workInProgressCardProto =>
            GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickRecentDocumentsCardProto.t()
            | nil
        }

  field(:agendaGroupCardProto,
    as: GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickAgendaGroupCardProto
  )

  field(:cardMetadata, as: GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickCardMetadata)
  field(:cardType)

  field(:conflictingMeetingsCard,
    as: GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickConflictingEventsCardProto
  )

  field(:documentListCard,
    as: GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickDocumentPerCategoryList
  )

  field(:documentsWithMentions,
    as: GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickDocumentPerCategoryList
  )

  field(:findMeetingTimeCard,
    as: GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickFindMeetingTimeCardProto
  )

  field(:genericAnswerCard,
    as: GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickGenericAnswerCard
  )

  field(:getAndKeepAheadCard,
    as: GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickGetAndKeepAheadCardProto
  )

  field(:meeting, as: GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickAgendaEntry)

  field(:meetingNotesCard,
    as: GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickMeetingNotesCardProto
  )

  field(:meetingNotesCardRequest,
    as: GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickMeetingNotesCardRequest
  )

  field(:peopleDisambiguationCard,
    as: GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickPeopleDisambiguationCard
  )

  field(:peoplePromotionCard, as: GoogleApi.CloudSearch.V1.Model.PeoplePromotionCard)

  field(:personAnswerCard,
    as: GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickPeopleAnswerPersonAnswerCard
  )

  field(:personProfileCard,
    as: GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickPersonProfileCard
  )

  field(:personalizedDocsCard,
    as: GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickPersonalizedDocsCardProto
  )

  field(:relatedPeopleAnswerCard,
    as: GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard
  )

  field(:shareMeetingDocsCard,
    as: GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickShareMeetingDocsCardProto
  )

  field(:sharedDocuments,
    as: GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickDocumentPerCategoryList
  )

  field(:suggestedQueryAnswerCard,
    as: GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickAnswerSuggestedQueryAnswerCard
  )

  field(:thirdPartyAnswerCard, as: GoogleApi.CloudSearch.V1.Model.ThirdPartyGenericCard)

  field(:workInProgressCardProto,
    as: GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickRecentDocumentsCardProto
  )
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickAssistCardProto do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickAssistCardProto.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickAssistCardProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end