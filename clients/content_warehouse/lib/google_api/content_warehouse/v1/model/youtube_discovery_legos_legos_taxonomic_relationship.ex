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

defmodule GoogleApi.ContentWarehouse.V1.Model.YoutubeDiscoveryLegosLegosTaxonomicRelationship do
  @moduledoc """
  Description of a taxonomic Legos annotation. http://go/legos/project.md#taxonomy-annotations

  ## Attributes

  *   `isRedundant` (*type:* `boolean()`, *default:* `nil`) - Set to true if the taxonomy annotation is redundant amongst the set of other taxonomy annotations for the same document, i.e. if there is at least one other taxonomy annotation that is a child node of this one.
  *   `score` (*type:* `float()`, *default:* `nil`) - A score, in the 0-1 range, used to rank taxonomy annotations.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :isRedundant => boolean() | nil,
          :score => float() | nil
        }

  field(:isRedundant)
  field(:score)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.YoutubeDiscoveryLegosLegosTaxonomicRelationship do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.YoutubeDiscoveryLegosLegosTaxonomicRelationship.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.YoutubeDiscoveryLegosLegosTaxonomicRelationship do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end