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

defmodule GoogleApi.Chat.V1.Model.SpaceEvent do
  @moduledoc """
  An event that happens in a specific space.

  ## Attributes

  *   `eventTime` (*type:* `DateTime.t`, *default:* `nil`) - Time of the event.
  *   `eventType` (*type:* `String.t`, *default:* `nil`) - Type of the space event. The following event types are supported: * New membership: `google.workspace.chat.membership.v1.created` * Deleted membership: `google.workspace.chat.membership.v1.deleted` * Updated membership: `google.workspace.chat.membership.v1.updated` * New message: `google.workspace.chat.message.v1.created` * Deleted message: `google.workspace.chat.message.v1.deleted` * Updated message: `google.workspace.chat.message.v1.updated` * New reaction: `google.workspace.chat.reaction.v1.created` * Deleted reaction: `google.workspace.chat.reaction.v1.deleted` * Updated space: `google.workspace.chat.space.v1.updated` Note that requesting or subscribing to the preceding event types automatically sets up the subscription or response to also return batched versions of the event type. For example, if you subscribe to `google.workspace.chat.membership.v1.created`, you also receive events for `google.workspace.chat.membership.v1.batchCreated`. For more details see https://developers.google.com/workspace/events/guides/events-chat#output_only_event_types.
  *   `membershipBatchCreatedEventData` (*type:* `GoogleApi.Chat.V1.Model.MembershipBatchCreatedEventData.t`, *default:* `nil`) - Payload for batch new membership events where the `EventType` field is `google.workspace.chat.membership.v1.batchCreated`.
  *   `membershipBatchDeletedEventData` (*type:* `GoogleApi.Chat.V1.Model.MembershipBatchDeletedEventData.t`, *default:* `nil`) - Payload for batch deleted membership events where the `EventType` field is `google.workspace.chat.membership.v1.batchDeleted`.
  *   `membershipBatchUpdatedEventData` (*type:* `GoogleApi.Chat.V1.Model.MembershipBatchUpdatedEventData.t`, *default:* `nil`) - Payload for batch updated membership events where the `EventType` field is `google.workspace.chat.membership.v1.batchUpdated`.
  *   `membershipCreatedEventData` (*type:* `GoogleApi.Chat.V1.Model.MembershipCreatedEventData.t`, *default:* `nil`) - Payload for new membership events where the `EventType` field is `google.workspace.chat.membership.v1.created`.
  *   `membershipDeletedEventData` (*type:* `GoogleApi.Chat.V1.Model.MembershipDeletedEventData.t`, *default:* `nil`) - Payload for deleted membership events where the `EventType` field is `google.workspace.chat.membership.v1.deleted`.
  *   `membershipUpdatedEventData` (*type:* `GoogleApi.Chat.V1.Model.MembershipUpdatedEventData.t`, *default:* `nil`) - Payload for updated membership events where the `EventType` field is `google.workspace.chat.membership.v1.updated`.
  *   `messageBatchCreatedEventData` (*type:* `GoogleApi.Chat.V1.Model.MessageBatchCreatedEventData.t`, *default:* `nil`) - Payload for batch new message events where the `EventType` field is `google.workspace.chat.message.v1.batchCreated`.
  *   `messageBatchDeletedEventData` (*type:* `GoogleApi.Chat.V1.Model.MessageBatchDeletedEventData.t`, *default:* `nil`) - Payload for batch deleted message events where the `EventType` field is `google.workspace.chat.message.v1.batchDeleted`.
  *   `messageBatchUpdatedEventData` (*type:* `GoogleApi.Chat.V1.Model.MessageBatchUpdatedEventData.t`, *default:* `nil`) - Payload for batch updated message events where the `EventType` field is `google.workspace.chat.message.v1.batchUpdated`.
  *   `messageCreatedEventData` (*type:* `GoogleApi.Chat.V1.Model.MessageCreatedEventData.t`, *default:* `nil`) - Payload for new message events where the `EventType` field is `google.workspace.chat.message.v1.created`.
  *   `messageDeletedEventData` (*type:* `GoogleApi.Chat.V1.Model.MessageDeletedEventData.t`, *default:* `nil`) - Payload for deleted message events where the `EventType` field is `google.workspace.chat.message.v1.deleted`.
  *   `messageUpdatedEventData` (*type:* `GoogleApi.Chat.V1.Model.MessageUpdatedEventData.t`, *default:* `nil`) - Payload for updated message events where the `EventType` field is `google.workspace.chat.message.v1.updated`.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name of the space event. Format: `spaces/{space}/spaceEvents/{spaceEvent}`
  *   `reactionBatchCreatedEventData` (*type:* `GoogleApi.Chat.V1.Model.ReactionBatchCreatedEventData.t`, *default:* `nil`) - Payload for batch new reaction events where the `EventType` field is `google.workspace.chat.reaction.v1.batchCreated`.
  *   `reactionBatchDeletedEventData` (*type:* `GoogleApi.Chat.V1.Model.ReactionBatchDeletedEventData.t`, *default:* `nil`) - Payload for batch deleted reaction events where the `EventType` field is `google.workspace.chat.reaction.v1.batchDeleted`.
  *   `reactionCreatedEventData` (*type:* `GoogleApi.Chat.V1.Model.ReactionCreatedEventData.t`, *default:* `nil`) - Payload for new reaction events where the `EventType` field is `google.workspace.chat.reaction.v1.created`.
  *   `reactionDeletedEventData` (*type:* `GoogleApi.Chat.V1.Model.ReactionDeletedEventData.t`, *default:* `nil`) - Payload for deleted reaction events where the `EventType` field is `google.workspace.chat.reaction.v1.deleted`.
  *   `spaceBatchUpdatedEventData` (*type:* `GoogleApi.Chat.V1.Model.SpaceBatchUpdatedEventData.t`, *default:* `nil`) - Payload for batch updated space events where the `EventType` field is `google.workspace.chat.space.v1.batchUpdated`.
  *   `spaceUpdatedEventData` (*type:* `GoogleApi.Chat.V1.Model.SpaceUpdatedEventData.t`, *default:* `nil`) - Payload for updated space events where the `EventType` field is `google.workspace.chat.space.v1.updated`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :eventTime => DateTime.t() | nil,
          :eventType => String.t() | nil,
          :membershipBatchCreatedEventData =>
            GoogleApi.Chat.V1.Model.MembershipBatchCreatedEventData.t() | nil,
          :membershipBatchDeletedEventData =>
            GoogleApi.Chat.V1.Model.MembershipBatchDeletedEventData.t() | nil,
          :membershipBatchUpdatedEventData =>
            GoogleApi.Chat.V1.Model.MembershipBatchUpdatedEventData.t() | nil,
          :membershipCreatedEventData =>
            GoogleApi.Chat.V1.Model.MembershipCreatedEventData.t() | nil,
          :membershipDeletedEventData =>
            GoogleApi.Chat.V1.Model.MembershipDeletedEventData.t() | nil,
          :membershipUpdatedEventData =>
            GoogleApi.Chat.V1.Model.MembershipUpdatedEventData.t() | nil,
          :messageBatchCreatedEventData =>
            GoogleApi.Chat.V1.Model.MessageBatchCreatedEventData.t() | nil,
          :messageBatchDeletedEventData =>
            GoogleApi.Chat.V1.Model.MessageBatchDeletedEventData.t() | nil,
          :messageBatchUpdatedEventData =>
            GoogleApi.Chat.V1.Model.MessageBatchUpdatedEventData.t() | nil,
          :messageCreatedEventData => GoogleApi.Chat.V1.Model.MessageCreatedEventData.t() | nil,
          :messageDeletedEventData => GoogleApi.Chat.V1.Model.MessageDeletedEventData.t() | nil,
          :messageUpdatedEventData => GoogleApi.Chat.V1.Model.MessageUpdatedEventData.t() | nil,
          :name => String.t() | nil,
          :reactionBatchCreatedEventData =>
            GoogleApi.Chat.V1.Model.ReactionBatchCreatedEventData.t() | nil,
          :reactionBatchDeletedEventData =>
            GoogleApi.Chat.V1.Model.ReactionBatchDeletedEventData.t() | nil,
          :reactionCreatedEventData => GoogleApi.Chat.V1.Model.ReactionCreatedEventData.t() | nil,
          :reactionDeletedEventData => GoogleApi.Chat.V1.Model.ReactionDeletedEventData.t() | nil,
          :spaceBatchUpdatedEventData =>
            GoogleApi.Chat.V1.Model.SpaceBatchUpdatedEventData.t() | nil,
          :spaceUpdatedEventData => GoogleApi.Chat.V1.Model.SpaceUpdatedEventData.t() | nil
        }

  field(:eventTime, as: DateTime)
  field(:eventType)

  field(:membershipBatchCreatedEventData,
    as: GoogleApi.Chat.V1.Model.MembershipBatchCreatedEventData
  )

  field(:membershipBatchDeletedEventData,
    as: GoogleApi.Chat.V1.Model.MembershipBatchDeletedEventData
  )

  field(:membershipBatchUpdatedEventData,
    as: GoogleApi.Chat.V1.Model.MembershipBatchUpdatedEventData
  )

  field(:membershipCreatedEventData, as: GoogleApi.Chat.V1.Model.MembershipCreatedEventData)
  field(:membershipDeletedEventData, as: GoogleApi.Chat.V1.Model.MembershipDeletedEventData)
  field(:membershipUpdatedEventData, as: GoogleApi.Chat.V1.Model.MembershipUpdatedEventData)
  field(:messageBatchCreatedEventData, as: GoogleApi.Chat.V1.Model.MessageBatchCreatedEventData)
  field(:messageBatchDeletedEventData, as: GoogleApi.Chat.V1.Model.MessageBatchDeletedEventData)
  field(:messageBatchUpdatedEventData, as: GoogleApi.Chat.V1.Model.MessageBatchUpdatedEventData)
  field(:messageCreatedEventData, as: GoogleApi.Chat.V1.Model.MessageCreatedEventData)
  field(:messageDeletedEventData, as: GoogleApi.Chat.V1.Model.MessageDeletedEventData)
  field(:messageUpdatedEventData, as: GoogleApi.Chat.V1.Model.MessageUpdatedEventData)
  field(:name)
  field(:reactionBatchCreatedEventData, as: GoogleApi.Chat.V1.Model.ReactionBatchCreatedEventData)
  field(:reactionBatchDeletedEventData, as: GoogleApi.Chat.V1.Model.ReactionBatchDeletedEventData)
  field(:reactionCreatedEventData, as: GoogleApi.Chat.V1.Model.ReactionCreatedEventData)
  field(:reactionDeletedEventData, as: GoogleApi.Chat.V1.Model.ReactionDeletedEventData)
  field(:spaceBatchUpdatedEventData, as: GoogleApi.Chat.V1.Model.SpaceBatchUpdatedEventData)
  field(:spaceUpdatedEventData, as: GoogleApi.Chat.V1.Model.SpaceUpdatedEventData)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.SpaceEvent do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.SpaceEvent.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.SpaceEvent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
