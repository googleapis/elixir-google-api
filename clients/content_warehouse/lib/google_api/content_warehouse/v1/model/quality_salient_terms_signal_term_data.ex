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

defmodule GoogleApi.ContentWarehouse.V1.Model.QualitySalientTermsSignalTermData do
  @moduledoc """
  SignalTermData is signal-specific term-level information. Stores mostly internal data as it is one of the primary data structures used in the populators.

  ## Attributes

  *   `bigramDiscountTf` (*type:* `number()`, *default:* `nil`) - The deduction of bigram counts from its unigram children. This field is only available in debug mode.
  *   `bigramness` (*type:* `number()`, *default:* `nil`) - How much we trust this bigram. For bigrams only. Range: [0.0, 1.0] This field is only available in debug mode.
  *   `centrality` (*type:* `number()`, *default:* `nil`) - Measures how topical this term is to a particular signal. A term like "lincoln" in the Abraham Lincoln's Wikipedia page should have a centrality close to 1.0 while non-central terms like "florida" should have a centrality close to 0.0. Range: [0.0, 1.0] This field is only available in debug mode.
  *   `correctedTf` (*type:* `number()`, *default:* `nil`) - The final term frequency for a particular term. This field is only available in debug mode.
  *   `expectedTf` (*type:* `number()`, *default:* `nil`) - The term frequency we were expecting for a term given its IDF. Range: [0, observed_volume] This field is only available in debug mode.
  *   `globalNpmi` (*type:* `number()`, *default:* `nil`) - Global NPMI. For bigrams only. This is a measure of the quality of bigrams calculated using IDF. Range: [-1.0, 1.0] This field is only available in debug mode.
  *   `idf` (*type:* `number()`, *default:* `nil`) - The IDF of the label of a particular term. For a canonical term, this is the mean IDF of its originals, weighted by their observed TF. This field is only available in debug mode.
  *   `isBigram` (*type:* `boolean()`, *default:* `nil`) - Whether or not this term is a bigram. This field is only available in debug mode.
  *   `label` (*type:* `String.t`, *default:* `nil`) - Raw string that identifies a particular term. This field is only available in debug mode.
  *   `localNpmi` (*type:* `number()`, *default:* `nil`) - Local NPMI (normalized pointwise mutual information). For bigrams only. This is a measure of the quality of bigrams calculated using observed TF. Range: [-1.0, 1.0] This field is only available in debug mode.
  *   `observedTf` (*type:* `number()`, *default:* `nil`) - The observed term frequency in a particular signal. This field is only available in debug mode.
  *   `originalTerm` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.QualitySalientTermsSignalTermData.t)`, *default:* `nil`) - The list of the original terms for a canonical. This is used in the pipeline and it is not present in the final output. This field is only available in debug mode.
  *   `rawTf` (*type:* `number()`, *default:* `nil`) - The raw term frequency in a particular signal. This field is only available in debug mode.
  *   `salience` (*type:* `number()`, *default:* `nil`) - The measure of how important this term is in this signal. Range: [0.0, 1.0] This field is only available in debug mode.
  *   `source` (*type:* `String.t`, *default:* `nil`) - source is the type of the signal of this SignalTermData.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bigramDiscountTf => number() | nil,
          :bigramness => number() | nil,
          :centrality => number() | nil,
          :correctedTf => number() | nil,
          :expectedTf => number() | nil,
          :globalNpmi => number() | nil,
          :idf => number() | nil,
          :isBigram => boolean() | nil,
          :label => String.t() | nil,
          :localNpmi => number() | nil,
          :observedTf => number() | nil,
          :originalTerm =>
            list(GoogleApi.ContentWarehouse.V1.Model.QualitySalientTermsSignalTermData.t()) | nil,
          :rawTf => number() | nil,
          :salience => number() | nil,
          :source => String.t() | nil
        }

  field(:bigramDiscountTf)
  field(:bigramness)
  field(:centrality)
  field(:correctedTf)
  field(:expectedTf)
  field(:globalNpmi)
  field(:idf)
  field(:isBigram)
  field(:label)
  field(:localNpmi)
  field(:observedTf)

  field(:originalTerm,
    as: GoogleApi.ContentWarehouse.V1.Model.QualitySalientTermsSignalTermData,
    type: :list
  )

  field(:rawTf)
  field(:salience)
  field(:source)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.QualitySalientTermsSignalTermData do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.QualitySalientTermsSignalTermData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.QualitySalientTermsSignalTermData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
