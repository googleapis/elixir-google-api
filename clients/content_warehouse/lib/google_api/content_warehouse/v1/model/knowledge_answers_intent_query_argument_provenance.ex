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

defmodule GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgumentProvenance do
  @moduledoc """
  NextId: 11

  ## Attributes

  *   `anaphor` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgumentProvenanceQueryAnaphor.t`, *default:* `nil`) - If populated, the current query contains an anaphor that refers to the value. For example: U: Weather in Paris. [Weather(location=paris)] G: 65 degrees and sunny. U: How many people live there? [Population(city=paris)] The "there" in the current query would have the "anaphor" field set. NOTE: after a string rewrite this field will not be populated anymore if the rewrite replaced the anaphor with the corresponding value. For example, if we rewrite [How many people there] to [How many people in Paris], the CurrentQuerySignals for "paris" will not contain an "anaphor" message anymore in the following turns. It will only contain an eval_data for the span that corresponds to "paris" in the query.
  *   `attentionalEntity` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgumentProvenanceAttentionalEntity.t`, *default:* `nil`) - 
  *   `currentQuery` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgumentProvenanceCurrentQuery.t`, *default:* `nil`) - NOTE: PreviousQuery is used for values that originate directly from QRef entities annotated in the user query. AttentionalEntity is used for values that come from the system (entities published by a dialog). These values could also originate from an entity annotated by QRef in the query, but this is not necessarily the case. SearchAnswerValue is used for values that come from the system as part of the answer of the user query. For example: U: Wife of Barack Obama G: Barack Obama's wife is Michelle Obama Here "Barack Obama" can have an ArgumentProvenance of PreviousQuery, or AttentionalEntity if a dialog publishes that entity and the interpretation pulls the value from it. "Michelle Obama" can have an ArgumentProvenance of SearchAnswerValue, or AttentionalEntity if the dialog publishes that entity and the interpretation pulls the value it.
  *   `injectedContextualSchema` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgumentProvenanceInjectedContextualSchema.t`, *default:* `nil`) - 
  *   `previousQuery` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgumentProvenancePreviousQuery.t`, *default:* `nil`) - 
  *   `previousResponseMeaning` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgumentProvenancePreviousResponseMeaning.t`, *default:* `nil`) - 
  *   `previousTaskState` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgumentProvenancePreviousTaskState.t`, *default:* `nil`) - 
  *   `searchAnswerValue` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgumentProvenanceSearchAnswerValue.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :anaphor =>
            GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgumentProvenanceQueryAnaphor.t()
            | nil,
          :attentionalEntity =>
            GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgumentProvenanceAttentionalEntity.t()
            | nil,
          :currentQuery =>
            GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgumentProvenanceCurrentQuery.t()
            | nil,
          :injectedContextualSchema =>
            GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgumentProvenanceInjectedContextualSchema.t()
            | nil,
          :previousQuery =>
            GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgumentProvenancePreviousQuery.t()
            | nil,
          :previousResponseMeaning =>
            GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgumentProvenancePreviousResponseMeaning.t()
            | nil,
          :previousTaskState =>
            GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgumentProvenancePreviousTaskState.t()
            | nil,
          :searchAnswerValue =>
            GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgumentProvenanceSearchAnswerValue.t()
            | nil
        }

  field(:anaphor,
    as:
      GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgumentProvenanceQueryAnaphor
  )

  field(:attentionalEntity,
    as:
      GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgumentProvenanceAttentionalEntity
  )

  field(:currentQuery,
    as:
      GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgumentProvenanceCurrentQuery
  )

  field(:injectedContextualSchema,
    as:
      GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgumentProvenanceInjectedContextualSchema
  )

  field(:previousQuery,
    as:
      GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgumentProvenancePreviousQuery
  )

  field(:previousResponseMeaning,
    as:
      GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgumentProvenancePreviousResponseMeaning
  )

  field(:previousTaskState,
    as:
      GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgumentProvenancePreviousTaskState
  )

  field(:searchAnswerValue,
    as:
      GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgumentProvenanceSearchAnswerValue
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgumentProvenance do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgumentProvenance.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgumentProvenance do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
