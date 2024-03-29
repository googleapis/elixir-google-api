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

defmodule GoogleApi.ContentWarehouse.V1.Model.HtmlrenderWebkitHeadlessProtoRenderExtensionResult do
  @moduledoc """
  Results returned by a render server extension. Next id: 3

  ## Attributes

  *   `consoleLogEntry` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.HtmlrenderWebkitHeadlessProtoConsoleLogEntry.t)`, *default:* `nil`) - Log messages and errors generated by extension script.
  *   `result` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :consoleLogEntry =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.HtmlrenderWebkitHeadlessProtoConsoleLogEntry.t()
            )
            | nil,
          :result => String.t() | nil
        }

  field(:consoleLogEntry,
    as: GoogleApi.ContentWarehouse.V1.Model.HtmlrenderWebkitHeadlessProtoConsoleLogEntry,
    type: :list
  )

  field(:result)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.HtmlrenderWebkitHeadlessProtoRenderExtensionResult do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.HtmlrenderWebkitHeadlessProtoRenderExtensionResult.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.HtmlrenderWebkitHeadlessProtoRenderExtensionResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
