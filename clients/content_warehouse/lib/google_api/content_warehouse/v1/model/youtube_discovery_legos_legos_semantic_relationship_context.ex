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

defmodule GoogleApi.ContentWarehouse.V1.Model.YoutubeDiscoveryLegosLegosSemanticRelationshipContext do
  @moduledoc """
  Extra context about how the entity relates to the document. Typically vertical-specific.

  ## Attributes

  *   `subject` (*type:* `GoogleApi.ContentWarehouse.V1.Model.YoutubeDiscoveryLegosLegosEntity.t`, *default:* `nil`) - The subject of the semantic relationship. This is set when the relationship is derived from some other entity. The exact meaning of this field depends on the ContextType.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of semantic relationship between the document and the entity. This allows one to retrieve vertical-specific fine-grained information about the document.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :subject =>
            GoogleApi.ContentWarehouse.V1.Model.YoutubeDiscoveryLegosLegosEntity.t() | nil,
          :type => String.t() | nil
        }

  field(:subject, as: GoogleApi.ContentWarehouse.V1.Model.YoutubeDiscoveryLegosLegosEntity)
  field(:type)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.YoutubeDiscoveryLegosLegosSemanticRelationshipContext do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.YoutubeDiscoveryLegosLegosSemanticRelationshipContext.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.YoutubeDiscoveryLegosLegosSemanticRelationshipContext do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
