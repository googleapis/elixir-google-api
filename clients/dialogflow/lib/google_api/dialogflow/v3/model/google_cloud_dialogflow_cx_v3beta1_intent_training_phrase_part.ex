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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart do
  @moduledoc """
  Represents a part of a training phrase.

  ## Attributes

  *   `parameterId` (*type:* `String.t`, *default:* `nil`) - The parameter used to annotate this part of the training phrase. This field is required for annotated parts of the training phrase.
  *   `text` (*type:* `String.t`, *default:* `nil`) - Required. The text for this part.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :parameterId => String.t() | nil,
          :text => String.t() | nil
        }

  field(:parameterId)
  field(:text)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
