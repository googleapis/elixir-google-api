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

defmodule GoogleApi.Firestore.V1beta1.Model.CommitResponse do
  @moduledoc """
  The response for Firestore.Commit.

  ## Attributes

  - commitTime (String.t): The time at which the commit occurred. Defaults to: `null`.
  - writeResults ([WriteResult]): The result of applying the writes.  This i-th write result corresponds to the i-th write in the request. Defaults to: `null`.
  """

  defstruct [
    :"commitTime",
    :"writeResults"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Firestore.V1beta1.Model.CommitResponse do
  import GoogleApi.Firestore.V1beta1.Deserializer
  def decode(value, options) do
    value
    
    |> deserialize(:"writeResults", :list, GoogleApi.Firestore.V1beta1.Model.WriteResult, options)
    
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firestore.V1beta1.Model.CommitResponse do
  def encode(value, options) do
    GoogleApi.Firestore.V1beta1.Deserializer.serialize_non_nil(value, options)
  end
end

