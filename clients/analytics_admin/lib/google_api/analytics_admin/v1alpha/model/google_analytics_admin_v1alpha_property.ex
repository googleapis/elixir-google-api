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

defmodule GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaProperty do
  @moduledoc """
  A resource message representing a Google Analytics GA4 property.

  ## Attributes

  *   `account` (*type:* `String.t`, *default:* `nil`) - Immutable. The resource name of the parent account Format: accounts/{account_id} Example: "accounts/123"
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time when the entity was originally created.
  *   `currencyCode` (*type:* `String.t`, *default:* `nil`) - The currency type used in reports involving monetary values. Format: https://en.wikipedia.org/wiki/ISO_4217 Examples: "USD", "EUR", "JPY"
  *   `deleteTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. If set, the time at which this property was trashed. If not set, then this property is not currently in the trash can.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. Human-readable display name for this property. The max allowed display name length is 100 UTF-16 code units.
  *   `expireTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. If set, the time at which this trashed property will be permanently deleted. If not set, then this property is not currently in the trash can and is not slated to be deleted.
  *   `industryCategory` (*type:* `String.t`, *default:* `nil`) - Industry associated with this property Example: AUTOMOTIVE, FOOD_AND_DRINK
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Resource name of this property. Format: properties/{property_id} Example: "properties/1000"
  *   `parent` (*type:* `String.t`, *default:* `nil`) - Immutable. Resource name of this property's logical parent. Note: The Property-Moving UI can be used to change the parent. Format: accounts/{account} Example: "accounts/100"
  *   `serviceLevel` (*type:* `String.t`, *default:* `nil`) - Output only. The Google Analytics service level that applies to this property.
  *   `timeZone` (*type:* `String.t`, *default:* `nil`) - Required. Reporting Time Zone, used as the day boundary for reports, regardless of where the data originates. If the time zone honors DST, Analytics will automatically adjust for the changes. NOTE: Changing the time zone only affects data going forward, and is not applied retroactively. Format: https://www.iana.org/time-zones Example: "America/Los_Angeles"
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time when entity payload fields were last updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :account => String.t() | nil,
          :createTime => DateTime.t() | nil,
          :currencyCode => String.t() | nil,
          :deleteTime => DateTime.t() | nil,
          :displayName => String.t() | nil,
          :expireTime => DateTime.t() | nil,
          :industryCategory => String.t() | nil,
          :name => String.t() | nil,
          :parent => String.t() | nil,
          :serviceLevel => String.t() | nil,
          :timeZone => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:account)
  field(:createTime, as: DateTime)
  field(:currencyCode)
  field(:deleteTime, as: DateTime)
  field(:displayName)
  field(:expireTime, as: DateTime)
  field(:industryCategory)
  field(:name)
  field(:parent)
  field(:serviceLevel)
  field(:timeZone)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder,
  for: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaProperty do
  def decode(value, options) do
    GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaProperty.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaProperty do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
