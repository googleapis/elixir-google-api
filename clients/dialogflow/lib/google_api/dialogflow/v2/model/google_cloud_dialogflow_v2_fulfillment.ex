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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Fulfillment do
  @moduledoc """
  By default, your agent responds to a matched intent with a static response. As an alternative, you can provide a more dynamic response by using fulfillment. When you enable fulfillment for an intent, Dialogflow responds to that intent by calling a service that you define. For example, if an end-user wants to schedule a haircut on Friday, your service can check your database and respond to the end-user with availability information for Friday. For more information, see the [fulfillment guide](https://cloud.google.com/dialogflow/docs/fulfillment-overview).

  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Optional. The human-readable name of the fulfillment, unique within the agent. This field is not used for Fulfillment in an Environment.
  *   `enabled` (*type:* `boolean()`, *default:* `nil`) - Optional. Whether fulfillment is enabled.
  *   `features` (*type:* `list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2FulfillmentFeature.t)`, *default:* `nil`) - Optional. The field defines whether the fulfillment is enabled for certain features.
  *   `genericWebService` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2FulfillmentGenericWebService.t`, *default:* `nil`) - Configuration for a generic web service.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. The unique identifier of the fulfillment. Supported formats: - `projects//agent/fulfillment` - `projects//locations//agent/fulfillment` This field is not used for Fulfillment in an Environment.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t() | nil,
          :enabled => boolean() | nil,
          :features =>
            list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2FulfillmentFeature.t())
            | nil,
          :genericWebService =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2FulfillmentGenericWebService.t()
            | nil,
          :name => String.t() | nil
        }

  field(:displayName)
  field(:enabled)

  field(:features,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2FulfillmentFeature,
    type: :list
  )

  field(:genericWebService,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2FulfillmentGenericWebService
  )

  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Fulfillment do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Fulfillment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Fulfillment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
