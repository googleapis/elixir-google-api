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

defmodule GoogleApi.Partners.V2.Model.LogMessageRequest do
  @moduledoc """
  Request message for LogClientMessage.

  ## Attributes

  - clientInfo (Map[String, String]): Map of client info, such as URL, browser navigator, browser platform, etc. Defaults to: `null`.
  - details (String): Details about the client message. Defaults to: `null`.
  - level (String): Message level of client message. Defaults to: `null`.
    - Enum - one of [MESSAGE_LEVEL_UNSPECIFIED, ML_FINE, ML_INFO, ML_WARNING, ML_SEVERE]
  - requestMetadata (RequestMetadata): Current request metadata. Defaults to: `null`.
  """

  defstruct [
    :"clientInfo",
    :"details",
    :"level",
    :"requestMetadata"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Partners.V2.Model.LogMessageRequest do
  import GoogleApi.Partners.V2.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"requestMetadata", :struct, GoogleApi.Partners.V2.Model.RequestMetadata, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Partners.V2.Model.LogMessageRequest do
  def encode(value, options) do
    GoogleApi.Partners.V2.Deserializer.serialize_non_nil(value, options)
  end
end

