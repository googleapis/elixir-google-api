# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Dataflow.V1b3.Model.Position do
  @moduledoc """
  Position defines a position within a collection of data.  The value
  can be either the end position, a key (used with ordered
  collections), a byte offset, or a record index.

  ## Attributes

  - byteOffset (String.t): Position is a byte offset. Defaults to `nil`.
  - concatPosition (GoogleApi.Dataflow.V1b3.Model.ConcatPosition.t): CloudPosition is a concat position. Defaults to `nil`.
  - end (boolean()): Position is past all other positions. Also useful for the end
  position of an unbounded range. Defaults to `nil`.
  - key (String.t): Position is a string key, ordered lexicographically. Defaults to `nil`.
  - recordIndex (String.t): Position is a record index. Defaults to `nil`.
  - shufflePosition (String.t): CloudPosition is a base64 encoded BatchShufflePosition (with FIXED
  sharding). Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :byteOffset => String.t(),
          :concatPosition => GoogleApi.Dataflow.V1b3.Model.ConcatPosition.t(),
          :end => boolean(),
          :key => String.t(),
          :recordIndex => String.t(),
          :shufflePosition => String.t()
        }

  field(:byteOffset)
  field(:concatPosition, as: GoogleApi.Dataflow.V1b3.Model.ConcatPosition)
  field(:end)
  field(:key)
  field(:recordIndex)
  field(:shufflePosition)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.Position do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.Position.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.Position do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
