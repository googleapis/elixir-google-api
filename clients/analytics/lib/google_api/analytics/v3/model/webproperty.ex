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

defmodule GoogleApi.Analytics.V3.Model.Webproperty do
  @moduledoc """
  JSON template for an Analytics web property.

  ## Attributes

  *   `accountId` (*type:* `String.t`, *default:* `nil`) - Account ID to which this web property belongs.
  *   `childLink` (*type:* `GoogleApi.Analytics.V3.Model.WebpropertyChildLink.t`, *default:* `nil`) - Child link for this web property. Points to the list of views (profiles) for this web property.
  *   `created` (*type:* `DateTime.t`, *default:* `nil`) - Time this web property was created.
  *   `dataRetentionResetOnNewActivity` (*type:* `boolean()`, *default:* `nil`) - Set to true to reset the retention period of the user identifier with each new event from that user (thus setting the expiration date to current time plus retention period).
      Set to false to delete data associated with the user identifier automatically after the rentention period.
      This property cannot be set on insert.
  *   `dataRetentionTtl` (*type:* `String.t`, *default:* `nil`) - The length of time for which user and event data is retained.
      This property cannot be set on insert.
  *   `defaultProfileId` (*type:* `String.t`, *default:* `nil`) - Default view (profile) ID.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Web property ID of the form UA-XXXXX-YY.
  *   `industryVertical` (*type:* `String.t`, *default:* `nil`) - The industry vertical/category selected for this web property.
  *   `internalWebPropertyId` (*type:* `String.t`, *default:* `nil`) - Internal ID for this web property.
  *   `kind` (*type:* `String.t`, *default:* `analytics#webproperty`) - Resource type for Analytics WebProperty.
  *   `level` (*type:* `String.t`, *default:* `nil`) - Level for this web property. Possible values are STANDARD or PREMIUM.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of this web property.
  *   `parentLink` (*type:* `GoogleApi.Analytics.V3.Model.WebpropertyParentLink.t`, *default:* `nil`) - Parent link for this web property. Points to the account to which this web property belongs.
  *   `permissions` (*type:* `GoogleApi.Analytics.V3.Model.WebpropertyPermissions.t`, *default:* `nil`) - Permissions the user has for this web property.
  *   `profileCount` (*type:* `integer()`, *default:* `nil`) - View (Profile) count for this web property.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - Link for this web property.
  *   `starred` (*type:* `boolean()`, *default:* `nil`) - Indicates whether this web property is starred or not.
  *   `updated` (*type:* `DateTime.t`, *default:* `nil`) - Time this web property was last modified.
  *   `websiteUrl` (*type:* `String.t`, *default:* `nil`) - Website url for this web property.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => String.t(),
          :childLink => GoogleApi.Analytics.V3.Model.WebpropertyChildLink.t(),
          :created => DateTime.t(),
          :dataRetentionResetOnNewActivity => boolean(),
          :dataRetentionTtl => String.t(),
          :defaultProfileId => String.t(),
          :id => String.t(),
          :industryVertical => String.t(),
          :internalWebPropertyId => String.t(),
          :kind => String.t(),
          :level => String.t(),
          :name => String.t(),
          :parentLink => GoogleApi.Analytics.V3.Model.WebpropertyParentLink.t(),
          :permissions => GoogleApi.Analytics.V3.Model.WebpropertyPermissions.t(),
          :profileCount => integer(),
          :selfLink => String.t(),
          :starred => boolean(),
          :updated => DateTime.t(),
          :websiteUrl => String.t()
        }

  field(:accountId)
  field(:childLink, as: GoogleApi.Analytics.V3.Model.WebpropertyChildLink)
  field(:created, as: DateTime)
  field(:dataRetentionResetOnNewActivity)
  field(:dataRetentionTtl)
  field(:defaultProfileId)
  field(:id)
  field(:industryVertical)
  field(:internalWebPropertyId)
  field(:kind)
  field(:level)
  field(:name)
  field(:parentLink, as: GoogleApi.Analytics.V3.Model.WebpropertyParentLink)
  field(:permissions, as: GoogleApi.Analytics.V3.Model.WebpropertyPermissions)
  field(:profileCount)
  field(:selfLink)
  field(:starred)
  field(:updated, as: DateTime)
  field(:websiteUrl)
end

defimpl Poison.Decoder, for: GoogleApi.Analytics.V3.Model.Webproperty do
  def decode(value, options) do
    GoogleApi.Analytics.V3.Model.Webproperty.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Analytics.V3.Model.Webproperty do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
