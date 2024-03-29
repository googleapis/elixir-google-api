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

defmodule GoogleApi.DisplayVideo.V1.Model.MobileDeviceIdList do
  @moduledoc """
  Wrapper message for a list of mobile device IDs defining Customer Match audience members.

  ## Attributes

  *   `consent` (*type:* `GoogleApi.DisplayVideo.V1.Model.Consent.t`, *default:* `nil`) - Input only. The consent setting for the users in mobile_device_ids. Leaving this field unset indicates that consent is not specified. If ad_user_data or ad_personalization fields are set to `CONSENT_STATUS_DENIED`, the request will return an error.
  *   `mobileDeviceIds` (*type:* `list(String.t)`, *default:* `nil`) - A list of mobile device IDs defining Customer Match audience members. The size of mobile_device_ids mustn't be greater than 500,000.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :consent => GoogleApi.DisplayVideo.V1.Model.Consent.t() | nil,
          :mobileDeviceIds => list(String.t()) | nil
        }

  field(:consent, as: GoogleApi.DisplayVideo.V1.Model.Consent)
  field(:mobileDeviceIds, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V1.Model.MobileDeviceIdList do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V1.Model.MobileDeviceIdList.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V1.Model.MobileDeviceIdList do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
