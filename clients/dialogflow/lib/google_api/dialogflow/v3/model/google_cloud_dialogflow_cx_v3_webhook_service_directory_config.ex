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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig do
  @moduledoc """
  Represents configuration for a [Service Directory](https://cloud.google.com/service-directory) service.

  ## Attributes

  *   `genericWebService` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3WebhookGenericWebService.t`, *default:* `nil`) - Generic Service configuration of this webhook.
  *   `service` (*type:* `String.t`, *default:* `nil`) - Required. The name of [Service Directory](https://cloud.google.com/service-directory) service. Format: `projects//locations//namespaces//services/`. `Location ID` of the service directory must be the same as the location of the agent.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :genericWebService =>
            GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3WebhookGenericWebService.t()
            | nil,
          :service => String.t() | nil
        }

  field(:genericWebService,
    as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3WebhookGenericWebService
  )

  field(:service)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
