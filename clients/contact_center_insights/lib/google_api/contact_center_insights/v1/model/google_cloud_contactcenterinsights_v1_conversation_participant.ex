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

defmodule GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1ConversationParticipant do
  @moduledoc """
  The call participant speaking for a given utterance.

  ## Attributes

  *   `dialogflowParticipant` (*type:* `String.t`, *default:* `nil`) - Deprecated. Use `dialogflow_participant_name` instead. The name of the Dialogflow participant. Format: projects/{project}/locations/{location}/conversations/{conversation}/participants/{participant}
  *   `dialogflowParticipantName` (*type:* `String.t`, *default:* `nil`) - The name of the participant provided by Dialogflow. Format: projects/{project}/locations/{location}/conversations/{conversation}/participants/{participant}
  *   `obfuscatedExternalUserId` (*type:* `String.t`, *default:* `nil`) - Obfuscated user ID from Dialogflow.
  *   `role` (*type:* `String.t`, *default:* `nil`) - The role of the participant.
  *   `userId` (*type:* `String.t`, *default:* `nil`) - A user-specified ID representing the participant.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dialogflowParticipant => String.t() | nil,
          :dialogflowParticipantName => String.t() | nil,
          :obfuscatedExternalUserId => String.t() | nil,
          :role => String.t() | nil,
          :userId => String.t() | nil
        }

  field(:dialogflowParticipant)
  field(:dialogflowParticipantName)
  field(:obfuscatedExternalUserId)
  field(:role)
  field(:userId)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1ConversationParticipant do
  def decode(value, options) do
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1ConversationParticipant.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1ConversationParticipant do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
