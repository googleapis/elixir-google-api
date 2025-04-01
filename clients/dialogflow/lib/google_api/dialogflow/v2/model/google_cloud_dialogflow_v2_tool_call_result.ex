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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ToolCallResult do
  @moduledoc """
  The result of calling a tool's action.

  ## Attributes

  *   `action` (*type:* `String.t`, *default:* `nil`) - Required. The name of the tool's action associated with this call.
  *   `content` (*type:* `String.t`, *default:* `nil`) - Only populated if the response content is utf-8 encoded.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Create time of the tool call result.
  *   `error` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ToolCallResultError.t`, *default:* `nil`) - The tool call's error.
  *   `rawContent` (*type:* `String.t`, *default:* `nil`) - Only populated if the response content is not utf-8 encoded. (by definition byte fields are base64 encoded).
  *   `tool` (*type:* `String.t`, *default:* `nil`) - Required. The tool associated with this call. Format: `projects//locations//tools/`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :action => String.t() | nil,
          :content => String.t() | nil,
          :createTime => DateTime.t() | nil,
          :error =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ToolCallResultError.t() | nil,
          :rawContent => String.t() | nil,
          :tool => String.t() | nil
        }

  field(:action)
  field(:content)
  field(:createTime, as: DateTime)
  field(:error, as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ToolCallResultError)
  field(:rawContent)
  field(:tool)
end

defimpl Poison.Decoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ToolCallResult do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ToolCallResult.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ToolCallResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
