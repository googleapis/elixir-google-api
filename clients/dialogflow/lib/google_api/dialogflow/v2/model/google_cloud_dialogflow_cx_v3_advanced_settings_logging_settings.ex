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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings do
  @moduledoc """
  Define behaviors on logging.

  ## Attributes

  *   `enableInteractionLogging` (*type:* `boolean()`, *default:* `nil`) - If true, DF Interaction logging is currently enabled.
  *   `enableStackdriverLogging` (*type:* `boolean()`, *default:* `nil`) - If true, StackDriver logging is currently enabled.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :enableInteractionLogging => boolean() | nil,
          :enableStackdriverLogging => boolean() | nil
        }

  field(:enableInteractionLogging)
  field(:enableStackdriverLogging)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
