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

defmodule GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsApiCommentEnforcementStatusUserModerationDecision do
  @moduledoc """


  ## Attributes

  *   `moderationStatus` (*type:* `String.t`, *default:* `nil`) - The moderation status of comments due to privileged user decision. Privileged user can manually reject comments in multiple ways or approve held comments.
  *   `rejectType` (*type:* `String.t`, *default:* `nil`) - For comments with REJECTED status, it can result from privileged users directly rejecting comments or reviewing comments that have been held, for both entity comment and live chat, but reject type is only captured for live chat because we are not able to distinguish the 2 types from data model for entity comment.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :moderationStatus => String.t() | nil,
          :rejectType => String.t() | nil
        }

  field(:moderationStatus)
  field(:rejectType)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsApiCommentEnforcementStatusUserModerationDecision do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsApiCommentEnforcementStatusUserModerationDecision.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsApiCommentEnforcementStatusUserModerationDecision do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
