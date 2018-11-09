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

defmodule GoogleApi.AdExchangeBuyer.V2beta1.Model.TimeOfDay do
  @moduledoc """
  Represents a time of day. The date and time zone are either not significant or are specified elsewhere. An API may choose to allow leap seconds. Related types are google.type.Date and &#x60;google.protobuf.Timestamp&#x60;.

  ## Attributes

  - hours (integer()): Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value \&quot;24:00:00\&quot; for scenarios like business closing time. Defaults to: `null`.
  - minutes (integer()): Minutes of hour of day. Must be from 0 to 59. Defaults to: `null`.
  - nanos (integer()): Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999. Defaults to: `null`.
  - seconds (integer()): Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :hours => any(),
          :minutes => any(),
          :nanos => any(),
          :seconds => any()
        }

  field(:hours)
  field(:minutes)
  field(:nanos)
  field(:seconds)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.TimeOfDay do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V2beta1.Model.TimeOfDay.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.TimeOfDay do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
