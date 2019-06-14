# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Vault.V1.Model.Query do
  @moduledoc """
  A query definition relevant for search & export.

  ## Attributes

  - accountInfo (GoogleApi.Vault.V1.Model.AccountInfo.t): When 'ACCOUNT' is chosen as search method,
  account_info needs to be specified. Defaults to `nil`.
  - corpus (String.t): The corpus to search. Defaults to `nil`.
  - dataScope (String.t): The data source to search from. Defaults to `nil`.
  - driveOptions (GoogleApi.Vault.V1.Model.DriveOptions.t): For Drive search, specify more options in this field. Defaults to `nil`.
  - endTime (DateTime.t): The end time range for the search query. These timestamps are in GMT and
  rounded down to the start of the given date. Defaults to `nil`.
  - hangoutsChatInfo (GoogleApi.Vault.V1.Model.HangoutsChatInfo.t): When 'ROOM' is chosen as search method, hangout_chats_info needs to be
  specified. (read-only) Defaults to `nil`.
  - hangoutsChatOptions (GoogleApi.Vault.V1.Model.HangoutsChatOptions.t): For hangouts chat search, specify more options in this field. (read-only) Defaults to `nil`.
  - mailOptions (GoogleApi.Vault.V1.Model.MailOptions.t): For mail search, specify more options in this field. Defaults to `nil`.
  - method (String.t): The search method to use. This field is similar to the search_method field
  but is introduced to support shared drives. It supports all
  search method types. In case the search_method is TEAM_DRIVE the response
  of this field will be SHARED_DRIVE only. Defaults to `nil`.
  - orgUnitInfo (GoogleApi.Vault.V1.Model.OrgUnitInfo.t): When 'ORG_UNIT' is chosen as as search method, org_unit_info needs
  to be specified. Defaults to `nil`.
  - searchMethod (String.t): The search method to use. Defaults to `nil`.
  - sharedDriveInfo (GoogleApi.Vault.V1.Model.SharedDriveInfo.t): When 'SHARED_DRIVE' is chosen as search method, shared_drive_info needs
  to be specified. Defaults to `nil`.
  - startTime (DateTime.t): The start time range for the search query. These timestamps are in GMT and
  rounded down to the start of the given date. Defaults to `nil`.
  - teamDriveInfo (GoogleApi.Vault.V1.Model.TeamDriveInfo.t): When 'TEAM_DRIVE' is chosen as search method, team_drive_info needs to be
  specified. Defaults to `nil`.
  - terms (String.t): The corpus-specific
  <a href="https://support.google.com/vault/answer/2474474">search
  operators</a> used to generate search results. Defaults to `nil`.
  - timeZone (String.t): The time zone name.
  It should be an IANA TZ name, such as "America/Los_Angeles".
  For more information, see
  <a href="https://en.wikipedia.org/wiki/List_of_tz_database_time_zones">Time
  Zone</a>. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountInfo => GoogleApi.Vault.V1.Model.AccountInfo.t(),
          :corpus => String.t(),
          :dataScope => String.t(),
          :driveOptions => GoogleApi.Vault.V1.Model.DriveOptions.t(),
          :endTime => DateTime.t(),
          :hangoutsChatInfo => GoogleApi.Vault.V1.Model.HangoutsChatInfo.t(),
          :hangoutsChatOptions => GoogleApi.Vault.V1.Model.HangoutsChatOptions.t(),
          :mailOptions => GoogleApi.Vault.V1.Model.MailOptions.t(),
          :method => String.t(),
          :orgUnitInfo => GoogleApi.Vault.V1.Model.OrgUnitInfo.t(),
          :searchMethod => String.t(),
          :sharedDriveInfo => GoogleApi.Vault.V1.Model.SharedDriveInfo.t(),
          :startTime => DateTime.t(),
          :teamDriveInfo => GoogleApi.Vault.V1.Model.TeamDriveInfo.t(),
          :terms => String.t(),
          :timeZone => String.t()
        }

  field(:accountInfo, as: GoogleApi.Vault.V1.Model.AccountInfo)
  field(:corpus)
  field(:dataScope)
  field(:driveOptions, as: GoogleApi.Vault.V1.Model.DriveOptions)
  field(:endTime, as: DateTime)
  field(:hangoutsChatInfo, as: GoogleApi.Vault.V1.Model.HangoutsChatInfo)
  field(:hangoutsChatOptions, as: GoogleApi.Vault.V1.Model.HangoutsChatOptions)
  field(:mailOptions, as: GoogleApi.Vault.V1.Model.MailOptions)
  field(:method)
  field(:orgUnitInfo, as: GoogleApi.Vault.V1.Model.OrgUnitInfo)
  field(:searchMethod)
  field(:sharedDriveInfo, as: GoogleApi.Vault.V1.Model.SharedDriveInfo)
  field(:startTime, as: DateTime)
  field(:teamDriveInfo, as: GoogleApi.Vault.V1.Model.TeamDriveInfo)
  field(:terms)
  field(:timeZone)
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
