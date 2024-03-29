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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3DataStoreConnectionSignals do
  @moduledoc """
  Data store connection feature output signals. Might be only partially field if processing stop before the final answer. Reasons for this can be, but are not limited to: empty UCS search results, positive RAI check outcome, grounding failure, ...

  ## Attributes

  *   `answer` (*type:* `String.t`, *default:* `nil`) - Optional. The final compiled answer.
  *   `answerGenerationModelCallSignals` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3DataStoreConnectionSignalsAnswerGenerationModelCallSignals.t`, *default:* `nil`) - Optional. Diagnostic info related to the answer generation model call.
  *   `answerParts` (*type:* `list(GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3DataStoreConnectionSignalsAnswerPart.t)`, *default:* `nil`) - Optional. Answer parts with relevant citations. Concatenation of texts should add up the `answer` (not counting whitespaces).
  *   `citedSnippets` (*type:* `list(GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3DataStoreConnectionSignalsCitedSnippet.t)`, *default:* `nil`) - Optional. Snippets cited by the answer generation model from the most to least relevant.
  *   `groundingSignals` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals.t`, *default:* `nil`) - Optional. Grounding signals.
  *   `rewriterModelCallSignals` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3DataStoreConnectionSignalsRewriterModelCallSignals.t`, *default:* `nil`) - Optional. Diagnostic info related to the rewriter model call.
  *   `rewrittenQuery` (*type:* `String.t`, *default:* `nil`) - Optional. Rewritten string query used for search.
  *   `safetySignals` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals.t`, *default:* `nil`) - Optional. Safety check result.
  *   `searchSnippets` (*type:* `list(GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSearchSnippet.t)`, *default:* `nil`) - Optional. Search snippets included in the answer generation prompt.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :answer => String.t() | nil,
          :answerGenerationModelCallSignals =>
            GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3DataStoreConnectionSignalsAnswerGenerationModelCallSignals.t()
            | nil,
          :answerParts =>
            list(
              GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3DataStoreConnectionSignalsAnswerPart.t()
            )
            | nil,
          :citedSnippets =>
            list(
              GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3DataStoreConnectionSignalsCitedSnippet.t()
            )
            | nil,
          :groundingSignals =>
            GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals.t()
            | nil,
          :rewriterModelCallSignals =>
            GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3DataStoreConnectionSignalsRewriterModelCallSignals.t()
            | nil,
          :rewrittenQuery => String.t() | nil,
          :safetySignals =>
            GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals.t()
            | nil,
          :searchSnippets =>
            list(
              GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSearchSnippet.t()
            )
            | nil
        }

  field(:answer)

  field(:answerGenerationModelCallSignals,
    as:
      GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3DataStoreConnectionSignalsAnswerGenerationModelCallSignals
  )

  field(:answerParts,
    as:
      GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3DataStoreConnectionSignalsAnswerPart,
    type: :list
  )

  field(:citedSnippets,
    as:
      GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3DataStoreConnectionSignalsCitedSnippet,
    type: :list
  )

  field(:groundingSignals,
    as:
      GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3DataStoreConnectionSignalsGroundingSignals
  )

  field(:rewriterModelCallSignals,
    as:
      GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3DataStoreConnectionSignalsRewriterModelCallSignals
  )

  field(:rewrittenQuery)

  field(:safetySignals,
    as:
      GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSafetySignals
  )

  field(:searchSnippets,
    as:
      GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSearchSnippet,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3DataStoreConnectionSignals do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3DataStoreConnectionSignals.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3DataStoreConnectionSignals do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
