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

defmodule GoogleApi.QPXExpress.V1.Model.TaxInfo do
  @moduledoc """
  Tax information.

  ## Attributes

  - chargeType (String): Whether this is a government charge or a carrier surcharge. Defaults to: `null`.
  - code (String): The code to enter in the ticket&#39;s tax box. Defaults to: `null`.
  - country (String): For government charges, the country levying the charge. Defaults to: `null`.
  - id (String): Identifier uniquely identifying this tax in a response. Not present for unnamed carrier surcharges. Defaults to: `null`.
  - kind (String): Identifies this as a tax information object. Value: the fixed string qpxexpress#taxInfo. Defaults to: `null`.
  - salePrice (String): The price of the tax in the sales or equivalent currency. Defaults to: `null`.
  """

  defstruct [
    :"chargeType",
    :"code",
    :"country",
    :"id",
    :"kind",
    :"salePrice"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.QPXExpress.V1.Model.TaxInfo do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.QPXExpress.V1.Model.TaxInfo do
  def encode(value, options) do
    GoogleApi.QPXExpress.V1.Deserializer.serialize_non_nil(value, options)
  end
end

