# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer do
  @moduledoc """
  An answer from Knowledge Connector.

  ## Attributes

  - answer (String.t): The piece of text from the `source` knowledge base document that answers
  this conversational query. Defaults to `nil`.
  - faqQuestion (String.t): The corresponding FAQ question if the answer was extracted from a FAQ
  Document, empty otherwise. Defaults to `nil`.
  - matchConfidence (number()): The system's confidence score that this Knowledge answer is a good match
  for this conversational query.
  The range is from 0.0 (completely uncertain) to 1.0 (completely certain).
  Note: The confidence score is likely to vary somewhat (possibly even for
  identical requests), as the underlying model is under constant
  improvement. It may be deprecated in the future. We recommend using
  `match_confidence_level` which should be generally more stable. Defaults to `nil`.
  - matchConfidenceLevel (String.t): The system's confidence level that this knowledge answer is a good match
  for this conversational query.
  NOTE: The confidence level for a given `<query, answer>` pair may change
  without notice, as it depends on models that are constantly being
  improved. However, it will change less frequently than the confidence
  score below, and should be preferred for referencing the quality of an
  answer. Defaults to `nil`.
  - source (String.t): Indicates which Knowledge Document this answer was extracted from.
  Format: `projects/<Project ID>/knowledgeBases/<Knowledge Base
  ID>/documents/<Document ID>`. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :answer => String.t(),
          :faqQuestion => String.t(),
          :matchConfidence => number(),
          :matchConfidenceLevel => String.t(),
          :source => String.t()
        }

  field(:answer)
  field(:faqQuestion)
  field(:matchConfidence)
  field(:matchConfidenceLevel)
  field(:source)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
