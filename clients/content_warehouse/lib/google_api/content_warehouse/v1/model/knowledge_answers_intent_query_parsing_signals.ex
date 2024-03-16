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

defmodule GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryParsingSignals do
  @moduledoc """
  Parsing-related signals. Only horizontal signals should appear directly as fields on this message. Each domain should create their own extension for anything that they need to propagate down stream from AQUA. Note that this proto is not the same as the Superroot proto ParsingSignals (http://google3/knowledge/proto/scoring-signals.proto), which is a Superroot-specific signal used in Scoring. Next ID: 7

  ## Attributes

  *   `calibratedParsingScore` (*type:* `float()`, *default:* `nil`) - A parsing score that is independently calibrated by each parser/IG, used by pre-fulfillment ranker, see http://go/prefulfillment-ranker.
  *   `effectiveArgSpanLength` (*type:* `number()`, *default:* `nil`) - The total effective length of the spans for the arguments used to construct the parse. May include vertical specific adjustments. Eg: For the query [delete my 7 p.m. alarm called chicken] and intent Delete_alarm(alarm_object=RD(category=AlarmObject( label="chicken", trigger_time_datetime=<< 7 PM >>))), the effective argument span is "7 p.m." + "chicken" (total length of 13).
  *   `inQueryMaxEffectiveArgSpanLength` (*type:* `number()`, *default:* `nil`) - This is a cross-intent feature which is calculated by iterating all intent candidates. This feature should be populated in post-IG stage (before GB).
  *   `qrewriteCallPathInfoFingerprint` (*type:* `String.t`, *default:* `nil`) - This proto holds the fingerprint of the call path info of QRewrite client (e.g. the QUS's phase like "RBT","QBT"; the QUS's candidate type like "Identity"; and the ACE's candidate type like "FuzzyMatcher").
  *   `source` (*type:* `String.t`, *default:* `nil`) - The parser that calibrated the parsing score below.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :calibratedParsingScore => float() | nil,
          :effectiveArgSpanLength => number() | nil,
          :inQueryMaxEffectiveArgSpanLength => number() | nil,
          :qrewriteCallPathInfoFingerprint => String.t() | nil,
          :source => String.t() | nil
        }

  field(:calibratedParsingScore)
  field(:effectiveArgSpanLength)
  field(:inQueryMaxEffectiveArgSpanLength)
  field(:qrewriteCallPathInfoFingerprint)
  field(:source)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryParsingSignals do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryParsingSignals.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryParsingSignals do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end