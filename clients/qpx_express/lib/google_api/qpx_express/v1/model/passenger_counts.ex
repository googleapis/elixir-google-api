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

defmodule GoogleApi.QPXExpress.V1.Model.PassengerCounts do
  @moduledoc """
  The number and type of passengers. Unfortunately the definition of an infant, child, adult, and senior citizen varies across carriers and reservation systems.

  ## Attributes

  - adultCount (Integer): The number of passengers that are adults. Defaults to: `null`.
  - childCount (Integer): The number of passengers that are children. Defaults to: `null`.
  - infantInLapCount (Integer): The number of passengers that are infants travelling in the lap of an adult. Defaults to: `null`.
  - infantInSeatCount (Integer): The number of passengers that are infants each assigned a seat. Defaults to: `null`.
  - kind (String): Identifies this as a passenger count object, representing the number of passengers. Value: the fixed string qpxexpress#passengerCounts. Defaults to: `null`.
  - seniorCount (Integer): The number of passengers that are senior citizens. Defaults to: `null`.
  """

  defstruct [
    :"adultCount",
    :"childCount",
    :"infantInLapCount",
    :"infantInSeatCount",
    :"kind",
    :"seniorCount"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.QPXExpress.V1.Model.PassengerCounts do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.QPXExpress.V1.Model.PassengerCounts do
  def encode(value, options) do
    GoogleApi.QPXExpress.V1.Deserializer.serialize_non_nil(value, options)
  end
end

