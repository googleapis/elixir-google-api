# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.DeveloperConnect.V1.Model.HttpBody do
  @moduledoc """
  Message that represents an arbitrary HTTP body. It should only be used for payload formats that can't be represented as JSON, such as raw binary or an HTML page. This message can be used both in streaming and non-streaming API methods in the request as well as the response. It can be used as a top-level request field, which is convenient if one wants to extract parameters from either the URL or HTTP template into the request fields and also want access to the raw HTTP body. Example: message GetResourceRequest { // A unique request id. string request_id = 1; // The raw HTTP body is bound to this field. google.api.HttpBody http_body = 2; } service ResourceService { rpc GetResource(GetResourceRequest) returns (google.api.HttpBody); rpc UpdateResource(google.api.HttpBody) returns (google.protobuf.Empty); } Example with streaming methods: service CaldavService { rpc GetCalendar(stream google.api.HttpBody) returns (stream google.api.HttpBody); rpc UpdateCalendar(stream google.api.HttpBody) returns (stream google.api.HttpBody); } Use of this type only changes how the request and response bodies are handled, all other features will continue to work unchanged.

  ## Attributes

  *   `contentType` (*type:* `String.t`, *default:* `nil`) - The HTTP Content-Type header value specifying the content type of the body.
  *   `data` (*type:* `String.t`, *default:* `nil`) - The HTTP request/response body as raw binary.
  *   `extensions` (*type:* `list(map())`, *default:* `nil`) - Application specific response metadata. Must be set in the first response for streaming APIs.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contentType => String.t() | nil,
          :data => String.t() | nil,
          :extensions => list(map()) | nil
        }

  field(:contentType)
  field(:data)
  field(:extensions, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DeveloperConnect.V1.Model.HttpBody do
  def decode(value, options) do
    GoogleApi.DeveloperConnect.V1.Model.HttpBody.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DeveloperConnect.V1.Model.HttpBody do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
