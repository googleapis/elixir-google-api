# Copyright 2017 Google Inc.
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


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Dataflow.V1b3.Model.CounterMetadata do
  @moduledoc """
  CounterMetadata includes all static non-name non-value counter attributes.

  ## Attributes

  - description (String): Human-readable description of the counter semantics. Defaults to: `null`.
  - kind (String): Counter aggregation kind. Defaults to: `null`.
    - Enum - one of [INVALID, SUM, MAX, MIN, MEAN, OR, AND, SET, DISTRIBUTION]
  - otherUnits (String): A string referring to the unit type. Defaults to: `null`.
  - standardUnits (String): System defined Units, see above enum. Defaults to: `null`.
    - Enum - one of [BYTES, BYTES_PER_SEC, MILLISECONDS, MICROSECONDS, NANOSECONDS, TIMESTAMP_MSEC, TIMESTAMP_USEC, TIMESTAMP_NSEC]
  """

  defstruct [
    :"description",
    :"kind",
    :"otherUnits",
    :"standardUnits"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.CounterMetadata do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.CounterMetadata do
  def encode(value, options) do
    GoogleApi.Dataflow.V1b3.Deserializer.serialize_non_nil(value, options)
  end
end

