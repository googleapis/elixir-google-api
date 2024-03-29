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

defmodule GoogleApi.ContentWarehouse.V1.Model.CopleySubreferenceReference do
  @moduledoc """
  Represents a reference that may be part of a larger compound reference. For example, "my brother's birthday" will have a subreference that may have references for "my brother".

  ## Attributes

  *   `personalReferenceTypes` (*type:* `list(String.t)`, *default:* `nil`) - Type of reference. There may be multiple for a single reference (e.g. relationship and contact).
  *   `referenceScore` (*type:* `number()`, *default:* `nil`) - Highest reference score for any references merged in this span.
  *   `relationshipLexicalInfo` (*type:* `GoogleApi.ContentWarehouse.V1.Model.CopleyLexicalMetadata.t`, *default:* `nil`) - Only set for unresolved relationship references and can be used to get the canonical word for the relationship (e.g. "mother") in TTS.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :personalReferenceTypes => list(String.t()) | nil,
          :referenceScore => number() | nil,
          :relationshipLexicalInfo =>
            GoogleApi.ContentWarehouse.V1.Model.CopleyLexicalMetadata.t() | nil
        }

  field(:personalReferenceTypes, type: :list)
  field(:referenceScore)
  field(:relationshipLexicalInfo, as: GoogleApi.ContentWarehouse.V1.Model.CopleyLexicalMetadata)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.CopleySubreferenceReference do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.CopleySubreferenceReference.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.CopleySubreferenceReference do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
