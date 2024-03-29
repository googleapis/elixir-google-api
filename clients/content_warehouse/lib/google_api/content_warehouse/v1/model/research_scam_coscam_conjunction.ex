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

defmodule GoogleApi.ContentWarehouse.V1.Model.ResearchScamCoscamConjunction do
  @moduledoc """
  ////////////////////////////////////////////////////////////////////////////// Conjunction: a single AND clause that contains multiple disjunctions.

  ## Attributes

  *   `disjunctionId` (*type:* `list(String.t)`, *default:* `nil`) - disjunction_id / is_positive *MUST* have the same length. They specify a set of disjunctions that make up this conjunction. The conjunction will be active iff *all* of the positive disjunctions are active and *all* of the negative disjunctions are inactive.
  *   `isPositive` (*type:* `list(boolean())`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :disjunctionId => list(String.t()) | nil,
          :isPositive => list(boolean()) | nil
        }

  field(:disjunctionId, type: :list)
  field(:isPositive, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.ResearchScamCoscamConjunction do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.ResearchScamCoscamConjunction.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.ResearchScamCoscamConjunction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
