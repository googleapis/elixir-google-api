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

defmodule GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiRawDeviceContactInfo do
  @moduledoc """
  Raw device contact information.

  ## Attributes

  *   `accountName` (*type:* `String.t`, *default:* `nil`) - Account name of raw contact, e.g. "google@gmail.com".
  *   `accountType` (*type:* `String.t`, *default:* `nil`) - Account type of raw contact, e.g. "com.google" or "com.linkedin.android".
  *   `appContactData` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiAppContactData.t)`, *default:* `nil`) - The detailed app-specific endpoint data available for the given RawDeviceContactInfo instance. This proto should be used to obtain the list of actions and mimetypes supported by the third-party app. Design: go/3p-contact-upload
  *   `appInfo` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiAppUniqueInfo.t`, *default:* `nil`) - The app-specific endpoint data needed for app action fulfillment. Usage of this field should be avoided on the server-side, and should use the more detailed |full_app_info| field. 
  *   `crossDeviceAllowed` (*type:* `boolean()`, *default:* `nil`) - If true, this raw contact can be used on other devices than the one it originated from. Assigned by the server.
  *   `deviceContactMetadata` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiDeviceContactExtraMetadata.t`, *default:* `nil`) - Extra metadata for this raw contact.
  *   `googleContactId` (*type:* `String.t`, *default:* `nil`) - The focus contact id for Google contacts.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The base64 serialized social.graph.peopleapi.proto.internal.RawDeviceContactId. This id should be used to correlate to field.metadata.encoded_container_id when the field.metadata.container_type is RAW_DEVICE_CONTACT The id also correlates to person.metadata.identity_info.source_id.id. For value format, see google3/social/graph/api/proto/main_merged_person.proto?q=symbol:SourceIdentity.id
  *   `photoType` (*type:* `String.t`, *default:* `nil`) - The type of photo from the device (if any).
  *   `rawContactId` (*type:* `String.t`, *default:* `nil`) - The id of the raw contact on the device.
  *   `rawDeviceContactAnalyticalInfo` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiRawDeviceContactAnalyticalInfo.t`, *default:* `nil`) - Only to be used by Romanesco team specifically for analytics.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountName => String.t() | nil,
          :accountType => String.t() | nil,
          :appContactData =>
            list(GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiAppContactData.t()) | nil,
          :appInfo =>
            GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiAppUniqueInfo.t()
            | nil,
          :crossDeviceAllowed => boolean() | nil,
          :deviceContactMetadata =>
            GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiDeviceContactExtraMetadata.t()
            | nil,
          :googleContactId => String.t() | nil,
          :id => String.t() | nil,
          :photoType => String.t() | nil,
          :rawContactId => String.t() | nil,
          :rawDeviceContactAnalyticalInfo =>
            GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiRawDeviceContactAnalyticalInfo.t()
            | nil
        }

  field(:accountName)
  field(:accountType)

  field(:appContactData,
    as: GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiAppContactData,
    type: :list
  )

  field(:appInfo,
    as: GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiAppUniqueInfo
  )

  field(:crossDeviceAllowed)

  field(:deviceContactMetadata,
    as:
      GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiDeviceContactExtraMetadata
  )

  field(:googleContactId)
  field(:id)
  field(:photoType)
  field(:rawContactId)

  field(:rawDeviceContactAnalyticalInfo,
    as:
      GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiRawDeviceContactAnalyticalInfo
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiRawDeviceContactInfo do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiRawDeviceContactInfo.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiRawDeviceContactInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
