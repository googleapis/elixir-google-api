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

defmodule GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig do
  @moduledoc """
  Configuration that applies to all conversations.

  ## Attributes

  *   `agentChannel` (*type:* `integer()`, *default:* `nil`) - Optional. Indicates which of the channels, 1 or 2, contains the agent. Note that this must be set for conversations to be properly displayed and analyzed.
  *   `agentId` (*type:* `String.t`, *default:* `nil`) - Optional. An opaque, user-specified string representing a human agent who handled all conversations in the import. Note that this will be overridden if per-conversation metadata is provided through the `metadata_bucket_uri`.
  *   `customerChannel` (*type:* `integer()`, *default:* `nil`) - Optional. Indicates which of the channels, 1 or 2, contains the agent. Note that this must be set for conversations to be properly displayed and analyzed.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :agentChannel => integer() | nil,
          :agentId => String.t() | nil,
          :customerChannel => integer() | nil
        }

  field(:agentChannel)
  field(:agentId)
  field(:customerChannel)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig do
  def decode(value, options) do
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
