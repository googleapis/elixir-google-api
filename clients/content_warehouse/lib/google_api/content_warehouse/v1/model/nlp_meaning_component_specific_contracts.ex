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

defmodule GoogleApi.ContentWarehouse.V1.Model.NlpMeaningComponentSpecificContracts do
  @moduledoc """
  A Component-Specific Contract is a proto message that can be placed on various elements of the MeaningCatalog (intent schemas, slots, types) that signals whether that element is part of the contract for a given component. go/contract-based-conformance

  ## Attributes

  *   `componentSpecificContracts` (*type:* `list(String.t)`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :componentSpecificContracts => list(String.t()) | nil
        }

  field(:componentSpecificContracts, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpMeaningComponentSpecificContracts do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.NlpMeaningComponentSpecificContracts.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpMeaningComponentSpecificContracts do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end