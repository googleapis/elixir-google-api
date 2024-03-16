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

defmodule GoogleApi.ContentWarehouse.V1.Model.ResearchScamQueryMetadata do
  @moduledoc """
  Metadata to encode query-specific information. This may include NeighborSelectionOverride, pre-computed query tokenization, etc..

  ## Attributes

  *   `neighborSelectionOverride` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ResearchScamNeighborSelectionOverride.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :neighborSelectionOverride =>
            GoogleApi.ContentWarehouse.V1.Model.ResearchScamNeighborSelectionOverride.t() | nil
        }

  field(:neighborSelectionOverride,
    as: GoogleApi.ContentWarehouse.V1.Model.ResearchScamNeighborSelectionOverride
  )
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.ResearchScamQueryMetadata do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.ResearchScamQueryMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.ResearchScamQueryMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end