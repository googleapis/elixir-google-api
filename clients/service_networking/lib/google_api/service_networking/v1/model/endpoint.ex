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

defmodule GoogleApi.ServiceNetworking.V1.Model.Endpoint do
  @moduledoc """
  `Endpoint` describes a network address of a service that serves a set of APIs. It is commonly known as a service endpoint. A service may expose any number of service endpoints, and all service endpoints share the same service definition, such as quota limits and monitoring metrics. Example: type: google.api.Service name: library-example.googleapis.com endpoints: # Declares network address `https://library-example.googleapis.com` # for service `library-example.googleapis.com`. The `https` scheme # is implicit for all service endpoints. Other schemes may be # supported in the future. - name: library-example.googleapis.com allow_cors: false - name: content-staging-library-example.googleapis.com # Allows HTTP OPTIONS calls to be passed to the API frontend, for it # to decide whether the subsequent cross-origin request is allowed # to proceed. allow_cors: true

  ## Attributes

  *   `aliases` (*type:* `list(String.t)`, *default:* `nil`) - Aliases for this endpoint, these will be served by the same UrlMap as the parent endpoint, and will be provisioned in the GCP stack for the Regional Endpoints.
  *   `allowCors` (*type:* `boolean()`, *default:* `nil`) - Allowing [CORS](https://en.wikipedia.org/wiki/Cross-origin_resource_sharing), aka cross-domain traffic, would allow the backends served from this endpoint to receive and respond to HTTP OPTIONS requests. The response will be used by the browser to determine whether the subsequent cross-origin request is allowed to proceed.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The canonical name of this endpoint.
  *   `target` (*type:* `String.t`, *default:* `nil`) - The specification of an Internet routable address of API frontend that will handle requests to this [API Endpoint](https://cloud.google.com/apis/design/glossary). It should be either a valid IPv4 address or a fully-qualified domain name. For example, "8.8.8.8" or "myservice.appspot.com".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :aliases => list(String.t()) | nil,
          :allowCors => boolean() | nil,
          :name => String.t() | nil,
          :target => String.t() | nil
        }

  field(:aliases, type: :list)
  field(:allowCors)
  field(:name)
  field(:target)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceNetworking.V1.Model.Endpoint do
  def decode(value, options) do
    GoogleApi.ServiceNetworking.V1.Model.Endpoint.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceNetworking.V1.Model.Endpoint do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
