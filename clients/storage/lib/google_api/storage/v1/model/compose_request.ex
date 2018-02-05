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

defmodule GoogleApi.Storage.V1.Model.ComposeRequest do
  @moduledoc """
  A Compose request.

  ## Attributes

  - destination (Object): Properties of the resulting object. Defaults to: `null`.
  - kind (String.t): The kind of item this is. Defaults to: `null`.
  - sourceObjects ([ComposeRequestSourceObjects]): The list of source objects that will be concatenated into a single object. Defaults to: `null`.
  """

  defstruct [
    :destination,
    :kind,
    :sourceObjects
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Storage.V1.Model.ComposeRequest do
  import GoogleApi.Storage.V1.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:destination, :struct, GoogleApi.Storage.V1.Model.Object, options)
    |> deserialize(
      :sourceObjects,
      :list,
      GoogleApi.Storage.V1.Model.ComposeRequestSourceObjects,
      options
    )
  end
end

defimpl Poison.Encoder, for: GoogleApi.Storage.V1.Model.ComposeRequest do
  def encode(value, options) do
    GoogleApi.Storage.V1.Deserializer.serialize_non_nil(value, options)
  end
end
