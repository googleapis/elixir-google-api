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

defmodule GoogleApi.Datastore.V1.Model.GoogleLongrunningOperation do
  @moduledoc """
  This resource represents a long-running operation that is the result of a network API call.

  ## Attributes

  - done (Boolean): If the value is &#x60;false&#x60;, it means the operation is still in progress. If true, the operation is completed, and either &#x60;error&#x60; or &#x60;response&#x60; is available. Defaults to: `null`.
  - error (Status): The error result of the operation in case of failure or cancellation. Defaults to: `null`.
  - metadata (Object): Service-specific metadata associated with the operation.  It typically contains progress information and common metadata such as create time. Some services might not provide such metadata.  Any method that returns a long-running operation should document the metadata type, if any. Defaults to: `null`.
  - name (String): The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the &#x60;name&#x60; should have the format of &#x60;operations/some/unique/name&#x60;. Defaults to: `null`.
  - response (Object): The normal response of the operation in case of success.  If the original method returns no data on success, such as &#x60;Delete&#x60;, the response is &#x60;google.protobuf.Empty&#x60;.  If the original method is standard &#x60;Get&#x60;/&#x60;Create&#x60;/&#x60;Update&#x60;, the response should be the resource.  For other methods, the response should have the type &#x60;XxxResponse&#x60;, where &#x60;Xxx&#x60; is the original method name.  For example, if the original method name is &#x60;TakeSnapshot()&#x60;, the inferred response type is &#x60;TakeSnapshotResponse&#x60;. Defaults to: `null`.
  """

  defstruct [
    :"done",
    :"error",
    :"metadata",
    :"name",
    :"response"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Datastore.V1.Model.GoogleLongrunningOperation do
  import GoogleApi.Datastore.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"error", :struct, GoogleApi.Datastore.V1.Model.Status, options)
    |> deserialize(:"metadata", :struct, GoogleApi.Datastore.V1.Model.Object, options)
    |> deserialize(:"response", :struct, GoogleApi.Datastore.V1.Model.Object, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Datastore.V1.Model.GoogleLongrunningOperation do
  def encode(value, options) do
    GoogleApi.Datastore.V1.Deserializer.serialize_non_nil(value, options)
  end
end

