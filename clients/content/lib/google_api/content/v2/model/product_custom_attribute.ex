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

defmodule GoogleApi.Content.V2.Model.ProductCustomAttribute do
  @moduledoc """
  

  ## Attributes

  - name (String): The name of the attribute. Underscores will be replaced by spaces upon insertion. Defaults to: `null`.
  - type (String): The type of the attribute. Defaults to: `null`.
  - unit (String): Free-form unit of the attribute. Unit can only be used for values of type INT or FLOAT. Defaults to: `null`.
  - value (String): The value of the attribute. Defaults to: `null`.
  """

  defstruct [
    :"name",
    :"type",
    :"unit",
    :"value"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.ProductCustomAttribute do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.ProductCustomAttribute do
  def encode(value, options) do
    GoogleApi.Content.V2.Deserializer.serialize_non_nil(value, options)
  end
end

