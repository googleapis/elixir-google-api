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

defmodule GoogleApi.AdMob.V1.Model.App do
  @moduledoc """
  Describes an AdMob app for a specific platform (For example: Android or iOS).

  ## Attributes

  *   `appApprovalState` (*type:* `String.t`, *default:* `nil`) - Output only. The approval state for the app. The field is read-only.
  *   `appId` (*type:* `String.t`, *default:* `nil`) - The externally visible ID of the app which can be used to integrate with the AdMob SDK. This is a read only property. Example: ca-app-pub-9876543210987654~0123456789
  *   `linkedAppInfo` (*type:* `GoogleApi.AdMob.V1.Model.AppLinkedAppInfo.t`, *default:* `nil`) - Immutable. The information for an app that is linked to an app store. This field is present if and only if the app is linked to an app store.
  *   `manualAppInfo` (*type:* `GoogleApi.AdMob.V1.Model.AppManualAppInfo.t`, *default:* `nil`) - The information for an app that is not linked to any app store. After an app is linked, this information is still retrivable. If no name is provided for the app upon creation, a placeholder name will be used.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Resource name for this app. Format is accounts/{publisher_id}/apps/{app_id_fragment} Example: accounts/pub-9876543210987654/apps/0123456789
  *   `platform` (*type:* `String.t`, *default:* `nil`) - Describes the platform of the app. Limited to "IOS" and "ANDROID".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :appApprovalState => String.t() | nil,
          :appId => String.t() | nil,
          :linkedAppInfo => GoogleApi.AdMob.V1.Model.AppLinkedAppInfo.t() | nil,
          :manualAppInfo => GoogleApi.AdMob.V1.Model.AppManualAppInfo.t() | nil,
          :name => String.t() | nil,
          :platform => String.t() | nil
        }

  field(:appApprovalState)
  field(:appId)
  field(:linkedAppInfo, as: GoogleApi.AdMob.V1.Model.AppLinkedAppInfo)
  field(:manualAppInfo, as: GoogleApi.AdMob.V1.Model.AppManualAppInfo)
  field(:name)
  field(:platform)
end

defimpl Poison.Decoder, for: GoogleApi.AdMob.V1.Model.App do
  def decode(value, options) do
    GoogleApi.AdMob.V1.Model.App.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdMob.V1.Model.App do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
