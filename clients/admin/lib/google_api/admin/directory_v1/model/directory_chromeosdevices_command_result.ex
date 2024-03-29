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

defmodule GoogleApi.Admin.Directory_v1.Model.DirectoryChromeosdevicesCommandResult do
  @moduledoc """
  The result of executing a command.

  ## Attributes

  *   `commandResultPayload` (*type:* `String.t`, *default:* `nil`) - The payload for the command result. The following commands respond with a payload: * `DEVICE_START_CRD_SESSION`: Payload is a stringified JSON object in the form: { "url": url }. The URL provides a link to the Chrome Remote Desktop session.
  *   `errorMessage` (*type:* `String.t`, *default:* `nil`) - The error message with a short explanation as to why the command failed. Only present if the command failed.
  *   `executeTime` (*type:* `DateTime.t`, *default:* `nil`) - The time at which the command was executed or failed to execute.
  *   `result` (*type:* `String.t`, *default:* `nil`) - The result of the command.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :commandResultPayload => String.t() | nil,
          :errorMessage => String.t() | nil,
          :executeTime => DateTime.t() | nil,
          :result => String.t() | nil
        }

  field(:commandResultPayload)
  field(:errorMessage)
  field(:executeTime, as: DateTime)
  field(:result)
end

defimpl Poison.Decoder,
  for: GoogleApi.Admin.Directory_v1.Model.DirectoryChromeosdevicesCommandResult do
  def decode(value, options) do
    GoogleApi.Admin.Directory_v1.Model.DirectoryChromeosdevicesCommandResult.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Admin.Directory_v1.Model.DirectoryChromeosdevicesCommandResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
