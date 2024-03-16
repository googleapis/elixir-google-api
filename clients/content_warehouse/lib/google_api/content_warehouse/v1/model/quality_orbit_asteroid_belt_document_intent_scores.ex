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

defmodule GoogleApi.ContentWarehouse.V1.Model.QualityOrbitAsteroidBeltDocumentIntentScores do
  @moduledoc """
  Next ID: 7

  ## Attributes

  *   `belowThresholdIntents` (*type:* `list(String.t)`, *default:* `nil`) - Same as above, but for intents below triggering threshold. It can be assumed that any intent in this list has trigger=false. Most intents do not have below-threshold annotations.
  *   `belowThresholdScores` (*type:* `list(integer())`, *default:* `nil`) - 
  *   `imageIntentScores` (*type:* `%{optional(String.t) => GoogleApi.ContentWarehouse.V1.Model.QualityOrbitAsteroidBeltImageIntentScores.t}`, *default:* `nil`) - Map of imageid key to ImageIntentScores, for images on cdoc.doc_images
  *   `intents` (*type:* `list(String.t)`, *default:* `nil`) - The 'intents' and 'scores' fields are stored as parallel lists for compactness. The 'scores' field should not be accessed directly, but instead through the functions in document_intent_scores_utils.
  *   `scores` (*type:* `list(integer())`, *default:* `nil`) - The intent scores, scaled to integers between 0 and 100 for compactness.
  *   `version` (*type:* `integer()`, *default:* `nil`) - DEPRECATED. DO NOT USE IT FOR ANY REASON! contact orbit@ if necessary.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :belowThresholdIntents => list(String.t()) | nil,
          :belowThresholdScores => list(integer()) | nil,
          :imageIntentScores =>
            %{
              optional(String.t()) =>
                GoogleApi.ContentWarehouse.V1.Model.QualityOrbitAsteroidBeltImageIntentScores.t()
            }
            | nil,
          :intents => list(String.t()) | nil,
          :scores => list(integer()) | nil,
          :version => integer() | nil
        }

  field(:belowThresholdIntents, type: :list)
  field(:belowThresholdScores, type: :list)

  field(:imageIntentScores,
    as: GoogleApi.ContentWarehouse.V1.Model.QualityOrbitAsteroidBeltImageIntentScores,
    type: :map
  )

  field(:intents, type: :list)
  field(:scores, type: :list)
  field(:version)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.QualityOrbitAsteroidBeltDocumentIntentScores do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.QualityOrbitAsteroidBeltDocumentIntentScores.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.QualityOrbitAsteroidBeltDocumentIntentScores do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end