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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3beta1DeployFlowResponse do
  @moduledoc """
  The response message for Environments.DeployFlow.

  ## Attributes

  *   `deployment` (*type:* `String.t`, *default:* `nil`) - The name of the flow version deployment. Format: `projects//locations//agents//environments//deployments/`.
  *   `environment` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3beta1Environment.t`, *default:* `nil`) - The updated environment where the flow is deployed.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deployment => String.t() | nil,
          :environment =>
            GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3beta1Environment.t() | nil
        }

  field(:deployment)
  field(:environment, as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3beta1Environment)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3beta1DeployFlowResponse do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3beta1DeployFlowResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3beta1DeployFlowResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
