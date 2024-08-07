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

defmodule GoogleApi.Vault.V1.Model.CorpusQuery do
  @moduledoc """
  Service-specific options for holds.

  ## Attributes

  *   `calendarQuery` (*type:* `GoogleApi.Vault.V1.Model.HeldCalendarQuery.t`, *default:* `nil`) - Service-specific options for Calendar holds. If set, **CorpusType** must be **CALENDAR**.
  *   `driveQuery` (*type:* `GoogleApi.Vault.V1.Model.HeldDriveQuery.t`, *default:* `nil`) - Service-specific options for Drive holds. If set, **CorpusType** must be **DRIVE**.
  *   `groupsQuery` (*type:* `GoogleApi.Vault.V1.Model.HeldGroupsQuery.t`, *default:* `nil`) - Service-specific options for Groups holds. If set, **CorpusType** must be **GROUPS**.
  *   `hangoutsChatQuery` (*type:* `GoogleApi.Vault.V1.Model.HeldHangoutsChatQuery.t`, *default:* `nil`) - Service-specific options for Chat holds. If set, **CorpusType** must be **HANGOUTS_CHAT**.
  *   `mailQuery` (*type:* `GoogleApi.Vault.V1.Model.HeldMailQuery.t`, *default:* `nil`) - Service-specific options for Gmail holds. If set, **CorpusType** must be **MAIL**.
  *   `voiceQuery` (*type:* `GoogleApi.Vault.V1.Model.HeldVoiceQuery.t`, *default:* `nil`) - Service-specific options for Voice holds. If set, **CorpusType** must be **VOICE**.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :calendarQuery => GoogleApi.Vault.V1.Model.HeldCalendarQuery.t() | nil,
          :driveQuery => GoogleApi.Vault.V1.Model.HeldDriveQuery.t() | nil,
          :groupsQuery => GoogleApi.Vault.V1.Model.HeldGroupsQuery.t() | nil,
          :hangoutsChatQuery => GoogleApi.Vault.V1.Model.HeldHangoutsChatQuery.t() | nil,
          :mailQuery => GoogleApi.Vault.V1.Model.HeldMailQuery.t() | nil,
          :voiceQuery => GoogleApi.Vault.V1.Model.HeldVoiceQuery.t() | nil
        }

  field(:calendarQuery, as: GoogleApi.Vault.V1.Model.HeldCalendarQuery)
  field(:driveQuery, as: GoogleApi.Vault.V1.Model.HeldDriveQuery)
  field(:groupsQuery, as: GoogleApi.Vault.V1.Model.HeldGroupsQuery)
  field(:hangoutsChatQuery, as: GoogleApi.Vault.V1.Model.HeldHangoutsChatQuery)
  field(:mailQuery, as: GoogleApi.Vault.V1.Model.HeldMailQuery)
  field(:voiceQuery, as: GoogleApi.Vault.V1.Model.HeldVoiceQuery)
end

defimpl Poison.Decoder, for: GoogleApi.Vault.V1.Model.CorpusQuery do
  def decode(value, options) do
    GoogleApi.Vault.V1.Model.CorpusQuery.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vault.V1.Model.CorpusQuery do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
