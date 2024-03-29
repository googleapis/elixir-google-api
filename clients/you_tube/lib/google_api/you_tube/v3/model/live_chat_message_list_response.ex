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

defmodule GoogleApi.YouTube.V3.Model.LiveChatMessageListResponse do
  @moduledoc """


  ## Attributes

  *   `activePollItem` (*type:* `GoogleApi.YouTube.V3.Model.LiveChatMessage.t`, *default:* `nil`) - Set when there is an active poll.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Etag of this resource.
  *   `eventId` (*type:* `String.t`, *default:* `nil`) - Serialized EventId of the request which produced this response.
  *   `items` (*type:* `list(GoogleApi.YouTube.V3.Model.LiveChatMessage.t)`, *default:* `nil`) - 
  *   `kind` (*type:* `String.t`, *default:* `youtube#liveChatMessageListResponse`) - Identifies what kind of resource this is. Value: the fixed string "youtube#liveChatMessageListResponse".
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - 
  *   `offlineAt` (*type:* `DateTime.t`, *default:* `nil`) - The date and time when the underlying stream went offline.
  *   `pageInfo` (*type:* `GoogleApi.YouTube.V3.Model.PageInfo.t`, *default:* `nil`) - General pagination information.
  *   `pollingIntervalMillis` (*type:* `integer()`, *default:* `nil`) - The amount of time the client should wait before polling again.
  *   `tokenPagination` (*type:* `GoogleApi.YouTube.V3.Model.TokenPagination.t`, *default:* `nil`) - 
  *   `visitorId` (*type:* `String.t`, *default:* `nil`) - The visitorId identifies the visitor.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :activePollItem => GoogleApi.YouTube.V3.Model.LiveChatMessage.t() | nil,
          :etag => String.t() | nil,
          :eventId => String.t() | nil,
          :items => list(GoogleApi.YouTube.V3.Model.LiveChatMessage.t()) | nil,
          :kind => String.t() | nil,
          :nextPageToken => String.t() | nil,
          :offlineAt => DateTime.t() | nil,
          :pageInfo => GoogleApi.YouTube.V3.Model.PageInfo.t() | nil,
          :pollingIntervalMillis => integer() | nil,
          :tokenPagination => GoogleApi.YouTube.V3.Model.TokenPagination.t() | nil,
          :visitorId => String.t() | nil
        }

  field(:activePollItem, as: GoogleApi.YouTube.V3.Model.LiveChatMessage)
  field(:etag)
  field(:eventId)
  field(:items, as: GoogleApi.YouTube.V3.Model.LiveChatMessage, type: :list)
  field(:kind)
  field(:nextPageToken)
  field(:offlineAt, as: DateTime)
  field(:pageInfo, as: GoogleApi.YouTube.V3.Model.PageInfo)
  field(:pollingIntervalMillis)
  field(:tokenPagination, as: GoogleApi.YouTube.V3.Model.TokenPagination)
  field(:visitorId)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.LiveChatMessageListResponse do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.LiveChatMessageListResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.LiveChatMessageListResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
