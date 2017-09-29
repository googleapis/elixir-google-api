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

defmodule GoogleApi.Monitoring.V3.Model.Option do
  @moduledoc """
  A protocol buffer option, which can be attached to a message, field, enumeration, etc.

  ## Attributes

  - name (String): The option&#39;s name. For protobuf built-in options (options defined in descriptor.proto), this is the short name. For example, \&quot;map_entry\&quot;. For custom options, it should be the fully-qualified name. For example, \&quot;google.api.http\&quot;. Defaults to: `null`.
  - value (Object): The option&#39;s value packed in an Any message. If the value is a primitive, the corresponding wrapper type defined in google/protobuf/wrappers.proto should be used. If the value is an enum, it should be stored as an int32 value using the google.protobuf.Int32Value type. Defaults to: `null`.
  """

  defstruct [
    :"name",
    :"value"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Monitoring.V3.Model.Option do
  import GoogleApi.Monitoring.V3.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"value", :struct, GoogleApi.Monitoring.V3.Model.Object, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Monitoring.V3.Model.Option do
  def encode(value, options) do
    GoogleApi.Monitoring.V3.Deserializer.serialize_non_nil(value, options)
  end
end

