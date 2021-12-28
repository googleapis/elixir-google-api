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

defmodule GoogleApi.DFAReporting.V35.Model.Site do
  @moduledoc """
  Contains properties of a site.

  ## Attributes

  *   `accountId` (*type:* `String.t`, *default:* `nil`) - Account ID of this site. This is a read-only field that can be left blank.
  *   `approved` (*type:* `boolean()`, *default:* `nil`) - Whether this site is approved.
  *   `directorySiteId` (*type:* `String.t`, *default:* `nil`) - Directory site associated with this site. This is a required field that is read-only after insertion.
  *   `directorySiteIdDimensionValue` (*type:* `GoogleApi.DFAReporting.V35.Model.DimensionValue.t`, *default:* `nil`) - Dimension value for the ID of the directory site. This is a read-only, auto-generated field.
  *   `id` (*type:* `String.t`, *default:* `nil`) - ID of this site. This is a read-only, auto-generated field.
  *   `idDimensionValue` (*type:* `GoogleApi.DFAReporting.V35.Model.DimensionValue.t`, *default:* `nil`) - Dimension value for the ID of this site. This is a read-only, auto-generated field.
  *   `keyName` (*type:* `String.t`, *default:* `nil`) - Key name of this site. This is a read-only, auto-generated field.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string "dfareporting#site".
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of this site.This is a required field. Must be less than 128 characters long. If this site is under a subaccount, the name must be unique among sites of the same subaccount. Otherwise, this site is a top-level site, and the name must be unique among top-level sites of the same account.
  *   `siteContacts` (*type:* `list(GoogleApi.DFAReporting.V35.Model.SiteContact.t)`, *default:* `nil`) - Site contacts.
  *   `siteSettings` (*type:* `GoogleApi.DFAReporting.V35.Model.SiteSettings.t`, *default:* `nil`) - Site-wide settings.
  *   `subaccountId` (*type:* `String.t`, *default:* `nil`) - Subaccount ID of this site. This is a read-only field that can be left blank.
  *   `videoSettings` (*type:* `GoogleApi.DFAReporting.V35.Model.SiteVideoSettings.t`, *default:* `nil`) - Default video settings for new placements created under this site. This value will be used to populate the placements.videoSettings field, when no value is specified for the new placement.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => String.t() | nil,
          :approved => boolean() | nil,
          :directorySiteId => String.t() | nil,
          :directorySiteIdDimensionValue =>
            GoogleApi.DFAReporting.V35.Model.DimensionValue.t() | nil,
          :id => String.t() | nil,
          :idDimensionValue => GoogleApi.DFAReporting.V35.Model.DimensionValue.t() | nil,
          :keyName => String.t() | nil,
          :kind => String.t() | nil,
          :name => String.t() | nil,
          :siteContacts => list(GoogleApi.DFAReporting.V35.Model.SiteContact.t()) | nil,
          :siteSettings => GoogleApi.DFAReporting.V35.Model.SiteSettings.t() | nil,
          :subaccountId => String.t() | nil,
          :videoSettings => GoogleApi.DFAReporting.V35.Model.SiteVideoSettings.t() | nil
        }

  field(:accountId)
  field(:approved)
  field(:directorySiteId)
  field(:directorySiteIdDimensionValue, as: GoogleApi.DFAReporting.V35.Model.DimensionValue)
  field(:id)
  field(:idDimensionValue, as: GoogleApi.DFAReporting.V35.Model.DimensionValue)
  field(:keyName)
  field(:kind)
  field(:name)
  field(:siteContacts, as: GoogleApi.DFAReporting.V35.Model.SiteContact, type: :list)
  field(:siteSettings, as: GoogleApi.DFAReporting.V35.Model.SiteSettings)
  field(:subaccountId)
  field(:videoSettings, as: GoogleApi.DFAReporting.V35.Model.SiteVideoSettings)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V35.Model.Site do
  def decode(value, options) do
    GoogleApi.DFAReporting.V35.Model.Site.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V35.Model.Site do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
