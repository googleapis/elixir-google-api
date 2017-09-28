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

defmodule GoogleApi.Genomics.V1.Model.Status do
  @moduledoc """
  The &#x60;Status&#x60; type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). The error model is designed to be:  - Simple to use and understand for most users - Flexible enough to meet unexpected needs  # Overview  The &#x60;Status&#x60; message contains three pieces of data: error code, error message, and error details. The error code should be an enum value of google.rpc.Code, but it may accept additional error codes if needed.  The error message should be a developer-facing English message that helps developers *understand* and *resolve* the error. If a localized user-facing error message is needed, put the localized message in the error details or localize it in the client. The optional error details may contain arbitrary information about the error. There is a predefined set of error detail types in the package &#x60;google.rpc&#x60; that can be used for common error conditions.  # Language mapping  The &#x60;Status&#x60; message is the logical representation of the error model, but it is not necessarily the actual wire format. When the &#x60;Status&#x60; message is exposed in different client libraries and different wire protocols, it can be mapped differently. For example, it will likely be mapped to some exceptions in Java, but more likely mapped to some error codes in C.  # Other uses  The error model and the &#x60;Status&#x60; message can be used in a variety of environments, either with or without APIs, to provide a consistent developer experience across different environments.  Example uses of this error model include:  - Partial errors. If a service needs to return partial errors to the client,     it may embed the &#x60;Status&#x60; in the normal response to indicate the partial     errors.  - Workflow errors. A typical workflow has multiple steps. Each step may     have a &#x60;Status&#x60; message for error reporting.  - Batch operations. If a client uses batch request and batch response, the     &#x60;Status&#x60; message should be used directly inside batch response, one for     each error sub-response.  - Asynchronous operations. If an API call embeds asynchronous operation     results in its response, the status of those operations should be     represented directly using the &#x60;Status&#x60; message.  - Logging. If some API errors are stored in logs, the message &#x60;Status&#x60; could     be used directly after any stripping needed for security/privacy reasons.

  ## Attributes

  - code (Integer): The status code, which should be an enum value of google.rpc.Code. Defaults to: `null`.
  - details (List[Object]): A list of messages that carry the error details.  There is a common set of message types for APIs to use. Defaults to: `null`.
  - message (String): A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client. Defaults to: `null`.
  """

  defstruct [
    :"code",
    :"details",
    :"message"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Genomics.V1.Model.Status do
  import GoogleApi.Genomics.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"details", :list, GoogleApi.Genomics.V1.Model.Object, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Genomics.V1.Model.Status do
  def encode(value, options) do
    GoogleApi.Genomics.V1.Deserializer.serialize_non_nil(value, options)
  end
end

