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

defmodule GoogleApi.Script.V1.Model.GoogleAppsScriptTypeExecutionApiEntryPoint do
  @moduledoc """
  An API executable entry point.

  ## Attributes

  *   `entryPointConfig` (*type:* `GoogleApi.Script.V1.Model.GoogleAppsScriptTypeExecutionApiConfig.t`, *default:* `nil`) - The entry point's configuration.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :entryPointConfig =>
            GoogleApi.Script.V1.Model.GoogleAppsScriptTypeExecutionApiConfig.t()
        }

  field(:entryPointConfig, as: GoogleApi.Script.V1.Model.GoogleAppsScriptTypeExecutionApiConfig)
end

defimpl Poison.Decoder, for: GoogleApi.Script.V1.Model.GoogleAppsScriptTypeExecutionApiEntryPoint do
  def decode(value, options) do
    GoogleApi.Script.V1.Model.GoogleAppsScriptTypeExecutionApiEntryPoint.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Script.V1.Model.GoogleAppsScriptTypeExecutionApiEntryPoint do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
