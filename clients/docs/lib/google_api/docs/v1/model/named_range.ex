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

defmodule GoogleApi.Docs.V1.Model.NamedRange do
  @moduledoc """
  A collection of Ranges with the same named range ID. Named ranges allow developers to associate parts of a document with an arbitrary user-defined label so their contents can be programmatically read or edited later. A document can contain multiple named ranges with the same name, but every named range has a unique ID. A named range is created with a single Range, and content inserted inside a named range generally expands that range. However, certain document changes can cause the range to be split into multiple ranges. Named ranges are not private. All applications and collaborators that have access to the document can see its named ranges.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the named range.
  *   `namedRangeId` (*type:* `String.t`, *default:* `nil`) - The ID of the named range.
  *   `ranges` (*type:* `list(GoogleApi.Docs.V1.Model.Range.t)`, *default:* `nil`) - The ranges that belong to this named range.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :namedRangeId => String.t() | nil,
          :ranges => list(GoogleApi.Docs.V1.Model.Range.t()) | nil
        }

  field(:name)
  field(:namedRangeId)
  field(:ranges, as: GoogleApi.Docs.V1.Model.Range, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Docs.V1.Model.NamedRange do
  def decode(value, options) do
    GoogleApi.Docs.V1.Model.NamedRange.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Docs.V1.Model.NamedRange do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
