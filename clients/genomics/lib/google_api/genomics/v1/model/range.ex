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

defmodule GoogleApi.Genomics.V1.Model.Range do
  @moduledoc """
  A 0-based half-open genomic coordinate range for search requests.

  ## Attributes

  - end (String): The end position of the range on the reference, 0-based exclusive. Defaults to: `null`.
  - referenceName (String): The reference sequence name, for example &#x60;chr1&#x60;, &#x60;1&#x60;, or &#x60;chrX&#x60;. Defaults to: `null`.
  - start (String): The start position of the range on the reference, 0-based inclusive. Defaults to: `null`.
  """

  defstruct [
    :"end",
    :"referenceName",
    :"start"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Genomics.V1.Model.Range do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.Genomics.V1.Model.Range do
  def encode(value, options) do
    GoogleApi.Genomics.V1.Deserializer.serialize_non_nil(value, options)
  end
end

