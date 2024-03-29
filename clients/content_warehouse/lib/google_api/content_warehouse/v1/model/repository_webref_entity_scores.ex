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

defmodule GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefEntityScores do
  @moduledoc """
  Keeps a set of scores about an entity. Next available tag: 20.

  ## Attributes

  *   `alphaEntityIdf` (*type:* `number()`, *default:* `nil`) - This field is only for debugging and link weight experiments. It stores the entity's idf from the alpha model. Alpha idfs are used for link weight computations and available during model omega building via enricher_current_entity_idf_for_link_direction.
  *   `commonNgramProb` (*type:* `number()`, *default:* `nil`) - Probability that the entity is a common ngram (e.g. from dictionary).
  *   `entityIdf` (*type:* `number()`, *default:* `nil`) - The final (model omega) idf of an entity. Equals log2(1 / probability of the entity to appear in a document). This probability is currently estimated from its names (i.e. it is a sum of the name frequency weighted by P(entity | name)).
  *   `nameCapitalizationProb` (*type:* `number()`, *default:* `nil`) - The following field is deprecated and should eventually be removed. It uses data and rules that have not been refreshed for ~10y and KG has changed a lot in the meantime. 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :alphaEntityIdf => number() | nil,
          :commonNgramProb => number() | nil,
          :entityIdf => number() | nil,
          :nameCapitalizationProb => number() | nil
        }

  field(:alphaEntityIdf)
  field(:commonNgramProb)
  field(:entityIdf)
  field(:nameCapitalizationProb)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefEntityScores do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefEntityScores.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefEntityScores do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
