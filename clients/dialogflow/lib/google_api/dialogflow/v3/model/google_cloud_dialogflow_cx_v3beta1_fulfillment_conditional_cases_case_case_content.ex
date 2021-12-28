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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent do
  @moduledoc """
  The list of messages or conditional cases to activate for this case.

  ## Attributes

  *   `additionalCases` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases.t`, *default:* `nil`) - Additional cases to be evaluated.
  *   `message` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3beta1ResponseMessage.t`, *default:* `nil`) - Returned message.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :additionalCases =>
            GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases.t()
            | nil,
          :message =>
            GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3beta1ResponseMessage.t() | nil
        }

  field(:additionalCases,
    as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases
  )

  field(:message, as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3beta1ResponseMessage)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
