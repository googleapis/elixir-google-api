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

defmodule GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiAppUniqueInfo do
  @moduledoc """
  Store all app unique info that are needed for app action fulfillment.

  ## Attributes

  *   `appUniqueId` (*type:* `String.t`, *default:* `nil`) - Store the app unique id endpoint. This will be passed over to app to fulfill the action. For example, app_unique_id for Whatsapp will be "11234567890@s.whatsapp.net"
  *   `contactInfoSource` (*type:* `String.t`, *default:* `nil`) - Where this contact info was retrieved from. Note: only added for Assistant usage, and will not be populated by PAPI. This is due to the coupling between Assistant Proto, and PAPI proto. (//depot/google3/quality/qrewrite/servlets/proto/focus_name.proto)
  *   `displayAppUniqueId` (*type:* `String.t`, *default:* `nil`) - Store third party endpoint that is displayed to users. For example, display_app_unique_id for Whatsapp will be "Message +11234567890".
  *   `label` (*type:* `String.t`, *default:* `nil`) - Store third party endpoint label. For example, "HOME", "WORK"
  *   `mimetype` (*type:* `String.t`, *default:* `nil`) - Store mimetype of this endpoint. We will use this as the differentiator for Assistant to know whether to use the RawContact for messaging, call or video call. For example, send message mimetype for whatsapp: "vnd.android.cursor.item/vnd.com.whatsapp.profile" voice call mimetype for whatsapp: "vnd.android.cursor.item/vnd.com.whatsapp.voip.call"
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :appUniqueId => String.t() | nil,
          :contactInfoSource => String.t() | nil,
          :displayAppUniqueId => String.t() | nil,
          :label => String.t() | nil,
          :mimetype => String.t() | nil
        }

  field(:appUniqueId)
  field(:contactInfoSource)
  field(:displayAppUniqueId)
  field(:label)
  field(:mimetype)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiAppUniqueInfo do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiAppUniqueInfo.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiAppUniqueInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
