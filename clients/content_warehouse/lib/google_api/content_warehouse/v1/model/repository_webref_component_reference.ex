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

defmodule GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefComponentReference do
  @moduledoc """
  The ArgumentValue reference to Mention.CompoundMention.Component. Next available tag number: 4

  ## Attributes

  *   `debugEntity` (*type:* `String.t`, *default:* `nil`) - Optionally the freebase_mid of the WebrefEntity which the Component identifies via entity_index. This is purely to help humans diagnose the WebrefEntities structure, may not always be present and should not be used by production code. Use QueryJoinToMeaningStructConverter to compose a proper value in place of the component reference.
  *   `funcallName` (*type:* `String.t`, *default:* `nil`) - The WebrefEntity referenced by `index` is equivalent to this function call in this context, but not universally such that we don't want to recursively expand its MRF. Use this for example if an entity corresponds to a category in an Intersect: CellPhones() & RelatedTo(/m/foo), where /m/cell_phones is equivalent to CellPhones() (and may or may not have an annotated span), but we don't want to generally assert that /m/cell_phones == CellPhones(). This cannot be an actual FunctionCall to avoid a circular dependency.
  *   `index` (*type:* `integer()`, *default:* `nil`) - The index of the Component of the CompoundMention which has the mrf_index of this MRF expression in WebrefEntity. Required.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :debugEntity => String.t() | nil,
          :funcallName => String.t() | nil,
          :index => integer() | nil
        }

  field(:debugEntity)
  field(:funcallName)
  field(:index)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefComponentReference do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefComponentReference.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefComponentReference do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
