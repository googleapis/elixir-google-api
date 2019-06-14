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

defmodule GoogleApi.Script.V1.Model.Value do
  @moduledoc """
  `Value` represents a dynamically typed value which is the outcome of an
  executed script
  Based on Value at:
  google3/apps/maestro/api/struct.proto?q=message%5c%20Value

  ## Attributes

  - boolValue (boolean()): Represents a boolean value. Defaults to `nil`.
  - bytesValue (String.t): Represents raw byte values. Defaults to `nil`.
  - dateValue (String.t): Represents a date in ms since the epoch. Defaults to `nil`.
  - listValue (GoogleApi.Script.V1.Model.ListValue.t): Represents a repeated `Value`. Defaults to `nil`.
  - nullValue (String.t): Represents a null value. Defaults to `nil`.
  - numberValue (float()): Represents a double value. Defaults to `nil`.
  - protoValue (map()): Represents a structured proto value. Defaults to `nil`.
  - stringValue (String.t): Represents a string value. Defaults to `nil`.
  - structValue (GoogleApi.Script.V1.Model.Struct.t): Represents a structured value. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :boolValue => boolean(),
          :bytesValue => String.t(),
          :dateValue => String.t(),
          :listValue => GoogleApi.Script.V1.Model.ListValue.t(),
          :nullValue => String.t(),
          :numberValue => float(),
          :protoValue => map(),
          :stringValue => String.t(),
          :structValue => GoogleApi.Script.V1.Model.Struct.t()
        }

  field(:boolValue)
  field(:bytesValue)
  field(:dateValue)
  field(:listValue, as: GoogleApi.Script.V1.Model.ListValue)
  field(:nullValue)
  field(:numberValue)
  field(:protoValue, type: :map)
  field(:stringValue)
  field(:structValue, as: GoogleApi.Script.V1.Model.Struct)
end

defimpl Poison.Decoder, for: GoogleApi.Script.V1.Model.Value do
  def decode(value, options) do
    GoogleApi.Script.V1.Model.Value.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Script.V1.Model.Value do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
