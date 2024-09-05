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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3NluSettings do
  @moduledoc """
  Settings related to NLU.

  ## Attributes

  *   `classificationThreshold` (*type:* `number()`, *default:* `nil`) - To filter out false positive results and still get variety in matched natural language inputs for your agent, you can tune the machine learning classification threshold. If the returned score value is less than the threshold value, then a no-match event will be triggered. The score values range from 0.0 (completely uncertain) to 1.0 (completely certain). If set to 0.0, the default of 0.3 is used. You can set a separate classification threshold for the flow in each language enabled for the agent.
  *   `modelTrainingMode` (*type:* `String.t`, *default:* `nil`) - Indicates NLU model training mode.
  *   `modelType` (*type:* `String.t`, *default:* `nil`) - Indicates the type of NLU model.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :classificationThreshold => number() | nil,
          :modelTrainingMode => String.t() | nil,
          :modelType => String.t() | nil
        }

  field(:classificationThreshold)
  field(:modelTrainingMode)
  field(:modelType)
end

defimpl Poison.Decoder, for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3NluSettings do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3NluSettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3NluSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
