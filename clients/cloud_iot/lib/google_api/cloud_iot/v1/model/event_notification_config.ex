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

defmodule GoogleApi.CloudIot.V1.Model.EventNotificationConfig do
  @moduledoc """
  The configuration for forwarding telemetry events.

  ## Attributes

  *   `pubsubTopicName` (*type:* `String.t`, *default:* `nil`) - A Cloud Pub/Sub topic name. For example, `projects/myProject/topics/deviceEvents`.
  *   `subfolderMatches` (*type:* `String.t`, *default:* `nil`) - If the subfolder name matches this string exactly, this configuration will be used. The string must not include the leading '/' character. If empty, all strings are matched. This field is used only for telemetry events; subfolders are not supported for state changes.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :pubsubTopicName => String.t() | nil,
          :subfolderMatches => String.t() | nil
        }

  field(:pubsubTopicName)
  field(:subfolderMatches)
end

defimpl Poison.Decoder, for: GoogleApi.CloudIot.V1.Model.EventNotificationConfig do
  def decode(value, options) do
    GoogleApi.CloudIot.V1.Model.EventNotificationConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudIot.V1.Model.EventNotificationConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
