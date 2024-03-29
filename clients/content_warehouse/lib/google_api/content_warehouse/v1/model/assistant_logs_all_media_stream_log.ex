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

defmodule GoogleApi.ContentWarehouse.V1.Model.AssistantLogsAllMediaStreamLog do
  @moduledoc """


  ## Attributes

  *   `streams` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.AssistantLogsMediaStreamLog.t)`, *default:* `nil`) - All active media streams while the user issues the query.
  *   `targetStream` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantLogsMediaStreamLog.t`, *default:* `nil`) - The stream selected by stream transfer logic to be transferred to another device. It will be empty for other features. Target_stream is different from target_device since target_stream could have multiple devices.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :streams =>
            list(GoogleApi.ContentWarehouse.V1.Model.AssistantLogsMediaStreamLog.t()) | nil,
          :targetStream =>
            GoogleApi.ContentWarehouse.V1.Model.AssistantLogsMediaStreamLog.t() | nil
        }

  field(:streams, as: GoogleApi.ContentWarehouse.V1.Model.AssistantLogsMediaStreamLog, type: :list)

  field(:targetStream, as: GoogleApi.ContentWarehouse.V1.Model.AssistantLogsMediaStreamLog)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.AssistantLogsAllMediaStreamLog do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AssistantLogsAllMediaStreamLog.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.AssistantLogsAllMediaStreamLog do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
