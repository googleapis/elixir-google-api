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

defmodule GoogleApi.ContentWarehouse.V1.Model.AssistantApiLoggingOnlyData do
  @moduledoc """
  Data which is produced for logging and debugging. Servers MUST NOT use this for any other purposes, such as branching on it. Next ID: 16

  ## Attributes

  *   `acpVersion` (*type:* `String.t`, *default:* `nil`) - A user-readable string describing the ACP version (go/acp-version) of the client app used by the user to originate the conversation.
  *   `androidId` (*type:* `String.t`, *default:* `nil`) - Random identifier assigned to Android mobile devices. Older logs may have previously stored other kinds of android IDs in this field, but all current logs should use the GServices Id. See go/androidids.
  *   `appVersion` (*type:* `String.t`, *default:* `nil`) - A user-readable string describing the version of the client app used by the user to originate the conversation.
  *   `assistantSettingsSource` (*type:* `String.t`, *default:* `nil`) - An enum specifying when was this ATV AssistantSettings entry initially created.
  *   `boardName` (*type:* `String.t`, *default:* `nil`) - The type of board used by manufacturer for this device
  *   `boardRevision` (*type:* `String.t`, *default:* `nil`) - The revision of board used
  *   `castAssistantSettingLinkingResult` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantApiCastAssistantSettingLinkingResult.t`, *default:* `nil`) - This field records the linking status between Assistant setting entry and Cast setting entry. Currently only ATV surface populates this field for profiling purpose.
  *   `deviceModel` (*type:* `String.t`, *default:* `nil`) - A user-readable string describing the device's hardware platform.
  *   `embedderBuildInfo` (*type:* `String.t`, *default:* `nil`) - Any relevant info concerning the build options of the embedder (that is the software which runs as the 'driver' of an Assistant library, such as libassistant. the embedder is typically built by a third party)
  *   `initialAppVersion` (*type:* `String.t`, *default:* `nil`) - A string recording the app version that is initially used to created this settings entry.
  *   `isPrimaryUser` (*type:* `boolean()`, *default:* `nil`) - Boolean field to indicate whether a certain user is the primary user of a device or not. This is useful for distinguishing the user0 from other users given user0 might have certain privileges (Eg: Hubmode on Tangor)
  *   `mdnsDisplayName` (*type:* `String.t`, *default:* `nil`) - default display name of device over mdns. This is specified at the factory, not specified by the user.
  *   `platformBuild` (*type:* `String.t`, *default:* `nil`) - A user-readable string describing the device's software platform.
  *   `virtualReleaseChannel` (*type:* `String.t`, *default:* `nil`) - A string describing device's release channel. For cast devices, the string will look like "qa-beta-channel", "eng-no-update", etc.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :acpVersion => String.t() | nil,
          :androidId => String.t() | nil,
          :appVersion => String.t() | nil,
          :assistantSettingsSource => String.t() | nil,
          :boardName => String.t() | nil,
          :boardRevision => String.t() | nil,
          :castAssistantSettingLinkingResult =>
            GoogleApi.ContentWarehouse.V1.Model.AssistantApiCastAssistantSettingLinkingResult.t()
            | nil,
          :deviceModel => String.t() | nil,
          :embedderBuildInfo => String.t() | nil,
          :initialAppVersion => String.t() | nil,
          :isPrimaryUser => boolean() | nil,
          :mdnsDisplayName => String.t() | nil,
          :platformBuild => String.t() | nil,
          :virtualReleaseChannel => String.t() | nil
        }

  field(:acpVersion)
  field(:androidId)
  field(:appVersion)
  field(:assistantSettingsSource)
  field(:boardName)
  field(:boardRevision)

  field(:castAssistantSettingLinkingResult,
    as: GoogleApi.ContentWarehouse.V1.Model.AssistantApiCastAssistantSettingLinkingResult
  )

  field(:deviceModel)
  field(:embedderBuildInfo)
  field(:initialAppVersion)
  field(:isPrimaryUser)
  field(:mdnsDisplayName)
  field(:platformBuild)
  field(:virtualReleaseChannel)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.AssistantApiLoggingOnlyData do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AssistantApiLoggingOnlyData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.AssistantApiLoggingOnlyData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
