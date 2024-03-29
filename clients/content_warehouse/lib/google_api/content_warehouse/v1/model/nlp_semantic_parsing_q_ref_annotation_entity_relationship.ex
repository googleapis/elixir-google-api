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

defmodule GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingQRefAnnotationEntityRelationship do
  @moduledoc """


  ## Attributes

  *   `entityIndex` (*type:* `integer()`, *default:* `nil`) - The index of the other entity in the relationship.
  *   `impliedBy` (*type:* `boolean()`, *default:* `nil`) - True if this entity is implied by the other (includes geo contains).
  *   `implies` (*type:* `boolean()`, *default:* `nil`) - True if this entity implies the other (includes geo contained by).
  *   `linkPropertyName` (*type:* `list(String.t)`, *default:* `nil`) - Names of the relationship links.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :entityIndex => integer() | nil,
          :impliedBy => boolean() | nil,
          :implies => boolean() | nil,
          :linkPropertyName => list(String.t()) | nil
        }

  field(:entityIndex)
  field(:impliedBy)
  field(:implies)
  field(:linkPropertyName, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingQRefAnnotationEntityRelationship do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingQRefAnnotationEntityRelationship.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingQRefAnnotationEntityRelationship do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
