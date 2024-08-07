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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2beta1ResponseMessageTelephonyTransferCall do
  @moduledoc """
  Represents the signal that telles the client to transfer the phone call connected to the agent to a third-party endpoint.

  ## Attributes

  *   `phoneNumber` (*type:* `String.t`, *default:* `nil`) - Transfer the call to a phone number in [E.164 format](https://en.wikipedia.org/wiki/E.164).
  *   `sipUri` (*type:* `String.t`, *default:* `nil`) - Transfer the call to a SIP endpoint.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :phoneNumber => String.t() | nil,
          :sipUri => String.t() | nil
        }

  field(:phoneNumber)
  field(:sipUri)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2beta1ResponseMessageTelephonyTransferCall do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2beta1ResponseMessageTelephonyTransferCall.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2beta1ResponseMessageTelephonyTransferCall do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
