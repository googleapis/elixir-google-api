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

defmodule GoogleApi.ContentWarehouse.V1.Model.AssistantApiAudioOutput do
  @moduledoc """
  These capabilities represent the audio output features associated with the device. This includes what kind of audio output the device can handle, and what the privacy circumstances of that output are.

  ## Attributes

  *   `alwaysOnSpeaker` (*type:* `String.t`, *default:* `nil`) - 
  *   `environment` (*type:* `String.t`, *default:* `nil`) - 
  *   `mediaTtsMixable` (*type:* `String.t`, *default:* `nil`) - 
  *   `quality` (*type:* `String.t`, *default:* `nil`) - 
  *   `volumeProperties` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantApiVolumeProperties.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :alwaysOnSpeaker => String.t() | nil,
          :environment => String.t() | nil,
          :mediaTtsMixable => String.t() | nil,
          :quality => String.t() | nil,
          :volumeProperties =>
            GoogleApi.ContentWarehouse.V1.Model.AssistantApiVolumeProperties.t() | nil
        }

  field(:alwaysOnSpeaker)
  field(:environment)
  field(:mediaTtsMixable)
  field(:quality)
  field(:volumeProperties, as: GoogleApi.ContentWarehouse.V1.Model.AssistantApiVolumeProperties)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.AssistantApiAudioOutput do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AssistantApiAudioOutput.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.AssistantApiAudioOutput do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end