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

defmodule GoogleApi.Vault.V1.Model.Query do
  @moduledoc """
  The query definition used for search and export.

  ## Attributes

  *   `accountInfo` (*type:* `GoogleApi.Vault.V1.Model.AccountInfo.t`, *default:* `nil`) - Required when **SearchMethod** is **ACCOUNT**.
  *   `calendarOptions` (*type:* `GoogleApi.Vault.V1.Model.CalendarOptions.t`, *default:* `nil`) - Set Calendar search-specific options.
  *   `corpus` (*type:* `String.t`, *default:* `nil`) - The Google Workspace service to search.
  *   `dataScope` (*type:* `String.t`, *default:* `nil`) - The data source to search.
  *   `driveOptions` (*type:* `GoogleApi.Vault.V1.Model.DriveOptions.t`, *default:* `nil`) - Set Drive search-specific options.
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - The end time for the search query. Specify in GMT. The value is rounded to 12 AM on the specified date.
  *   `geminiOptions` (*type:* `GoogleApi.Vault.V1.Model.GeminiOptions.t`, *default:* `nil`) - Set Gemini search-specific options.
  *   `hangoutsChatInfo` (*type:* `GoogleApi.Vault.V1.Model.HangoutsChatInfo.t`, *default:* `nil`) - Required when **SearchMethod** is **ROOM**. (read-only)
  *   `hangoutsChatOptions` (*type:* `GoogleApi.Vault.V1.Model.HangoutsChatOptions.t`, *default:* `nil`) - Set Chat search-specific options. (read-only)
  *   `mailOptions` (*type:* `GoogleApi.Vault.V1.Model.MailOptions.t`, *default:* `nil`) - Set Gmail search-specific options.
  *   `method` (*type:* `String.t`, *default:* `nil`) - The entity to search. This field replaces **searchMethod** to support shared drives. When **searchMethod** is **TEAM_DRIVE**, the response of this field is **SHARED_DRIVE**.
  *   `orgUnitInfo` (*type:* `GoogleApi.Vault.V1.Model.OrgUnitInfo.t`, *default:* `nil`) - Required when **SearchMethod** is **ORG_UNIT**.
  *   `searchMethod` (*type:* `String.t`, *default:* `nil`) - The search method to use.
  *   `sharedDriveInfo` (*type:* `GoogleApi.Vault.V1.Model.SharedDriveInfo.t`, *default:* `nil`) - Required when **SearchMethod** is **SHARED_DRIVE**.
  *   `sitesUrlInfo` (*type:* `GoogleApi.Vault.V1.Model.SitesUrlInfo.t`, *default:* `nil`) - Required when **SearchMethod** is **SITES_URL**.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - The start time for the search query. Specify in GMT. The value is rounded to 12 AM on the specified date.
  *   `teamDriveInfo` (*type:* `GoogleApi.Vault.V1.Model.TeamDriveInfo.t`, *default:* `nil`) - Required when **SearchMethod** is **TEAM_DRIVE**.
  *   `terms` (*type:* `String.t`, *default:* `nil`) - Service-specific [search operators](https://support.google.com/vault/answer/2474474) to filter search results.
  *   `timeZone` (*type:* `String.t`, *default:* `nil`) - The time zone name. It should be an IANA TZ name, such as "America/Los_Angeles". For a list of time zone names, see [Time Zone](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). For more information about how Vault uses time zones, see [the Vault help center](https://support.google.com/vault/answer/6092995#time).
  *   `voiceOptions` (*type:* `GoogleApi.Vault.V1.Model.VoiceOptions.t`, *default:* `nil`) - Set Voice search-specific options.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountInfo => GoogleApi.Vault.V1.Model.AccountInfo.t() | nil,
          :calendarOptions => GoogleApi.Vault.V1.Model.CalendarOptions.t() | nil,
          :corpus => String.t() | nil,
          :dataScope => String.t() | nil,
          :driveOptions => GoogleApi.Vault.V1.Model.DriveOptions.t() | nil,
          :endTime => DateTime.t() | nil,
          :geminiOptions => GoogleApi.Vault.V1.Model.GeminiOptions.t() | nil,
          :hangoutsChatInfo => GoogleApi.Vault.V1.Model.HangoutsChatInfo.t() | nil,
          :hangoutsChatOptions => GoogleApi.Vault.V1.Model.HangoutsChatOptions.t() | nil,
          :mailOptions => GoogleApi.Vault.V1.Model.MailOptions.t() | nil,
          :method => String.t() | nil,
          :orgUnitInfo => GoogleApi.Vault.V1.Model.OrgUnitInfo.t() | nil,
          :searchMethod => String.t() | nil,
          :sharedDriveInfo => GoogleApi.Vault.V1.Model.SharedDriveInfo.t() | nil,
          :sitesUrlInfo => GoogleApi.Vault.V1.Model.SitesUrlInfo.t() | nil,
          :startTime => DateTime.t() | nil,
          :teamDriveInfo => GoogleApi.Vault.V1.Model.TeamDriveInfo.t() | nil,
          :terms => String.t() | nil,
          :timeZone => String.t() | nil,
          :voiceOptions => GoogleApi.Vault.V1.Model.VoiceOptions.t() | nil
        }

  field(:accountInfo, as: GoogleApi.Vault.V1.Model.AccountInfo)
  field(:calendarOptions, as: GoogleApi.Vault.V1.Model.CalendarOptions)
  field(:corpus)
  field(:dataScope)
  field(:driveOptions, as: GoogleApi.Vault.V1.Model.DriveOptions)
  field(:endTime, as: DateTime)
  field(:geminiOptions, as: GoogleApi.Vault.V1.Model.GeminiOptions)
  field(:hangoutsChatInfo, as: GoogleApi.Vault.V1.Model.HangoutsChatInfo)
  field(:hangoutsChatOptions, as: GoogleApi.Vault.V1.Model.HangoutsChatOptions)
  field(:mailOptions, as: GoogleApi.Vault.V1.Model.MailOptions)
  field(:method)
  field(:orgUnitInfo, as: GoogleApi.Vault.V1.Model.OrgUnitInfo)
  field(:searchMethod)
  field(:sharedDriveInfo, as: GoogleApi.Vault.V1.Model.SharedDriveInfo)
  field(:sitesUrlInfo, as: GoogleApi.Vault.V1.Model.SitesUrlInfo)
  field(:startTime, as: DateTime)
  field(:teamDriveInfo, as: GoogleApi.Vault.V1.Model.TeamDriveInfo)
  field(:terms)
  field(:timeZone)
  field(:voiceOptions, as: GoogleApi.Vault.V1.Model.VoiceOptions)
end

defimpl Poison.Decoder, for: GoogleApi.Vault.V1.Model.Query do
  def decode(value, options) do
    GoogleApi.Vault.V1.Model.Query.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vault.V1.Model.Query do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
