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

defmodule GoogleApi.AndroidManagement.V1.Model.Enterprise do
  @moduledoc """
  The configuration applied to an enterprise.

  ## Attributes

  *   `appAutoApprovalEnabled` (*type:* `boolean()`, *default:* `nil`) - Deprecated and unused.
  *   `contactInfo` (*type:* `GoogleApi.AndroidManagement.V1.Model.ContactInfo.t`, *default:* `nil`) - The enterprise contact info of an EMM-managed enterprise.
  *   `enabledNotificationTypes` (*type:* `list(String.t)`, *default:* `nil`) - The types of Google Pub/Sub notifications enabled for the enterprise.
  *   `enterpriseDisplayName` (*type:* `String.t`, *default:* `nil`) - The name of the enterprise displayed to users. This field has a maximum length of 100 characters.
  *   `enterpriseType` (*type:* `String.t`, *default:* `nil`) - Output only. The type of the enterprise.
  *   `googleAuthenticationSettings` (*type:* `GoogleApi.AndroidManagement.V1.Model.GoogleAuthenticationSettings.t`, *default:* `nil`) - Settings for Google-provided user authentication.
  *   `logo` (*type:* `GoogleApi.AndroidManagement.V1.Model.ExternalData.t`, *default:* `nil`) - An image displayed as a logo during device provisioning. Supported types are: image/bmp, image/gif, image/x-ico, image/jpeg, image/png, image/webp, image/vnd.wap.wbmp, image/x-adobe-dng.
  *   `managedGoogleDomainType` (*type:* `String.t`, *default:* `nil`) - Output only. The type of managed Google domain.
  *   `managedGooglePlayAccountsEnterpriseType` (*type:* `String.t`, *default:* `nil`) - Output only. The type of a managed Google Play Accounts enterprise.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the enterprise which is generated by the server during creation, in the form enterprises/{enterpriseId}.
  *   `primaryColor` (*type:* `integer()`, *default:* `nil`) - A color in RGB format that indicates the predominant color to display in the device management app UI. The color components are stored as follows: (red << 16) | (green << 8) | blue, where the value of each component is between 0 and 255, inclusive.
  *   `pubsubTopic` (*type:* `String.t`, *default:* `nil`) - The topic which Pub/Sub notifications are published to, in the form projects/{project}/topics/{topic}. This field is only required if Pub/Sub notifications are enabled.
  *   `signinDetails` (*type:* `list(GoogleApi.AndroidManagement.V1.Model.SigninDetail.t)`, *default:* `nil`) - Sign-in details of the enterprise.
  *   `termsAndConditions` (*type:* `list(GoogleApi.AndroidManagement.V1.Model.TermsAndConditions.t)`, *default:* `nil`) - Terms and conditions that must be accepted when provisioning a device for this enterprise. A page of terms is generated for each value in this list.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :appAutoApprovalEnabled => boolean() | nil,
          :contactInfo => GoogleApi.AndroidManagement.V1.Model.ContactInfo.t() | nil,
          :enabledNotificationTypes => list(String.t()) | nil,
          :enterpriseDisplayName => String.t() | nil,
          :enterpriseType => String.t() | nil,
          :googleAuthenticationSettings =>
            GoogleApi.AndroidManagement.V1.Model.GoogleAuthenticationSettings.t() | nil,
          :logo => GoogleApi.AndroidManagement.V1.Model.ExternalData.t() | nil,
          :managedGoogleDomainType => String.t() | nil,
          :managedGooglePlayAccountsEnterpriseType => String.t() | nil,
          :name => String.t() | nil,
          :primaryColor => integer() | nil,
          :pubsubTopic => String.t() | nil,
          :signinDetails => list(GoogleApi.AndroidManagement.V1.Model.SigninDetail.t()) | nil,
          :termsAndConditions =>
            list(GoogleApi.AndroidManagement.V1.Model.TermsAndConditions.t()) | nil
        }

  field(:appAutoApprovalEnabled)
  field(:contactInfo, as: GoogleApi.AndroidManagement.V1.Model.ContactInfo)
  field(:enabledNotificationTypes, type: :list)
  field(:enterpriseDisplayName)
  field(:enterpriseType)

  field(:googleAuthenticationSettings,
    as: GoogleApi.AndroidManagement.V1.Model.GoogleAuthenticationSettings
  )

  field(:logo, as: GoogleApi.AndroidManagement.V1.Model.ExternalData)
  field(:managedGoogleDomainType)
  field(:managedGooglePlayAccountsEnterpriseType)
  field(:name)
  field(:primaryColor)
  field(:pubsubTopic)
  field(:signinDetails, as: GoogleApi.AndroidManagement.V1.Model.SigninDetail, type: :list)

  field(:termsAndConditions,
    as: GoogleApi.AndroidManagement.V1.Model.TermsAndConditions,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.Enterprise do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.Enterprise.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.Enterprise do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
