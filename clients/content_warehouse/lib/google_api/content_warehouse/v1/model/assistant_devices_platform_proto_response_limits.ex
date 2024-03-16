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

defmodule GoogleApi.ContentWarehouse.V1.Model.AssistantDevicesPlatformProtoResponseLimits do
  @moduledoc """
  Specifies the size limits on responses receivable by the client.

  ## Attributes

  *   `maxAssistResponseSizeBytes` (*type:* `integer()`, *default:* `nil`) - Max size in bytes of the total serialized AssistResponse receivable by the client. If response exceeds this max, response may be modified by the server.
  *   `maxDisplayLinesBytes` (*type:* `integer()`, *default:* `nil`) - Maximum size in bytes (not characters) of text the display can handle (which may be different from how much the display can show at a time due to scrolling).
  *   `maxSuggestionChipBytes` (*type:* `integer()`, *default:* `nil`) - Maximum size in bytes (not characters) for each suggestion chip.
  *   `maxSuggestionChips` (*type:* `integer()`, *default:* `nil`) - Maximum number of suggestion chips the device can handle to display.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :maxAssistResponseSizeBytes => integer() | nil,
          :maxDisplayLinesBytes => integer() | nil,
          :maxSuggestionChipBytes => integer() | nil,
          :maxSuggestionChips => integer() | nil
        }

  field(:maxAssistResponseSizeBytes)
  field(:maxDisplayLinesBytes)
  field(:maxSuggestionChipBytes)
  field(:maxSuggestionChips)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AssistantDevicesPlatformProtoResponseLimits do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AssistantDevicesPlatformProtoResponseLimits.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AssistantDevicesPlatformProtoResponseLimits do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end