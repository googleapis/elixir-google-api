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

defmodule GoogleApi.People.V1.Model.Person do
  @moduledoc """
  Information about a person merged from various data sources such as the authenticated user's contacts and profile data. Most fields can have multiple items. The items in a field have no guaranteed order, but each non-empty field is guaranteed to have exactly one field with `metadata.primary` set to true.

  ## Attributes

  *   `relationshipStatuses` (*type:* `list(GoogleApi.People.V1.Model.RelationshipStatus.t)`, *default:* `nil`) - Output only. **DEPRECATED**: No data will be returned The person's relationship statuses.
  *   `genders` (*type:* `list(GoogleApi.People.V1.Model.Gender.t)`, *default:* `nil`) - The person's genders. This field is a singleton for contact sources.
  *   `biographies` (*type:* `list(GoogleApi.People.V1.Model.Biography.t)`, *default:* `nil`) - The person's biographies. This field is a singleton for contact sources.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - The [HTTP entity tag](https://en.wikipedia.org/wiki/HTTP_ETag) of the resource. Used for web cache validation.
  *   `names` (*type:* `list(GoogleApi.People.V1.Model.Name.t)`, *default:* `nil`) - The person's names. This field is a singleton for contact sources.
  *   `taglines` (*type:* `list(GoogleApi.People.V1.Model.Tagline.t)`, *default:* `nil`) - Output only. **DEPRECATED**: No data will be returned The person's taglines.
  *   `residences` (*type:* `list(GoogleApi.People.V1.Model.Residence.t)`, *default:* `nil`) - **DEPRECATED**: (Please use `person.locations` instead) The person's residences.
  *   `sipAddresses` (*type:* `list(GoogleApi.People.V1.Model.SipAddress.t)`, *default:* `nil`) - The person's SIP addresses.
  *   `externalIds` (*type:* `list(GoogleApi.People.V1.Model.ExternalId.t)`, *default:* `nil`) - The person's external IDs.
  *   `metadata` (*type:* `GoogleApi.People.V1.Model.PersonMetadata.t`, *default:* `nil`) - Output only. Metadata about the person.
  *   `occupations` (*type:* `list(GoogleApi.People.V1.Model.Occupation.t)`, *default:* `nil`) - The person's occupations.
  *   `imClients` (*type:* `list(GoogleApi.People.V1.Model.ImClient.t)`, *default:* `nil`) - The person's instant messaging clients.
  *   `addresses` (*type:* `list(GoogleApi.People.V1.Model.Address.t)`, *default:* `nil`) - The person's street addresses.
  *   `clientData` (*type:* `list(GoogleApi.People.V1.Model.ClientData.t)`, *default:* `nil`) - The person's client data.
  *   `skills` (*type:* `list(GoogleApi.People.V1.Model.Skill.t)`, *default:* `nil`) - The person's skills.
  *   `phoneNumbers` (*type:* `list(GoogleApi.People.V1.Model.PhoneNumber.t)`, *default:* `nil`) - The person's phone numbers. For [`connections.list`](/people/api/rest/v1/people.connections/list), [`otherContacts.list`](/people/api/rest/v1/otherContacts/list), and [`people.listDirectoryPeople`](/people/api/rest/v1/people/listDirectoryPeople) the number of phone numbers is limited to 100. If a Person has more phone numbers the entire set can be obtained by calling ['people.get'](/people/api/rest/v1/people/get).
  *   `relations` (*type:* `list(GoogleApi.People.V1.Model.Relation.t)`, *default:* `nil`) - The person's relations.
  *   `ageRanges` (*type:* `list(GoogleApi.People.V1.Model.AgeRangeType.t)`, *default:* `nil`) - Output only. The person's age ranges.
  *   `coverPhotos` (*type:* `list(GoogleApi.People.V1.Model.CoverPhoto.t)`, *default:* `nil`) - Output only. The person's cover photos.
  *   `birthdays` (*type:* `list(GoogleApi.People.V1.Model.Birthday.t)`, *default:* `nil`) - The person's birthdays. This field is a singleton for contact sources.
  *   `calendarUrls` (*type:* `list(GoogleApi.People.V1.Model.CalendarUrl.t)`, *default:* `nil`) - The person's calendar URLs.
  *   `locales` (*type:* `list(GoogleApi.People.V1.Model.Locale.t)`, *default:* `nil`) - The person's locale preferences.
  *   `locations` (*type:* `list(GoogleApi.People.V1.Model.Location.t)`, *default:* `nil`) - The person's locations.
  *   `interests` (*type:* `list(GoogleApi.People.V1.Model.Interest.t)`, *default:* `nil`) - The person's interests.
  *   `nicknames` (*type:* `list(GoogleApi.People.V1.Model.Nickname.t)`, *default:* `nil`) - The person's nicknames.
  *   `braggingRights` (*type:* `list(GoogleApi.People.V1.Model.BraggingRights.t)`, *default:* `nil`) - **DEPRECATED**: No data will be returned The person's bragging rights.
  *   `fileAses` (*type:* `list(GoogleApi.People.V1.Model.FileAs.t)`, *default:* `nil`) - The person's file-ases.
  *   `photos` (*type:* `list(GoogleApi.People.V1.Model.Photo.t)`, *default:* `nil`) - Output only. The person's photos.
  *   `events` (*type:* `list(GoogleApi.People.V1.Model.Event.t)`, *default:* `nil`) - The person's events.
  *   `userDefined` (*type:* `list(GoogleApi.People.V1.Model.UserDefined.t)`, *default:* `nil`) - The person's user defined data.
  *   `relationshipInterests` (*type:* `list(GoogleApi.People.V1.Model.RelationshipInterest.t)`, *default:* `nil`) - Output only. **DEPRECATED**: No data will be returned The person's relationship interests.
  *   `memberships` (*type:* `list(GoogleApi.People.V1.Model.Membership.t)`, *default:* `nil`) - The person's group memberships.
  *   `emailAddresses` (*type:* `list(GoogleApi.People.V1.Model.EmailAddress.t)`, *default:* `nil`) - The person's email addresses. For [`connections.list`](/people/api/rest/v1/people.connections/list), [`otherContacts.list`](/people/api/rest/v1/otherContacts/list), and [`people.listDirectoryPeople`](/people/api/rest/v1/people/listDirectoryPeople) the number of email addresses is limited to 100. If a Person has more email addresses the entire set can be obtained by calling ['people.get'](/people/api/rest/v1/people/get).
  *   `ageRange` (*type:* `String.t`, *default:* `nil`) - Output only. **DEPRECATED** (Please use `person.ageRanges` instead) The person's age range.
  *   `urls` (*type:* `list(GoogleApi.People.V1.Model.Url.t)`, *default:* `nil`) - The person's associated URLs.
  *   `resourceName` (*type:* `String.t`, *default:* `nil`) - The resource name for the person, assigned by the server. An ASCII string with a max length of 27 characters, in the form of `people/{person_id}`.
  *   `miscKeywords` (*type:* `list(GoogleApi.People.V1.Model.MiscKeyword.t)`, *default:* `nil`) - The person's miscellaneous keywords.
  *   `organizations` (*type:* `list(GoogleApi.People.V1.Model.Organization.t)`, *default:* `nil`) - The person's past or current organizations.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :relationshipStatuses => list(GoogleApi.People.V1.Model.RelationshipStatus.t()) | nil,
          :genders => list(GoogleApi.People.V1.Model.Gender.t()) | nil,
          :biographies => list(GoogleApi.People.V1.Model.Biography.t()) | nil,
          :etag => String.t() | nil,
          :names => list(GoogleApi.People.V1.Model.Name.t()) | nil,
          :taglines => list(GoogleApi.People.V1.Model.Tagline.t()) | nil,
          :residences => list(GoogleApi.People.V1.Model.Residence.t()) | nil,
          :sipAddresses => list(GoogleApi.People.V1.Model.SipAddress.t()) | nil,
          :externalIds => list(GoogleApi.People.V1.Model.ExternalId.t()) | nil,
          :metadata => GoogleApi.People.V1.Model.PersonMetadata.t() | nil,
          :occupations => list(GoogleApi.People.V1.Model.Occupation.t()) | nil,
          :imClients => list(GoogleApi.People.V1.Model.ImClient.t()) | nil,
          :addresses => list(GoogleApi.People.V1.Model.Address.t()) | nil,
          :clientData => list(GoogleApi.People.V1.Model.ClientData.t()) | nil,
          :skills => list(GoogleApi.People.V1.Model.Skill.t()) | nil,
          :phoneNumbers => list(GoogleApi.People.V1.Model.PhoneNumber.t()) | nil,
          :relations => list(GoogleApi.People.V1.Model.Relation.t()) | nil,
          :ageRanges => list(GoogleApi.People.V1.Model.AgeRangeType.t()) | nil,
          :coverPhotos => list(GoogleApi.People.V1.Model.CoverPhoto.t()) | nil,
          :birthdays => list(GoogleApi.People.V1.Model.Birthday.t()) | nil,
          :calendarUrls => list(GoogleApi.People.V1.Model.CalendarUrl.t()) | nil,
          :locales => list(GoogleApi.People.V1.Model.Locale.t()) | nil,
          :locations => list(GoogleApi.People.V1.Model.Location.t()) | nil,
          :interests => list(GoogleApi.People.V1.Model.Interest.t()) | nil,
          :nicknames => list(GoogleApi.People.V1.Model.Nickname.t()) | nil,
          :braggingRights => list(GoogleApi.People.V1.Model.BraggingRights.t()) | nil,
          :fileAses => list(GoogleApi.People.V1.Model.FileAs.t()) | nil,
          :photos => list(GoogleApi.People.V1.Model.Photo.t()) | nil,
          :events => list(GoogleApi.People.V1.Model.Event.t()) | nil,
          :userDefined => list(GoogleApi.People.V1.Model.UserDefined.t()) | nil,
          :relationshipInterests =>
            list(GoogleApi.People.V1.Model.RelationshipInterest.t()) | nil,
          :memberships => list(GoogleApi.People.V1.Model.Membership.t()) | nil,
          :emailAddresses => list(GoogleApi.People.V1.Model.EmailAddress.t()) | nil,
          :ageRange => String.t() | nil,
          :urls => list(GoogleApi.People.V1.Model.Url.t()) | nil,
          :resourceName => String.t() | nil,
          :miscKeywords => list(GoogleApi.People.V1.Model.MiscKeyword.t()) | nil,
          :organizations => list(GoogleApi.People.V1.Model.Organization.t()) | nil
        }

  field(:relationshipStatuses, as: GoogleApi.People.V1.Model.RelationshipStatus, type: :list)
  field(:genders, as: GoogleApi.People.V1.Model.Gender, type: :list)
  field(:biographies, as: GoogleApi.People.V1.Model.Biography, type: :list)
  field(:etag)
  field(:names, as: GoogleApi.People.V1.Model.Name, type: :list)
  field(:taglines, as: GoogleApi.People.V1.Model.Tagline, type: :list)
  field(:residences, as: GoogleApi.People.V1.Model.Residence, type: :list)
  field(:sipAddresses, as: GoogleApi.People.V1.Model.SipAddress, type: :list)
  field(:externalIds, as: GoogleApi.People.V1.Model.ExternalId, type: :list)
  field(:metadata, as: GoogleApi.People.V1.Model.PersonMetadata)
  field(:occupations, as: GoogleApi.People.V1.Model.Occupation, type: :list)
  field(:imClients, as: GoogleApi.People.V1.Model.ImClient, type: :list)
  field(:addresses, as: GoogleApi.People.V1.Model.Address, type: :list)
  field(:clientData, as: GoogleApi.People.V1.Model.ClientData, type: :list)
  field(:skills, as: GoogleApi.People.V1.Model.Skill, type: :list)
  field(:phoneNumbers, as: GoogleApi.People.V1.Model.PhoneNumber, type: :list)
  field(:relations, as: GoogleApi.People.V1.Model.Relation, type: :list)
  field(:ageRanges, as: GoogleApi.People.V1.Model.AgeRangeType, type: :list)
  field(:coverPhotos, as: GoogleApi.People.V1.Model.CoverPhoto, type: :list)
  field(:birthdays, as: GoogleApi.People.V1.Model.Birthday, type: :list)
  field(:calendarUrls, as: GoogleApi.People.V1.Model.CalendarUrl, type: :list)
  field(:locales, as: GoogleApi.People.V1.Model.Locale, type: :list)
  field(:locations, as: GoogleApi.People.V1.Model.Location, type: :list)
  field(:interests, as: GoogleApi.People.V1.Model.Interest, type: :list)
  field(:nicknames, as: GoogleApi.People.V1.Model.Nickname, type: :list)
  field(:braggingRights, as: GoogleApi.People.V1.Model.BraggingRights, type: :list)
  field(:fileAses, as: GoogleApi.People.V1.Model.FileAs, type: :list)
  field(:photos, as: GoogleApi.People.V1.Model.Photo, type: :list)
  field(:events, as: GoogleApi.People.V1.Model.Event, type: :list)
  field(:userDefined, as: GoogleApi.People.V1.Model.UserDefined, type: :list)
  field(:relationshipInterests, as: GoogleApi.People.V1.Model.RelationshipInterest, type: :list)
  field(:memberships, as: GoogleApi.People.V1.Model.Membership, type: :list)
  field(:emailAddresses, as: GoogleApi.People.V1.Model.EmailAddress, type: :list)
  field(:ageRange)
  field(:urls, as: GoogleApi.People.V1.Model.Url, type: :list)
  field(:resourceName)
  field(:miscKeywords, as: GoogleApi.People.V1.Model.MiscKeyword, type: :list)
  field(:organizations, as: GoogleApi.People.V1.Model.Organization, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.People.V1.Model.Person do
  def decode(value, options) do
    GoogleApi.People.V1.Model.Person.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.People.V1.Model.Person do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
