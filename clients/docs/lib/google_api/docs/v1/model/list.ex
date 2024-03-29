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

defmodule GoogleApi.Docs.V1.Model.List do
  @moduledoc """
  A List represents the list attributes for a group of paragraphs that all belong to the same list. A paragraph that's part of a list has a reference to the list's ID in its bullet.

  ## Attributes

  *   `listProperties` (*type:* `GoogleApi.Docs.V1.Model.ListProperties.t`, *default:* `nil`) - The properties of the list.
  *   `suggestedDeletionIds` (*type:* `list(String.t)`, *default:* `nil`) - The suggested deletion IDs. If empty, then there are no suggested deletions of this list.
  *   `suggestedInsertionId` (*type:* `String.t`, *default:* `nil`) - The suggested insertion ID. If empty, then this is not a suggested insertion.
  *   `suggestedListPropertiesChanges` (*type:* `%{optional(String.t) => GoogleApi.Docs.V1.Model.SuggestedListProperties.t}`, *default:* `nil`) - The suggested changes to the list properties, keyed by suggestion ID.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :listProperties => GoogleApi.Docs.V1.Model.ListProperties.t() | nil,
          :suggestedDeletionIds => list(String.t()) | nil,
          :suggestedInsertionId => String.t() | nil,
          :suggestedListPropertiesChanges =>
            %{optional(String.t()) => GoogleApi.Docs.V1.Model.SuggestedListProperties.t()} | nil
        }

  field(:listProperties, as: GoogleApi.Docs.V1.Model.ListProperties)
  field(:suggestedDeletionIds, type: :list)
  field(:suggestedInsertionId)

  field(:suggestedListPropertiesChanges,
    as: GoogleApi.Docs.V1.Model.SuggestedListProperties,
    type: :map
  )
end

defimpl Poison.Decoder, for: GoogleApi.Docs.V1.Model.List do
  def decode(value, options) do
    GoogleApi.Docs.V1.Model.List.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Docs.V1.Model.List do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
