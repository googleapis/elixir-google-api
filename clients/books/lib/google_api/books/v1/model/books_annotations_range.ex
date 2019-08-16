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

defmodule GoogleApi.Books.V1.Model.BooksAnnotationsRange do
  @moduledoc """


  ## Attributes

  *   `endOffset` (*type:* `String.t`, *default:* `nil`) - The offset from the ending position.
  *   `endPosition` (*type:* `String.t`, *default:* `nil`) - The ending position for the range.
  *   `startOffset` (*type:* `String.t`, *default:* `nil`) - The offset from the starting position.
  *   `startPosition` (*type:* `String.t`, *default:* `nil`) - The starting position for the range.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endOffset => String.t(),
          :endPosition => String.t(),
          :startOffset => String.t(),
          :startPosition => String.t()
        }

  field(:endOffset)
  field(:endPosition)
  field(:startOffset)
  field(:startPosition)
end

defimpl Poison.Decoder, for: GoogleApi.Books.V1.Model.BooksAnnotationsRange do
  def decode(value, options) do
    GoogleApi.Books.V1.Model.BooksAnnotationsRange.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Books.V1.Model.BooksAnnotationsRange do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
