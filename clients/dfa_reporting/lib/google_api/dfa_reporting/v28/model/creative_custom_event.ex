# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.DFAReporting.V28.Model.CreativeCustomEvent do
  @moduledoc """
  Creative Custom Event.

  ## Attributes

  - advertiserCustomEventId (String.t): Unique ID of this event used by Reporting and Data Transfer. This is a read-only field. Defaults to: `null`.
  - advertiserCustomEventName (String.t): User-entered name for the event. Defaults to: `null`.
  - advertiserCustomEventType (String.t): Type of the event. This is a read-only field. Defaults to: `null`.
    - Enum - one of [ADVERTISER_EVENT_COUNTER, ADVERTISER_EVENT_EXIT, ADVERTISER_EVENT_TIMER]
  - artworkLabel (String.t): Artwork label column, used to link events in Campaign Manager back to events in Studio. This is a required field and should not be modified after insertion. Defaults to: `null`.
  - artworkType (String.t): Artwork type used by the creative.This is a read-only field. Defaults to: `null`.
    - Enum - one of [ARTWORK_TYPE_FLASH, ARTWORK_TYPE_HTML5, ARTWORK_TYPE_IMAGE, ARTWORK_TYPE_MIXED]
  - exitUrl (String.t): Exit URL of the event. This field is used only for exit events. Defaults to: `null`.
  - id (String.t): ID of this event. This is a required field and should not be modified after insertion. Defaults to: `null`.
  - popupWindowProperties (PopupWindowProperties): Properties for rich media popup windows. This field is used only for exit events. Defaults to: `null`.
  - targetType (String.t): Target type used by the event. Defaults to: `null`.
    - Enum - one of [TARGET_BLANK, TARGET_PARENT, TARGET_POPUP, TARGET_SELF, TARGET_TOP]
  - videoReportingId (String.t): Video reporting ID, used to differentiate multiple videos in a single creative. This is a read-only field. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :advertiserCustomEventId => any(),
          :advertiserCustomEventName => any(),
          :advertiserCustomEventType => any(),
          :artworkLabel => any(),
          :artworkType => any(),
          :exitUrl => any(),
          :id => any(),
          :popupWindowProperties => GoogleApi.DFAReporting.V28.Model.PopupWindowProperties.t(),
          :targetType => any(),
          :videoReportingId => any()
        }

  field(:advertiserCustomEventId)
  field(:advertiserCustomEventName)
  field(:advertiserCustomEventType)
  field(:artworkLabel)
  field(:artworkType)
  field(:exitUrl)
  field(:id)
  field(:popupWindowProperties, as: GoogleApi.DFAReporting.V28.Model.PopupWindowProperties)
  field(:targetType)
  field(:videoReportingId)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V28.Model.CreativeCustomEvent do
  def decode(value, options) do
    GoogleApi.DFAReporting.V28.Model.CreativeCustomEvent.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V28.Model.CreativeCustomEvent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
