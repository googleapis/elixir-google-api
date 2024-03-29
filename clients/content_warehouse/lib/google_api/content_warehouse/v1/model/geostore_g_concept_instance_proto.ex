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

defmodule GoogleApi.ContentWarehouse.V1.Model.GeostoreGConceptInstanceProto do
  @moduledoc """
  A GConceptInstanceProto contains a GConceptID (which is the unique identifier of a GConcept, a category in the Geo Ontology).

  ## Attributes

  *   `gconceptId` (*type:* `String.t`, *default:* `nil`) - The unique identifier of a GConcept (e.g. "gcid:railway").
  *   `metadata` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostoreFieldMetadataProto.t`, *default:* `nil`) - Field-level metadata for this GConcept.
  *   `prominence` (*type:* `String.t`, *default:* `nil`) - The relative prominence of this category to this feature according to the data provider, as one of the values from the enum above. Prominence is a measure of how well the given GConcept describes the feature. An example is a gas station with convenience store and ATM. All three GConcepts are very relevant, but the gas_station GConcept is the most prominent. If the prominence of this GConcept is unknown, this field should not be set.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :gconceptId => String.t() | nil,
          :metadata => GoogleApi.ContentWarehouse.V1.Model.GeostoreFieldMetadataProto.t() | nil,
          :prominence => String.t() | nil
        }

  field(:gconceptId)
  field(:metadata, as: GoogleApi.ContentWarehouse.V1.Model.GeostoreFieldMetadataProto)
  field(:prominence)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreGConceptInstanceProto do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GeostoreGConceptInstanceProto.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreGConceptInstanceProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
