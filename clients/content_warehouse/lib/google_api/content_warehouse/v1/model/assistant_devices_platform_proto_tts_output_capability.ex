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

defmodule GoogleApi.ContentWarehouse.V1.Model.AssistantDevicesPlatformProtoTtsOutputCapability do
  @moduledoc """
  Capabilities with regard to support of outputting TTS.

  ## Attributes

  *   `supportsStructuredTts` (*type:* `boolean()`, *default:* `nil`) - Specifies whether client supports out-of-band TTS synthesis. When this is enabled, client could receive TTS request message in `SpeechOutputArgs.structured_tts` which it can then use to make request to S3 for synthesizing TTS audio.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :supportsStructuredTts => boolean() | nil
        }

  field(:supportsStructuredTts)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AssistantDevicesPlatformProtoTtsOutputCapability do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AssistantDevicesPlatformProtoTtsOutputCapability.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AssistantDevicesPlatformProtoTtsOutputCapability do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
