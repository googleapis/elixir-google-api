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

defmodule GoogleApi.CloudSearch.V1.Model.PersonCore do
  @moduledoc """
  Information for rendering a person. NEXT ID: 37

  ## Attributes

  *   `totalFteCount` (*type:* `String.t`, *default:* `nil`) - The sum of all profile owner's reports and their own full-time-equivalents in ‰ (e.g. 1800 if one report is working 80% and profile owner 100%).
  *   `mission` (*type:* `String.t`, *default:* `nil`) - Custom mission statement the profile owner has added.
  *   `keywordTypes` (*type:* `list(String.t)`, *default:* `nil`) - List of keys to use from the map 'keywords'.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Human-readable Unicode display name.
  *   `availabilityStatus` (*type:* `String.t`, *default:* `nil`) - 
  *   `waldoComeBackTime` (*type:* `DateTime.t`, *default:* `nil`) - 
  *   `totalDlrCount` (*type:* `integer()`, *default:* `nil`) - Total count of the profile owner's dotted-line reports.
  *   `addressMeAs` (*type:* `String.t`, *default:* `nil`) - Instructions for how to address this person (e.g. custom pronouns). For google.com this is a set of pronouns from a defined list of options.
  *   `birthday` (*type:* `GoogleApi.CloudSearch.V1.Model.Date.t`, *default:* `nil`) - Person birthday.
  *   `phoneNumbers` (*type:* `list(GoogleApi.CloudSearch.V1.Model.EnterpriseTopazFrontendTeamsPersonCorePhoneNumber.t)`, *default:* `nil`) - 
  *   `keywords` (*type:* `map()`, *default:* `nil`) - Custom keywords the domain admin has added.
  *   `username` (*type:* `String.t`, *default:* `nil`) - External ID of type "login_id" for the profile. For google.com this is the username/LDAP.
  *   `department` (*type:* `String.t`, *default:* `nil`) - The person's Organization department, e.g. "People Operations". For google.com this is usually called "area".
  *   `officeLocation` (*type:* `String.t`, *default:* `nil`) - Office/building identifier within the company. For google.com this is the office code (e.g. "DE-MUC-ARP").
  *   `dottedLineReports` (*type:* `list(GoogleApi.CloudSearch.V1.Model.PersonCore.t)`, *default:* `nil`) - A subset of the profile owner's dotted-line reports. The number of entities here may be less than total_dlr_count. Note that not all fields of these PersonCores will be set, in particular, relationships will be empty.
  *   `costCenter` (*type:* `String.t`, *default:* `nil`) - Person's cost center as a string, e.g. "926: Googler Apps".
  *   `ftePermille` (*type:* `String.t`, *default:* `nil`) - Full-time equivalent (in ‰) (e.g. 800 for a person who's working 80%).
  *   `links` (*type:* `list(GoogleApi.CloudSearch.V1.Model.EnterpriseTopazFrontendTeamsLink.t)`, *default:* `nil`) - Custom links the profile owner has added.
  *   `photoUrl` (*type:* `GoogleApi.CloudSearch.V1.Model.SafeUrlProto.t`, *default:* `nil`) - Person photo.
  *   `location` (*type:* `String.t`, *default:* `nil`) - Detailed desk location within the company. For google.com this is the desk location code (e.g. "DE-MUC-ARP-6T2-6T2C0C") if the person has a desk.
  *   `admins` (*type:* `list(GoogleApi.CloudSearch.V1.Model.PersonCore.t)`, *default:* `nil`) - The profile owner's admins in no particular order. Note that not all fields of these PersonCores will be set, in particular, relationships will be empty.
  *   `dottedLineManagers` (*type:* `list(GoogleApi.CloudSearch.V1.Model.PersonCore.t)`, *default:* `nil`) - The profile owner's direct dotted line managers in no particular order. Note that not all fields of these PersonCores will be set, in particular, relationships will be empty.
  *   `directReports` (*type:* `list(GoogleApi.CloudSearch.V1.Model.PersonCore.t)`, *default:* `nil`) - A subset of the profile owner's direct reports. The number of entities here may be less than total_direct_reports_count, because typically ProfileResponse does not include all the person's reports, if there are too many to retrieve efficiently. Note that not all fields of these PersonCores will be set, in particular, relationships will be empty.
  *   `chatUrl` (*type:* `GoogleApi.CloudSearch.V1.Model.SafeUrlProto.t`, *default:* `nil`) - The URL to start a chat conversation with the profile owner. For google.com this is a Hangouts URL.
  *   `employeeId` (*type:* `String.t`, *default:* `nil`) - Person's employee number (external ID of type "organization") For google.com this is the badge number (e.g. 2 for Larry Page).
  *   `postalAddress` (*type:* `String.t`, *default:* `nil`) - Postal address of office/building.
  *   `managers` (*type:* `list(GoogleApi.CloudSearch.V1.Model.PersonCore.t)`, *default:* `nil`) - The profile owner's management chain from top to bottom, where managers[0] is the CEO, manager[N-2] is the person's manager's manager and managers[N-1] is the person's direct manager. Note that not all fields of these PersonCores will be set, in particular, relationships will be empty.
  *   `totalDirectReportsCount` (*type:* `integer()`, *default:* `nil`) - Total count of the profile owner's direct reports.
  *   `personId` (*type:* `String.t`, *default:* `nil`) - The person's obfuscated Gaia ID.
  *   `gmailUrl` (*type:* `String.t`, *default:* `nil`) - 
  *   `emails` (*type:* `list(String.t)`, *default:* `nil`) - E-mail addresses of the person. The primary or preferred email should be first.
  *   `geoLocation` (*type:* `GoogleApi.CloudSearch.V1.Model.MapInfo.t`, *default:* `nil`) - 
  *   `jobTitle` (*type:* `String.t`, *default:* `nil`) - Profile owner's job title (e.g. "Software Engineer"). For google.com this is the Workday preferred job title.
  *   `fingerprint` (*type:* `String.t`, *default:* `nil`) - A fingerprint used by PAPI to reliably determine if a resource has changed Externally it is used as part of the etag.
  *   `adminTo` (*type:* `list(GoogleApi.CloudSearch.V1.Model.PersonCore.t)`, *default:* `nil`) - People the profile owner is an admin to. Note that not all fields of these PersonCores will be set, in particular, relationships will be empty.
  *   `calendarUrl` (*type:* `GoogleApi.CloudSearch.V1.Model.SafeUrlProto.t`, *default:* `nil`) - The URL to open the profile owner's primary calendar.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :totalFteCount => String.t() | nil,
          :mission => String.t() | nil,
          :keywordTypes => list(String.t()) | nil,
          :name => String.t() | nil,
          :availabilityStatus => String.t() | nil,
          :waldoComeBackTime => DateTime.t() | nil,
          :totalDlrCount => integer() | nil,
          :addressMeAs => String.t() | nil,
          :birthday => GoogleApi.CloudSearch.V1.Model.Date.t() | nil,
          :phoneNumbers =>
            list(
              GoogleApi.CloudSearch.V1.Model.EnterpriseTopazFrontendTeamsPersonCorePhoneNumber.t()
            )
            | nil,
          :keywords => map() | nil,
          :username => String.t() | nil,
          :department => String.t() | nil,
          :officeLocation => String.t() | nil,
          :dottedLineReports => list(GoogleApi.CloudSearch.V1.Model.PersonCore.t()) | nil,
          :costCenter => String.t() | nil,
          :ftePermille => String.t() | nil,
          :links =>
            list(GoogleApi.CloudSearch.V1.Model.EnterpriseTopazFrontendTeamsLink.t()) | nil,
          :photoUrl => GoogleApi.CloudSearch.V1.Model.SafeUrlProto.t() | nil,
          :location => String.t() | nil,
          :admins => list(GoogleApi.CloudSearch.V1.Model.PersonCore.t()) | nil,
          :dottedLineManagers => list(GoogleApi.CloudSearch.V1.Model.PersonCore.t()) | nil,
          :directReports => list(GoogleApi.CloudSearch.V1.Model.PersonCore.t()) | nil,
          :chatUrl => GoogleApi.CloudSearch.V1.Model.SafeUrlProto.t() | nil,
          :employeeId => String.t() | nil,
          :postalAddress => String.t() | nil,
          :managers => list(GoogleApi.CloudSearch.V1.Model.PersonCore.t()) | nil,
          :totalDirectReportsCount => integer() | nil,
          :personId => String.t() | nil,
          :gmailUrl => String.t() | nil,
          :emails => list(String.t()) | nil,
          :geoLocation => GoogleApi.CloudSearch.V1.Model.MapInfo.t() | nil,
          :jobTitle => String.t() | nil,
          :fingerprint => String.t() | nil,
          :adminTo => list(GoogleApi.CloudSearch.V1.Model.PersonCore.t()) | nil,
          :calendarUrl => GoogleApi.CloudSearch.V1.Model.SafeUrlProto.t() | nil
        }

  field(:totalFteCount)
  field(:mission)
  field(:keywordTypes, type: :list)
  field(:name)
  field(:availabilityStatus)
  field(:waldoComeBackTime, as: DateTime)
  field(:totalDlrCount)
  field(:addressMeAs)
  field(:birthday, as: GoogleApi.CloudSearch.V1.Model.Date)

  field(:phoneNumbers,
    as: GoogleApi.CloudSearch.V1.Model.EnterpriseTopazFrontendTeamsPersonCorePhoneNumber,
    type: :list
  )

  field(:keywords, type: :map)
  field(:username)
  field(:department)
  field(:officeLocation)
  field(:dottedLineReports, as: GoogleApi.CloudSearch.V1.Model.PersonCore, type: :list)
  field(:costCenter)
  field(:ftePermille)
  field(:links, as: GoogleApi.CloudSearch.V1.Model.EnterpriseTopazFrontendTeamsLink, type: :list)
  field(:photoUrl, as: GoogleApi.CloudSearch.V1.Model.SafeUrlProto)
  field(:location)
  field(:admins, as: GoogleApi.CloudSearch.V1.Model.PersonCore, type: :list)
  field(:dottedLineManagers, as: GoogleApi.CloudSearch.V1.Model.PersonCore, type: :list)
  field(:directReports, as: GoogleApi.CloudSearch.V1.Model.PersonCore, type: :list)
  field(:chatUrl, as: GoogleApi.CloudSearch.V1.Model.SafeUrlProto)
  field(:employeeId)
  field(:postalAddress)
  field(:managers, as: GoogleApi.CloudSearch.V1.Model.PersonCore, type: :list)
  field(:totalDirectReportsCount)
  field(:personId)
  field(:gmailUrl)
  field(:emails, type: :list)
  field(:geoLocation, as: GoogleApi.CloudSearch.V1.Model.MapInfo)
  field(:jobTitle)
  field(:fingerprint)
  field(:adminTo, as: GoogleApi.CloudSearch.V1.Model.PersonCore, type: :list)
  field(:calendarUrl, as: GoogleApi.CloudSearch.V1.Model.SafeUrlProto)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.PersonCore do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.PersonCore.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.PersonCore do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
