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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1GeneratorSuggestion do
  @moduledoc """
  Suggestion generated using a Generator.

  ## Attributes

  *   `freeFormSuggestion` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1FreeFormSuggestion.t`, *default:* `nil`) - Optional. Free form suggestion.
  *   `summarySuggestion` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1SummarySuggestion.t`, *default:* `nil`) - Optional. Suggested summary.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :freeFormSuggestion =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1FreeFormSuggestion.t() | nil,
          :summarySuggestion =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1SummarySuggestion.t() | nil
        }

  field(:freeFormSuggestion,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1FreeFormSuggestion
  )

  field(:summarySuggestion,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1SummarySuggestion
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1GeneratorSuggestion do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1GeneratorSuggestion.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1GeneratorSuggestion do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
