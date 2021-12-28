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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3ValidationMessage do
  @moduledoc """
  Agent/flow validation message.

  ## Attributes

  *   `detail` (*type:* `String.t`, *default:* `nil`) - The message detail.
  *   `resourceNames` (*type:* `list(GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3ResourceName.t)`, *default:* `nil`) - The resource names of the resources where the message is found.
  *   `resourceType` (*type:* `String.t`, *default:* `nil`) - The type of the resources where the message is found.
  *   `resources` (*type:* `list(String.t)`, *default:* `nil`) - The names of the resources where the message is found.
  *   `severity` (*type:* `String.t`, *default:* `nil`) - Indicates the severity of the message.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :detail => String.t() | nil,
          :resourceNames =>
            list(GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3ResourceName.t()) | nil,
          :resourceType => String.t() | nil,
          :resources => list(String.t()) | nil,
          :severity => String.t() | nil
        }

  field(:detail)

  field(:resourceNames,
    as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3ResourceName,
    type: :list
  )

  field(:resourceType)
  field(:resources, type: :list)
  field(:severity)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3ValidationMessage do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3ValidationMessage.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3ValidationMessage do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
