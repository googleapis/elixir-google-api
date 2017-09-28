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

defmodule GoogleApi.Content.V2.Model.CarrierRate do
  @moduledoc """
  

  ## Attributes

  - carrierName (String): Carrier service, such as \&quot;UPS\&quot; or \&quot;Fedex\&quot;. The list of supported carriers can be retrieved via the getSupportedCarriers method. Required. Defaults to: `null`.
  - carrierService (String): Carrier service, such as \&quot;ground\&quot; or \&quot;2 days\&quot;. The list of supported services for a carrier can be retrieved via the getSupportedCarriers method. Required. Defaults to: `null`.
  - flatAdjustment (Price): Additive shipping rate modifier. Can be negative. For example { \&quot;value\&quot;: \&quot;1\&quot;, \&quot;currency\&quot; : \&quot;USD\&quot; } adds $1 to the rate, { \&quot;value\&quot;: \&quot;-3\&quot;, \&quot;currency\&quot; : \&quot;USD\&quot; } removes $3 from the rate. Optional. Defaults to: `null`.
  - name (String): Name of the carrier rate. Must be unique per rate group. Required. Defaults to: `null`.
  - originPostalCode (String): Shipping origin for this carrier rate. Required. Defaults to: `null`.
  - percentageAdjustment (String): Multiplicative shipping rate modifier as a number in decimal notation. Can be negative. For example \&quot;5.4\&quot; increases the rate by 5.4%, \&quot;-3\&quot; decreases the rate by 3%. Optional. Defaults to: `null`.
  """

  defstruct [
    :"carrierName",
    :"carrierService",
    :"flatAdjustment",
    :"name",
    :"originPostalCode",
    :"percentageAdjustment"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.CarrierRate do
  import GoogleApi.Content.V2.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"flatAdjustment", :struct, GoogleApi.Content.V2.Model.Price, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.CarrierRate do
  def encode(value, options) do
    GoogleApi.Content.V2.Deserializer.serialize_non_nil(value, options)
  end
end

