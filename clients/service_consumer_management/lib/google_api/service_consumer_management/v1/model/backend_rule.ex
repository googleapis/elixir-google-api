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

defmodule GoogleApi.ServiceConsumerManagement.V1.Model.BackendRule do
  @moduledoc """
  A backend rule provides configuration for an individual API element.

  ## Attributes

  *   `address` (*type:* `String.t`, *default:* `nil`) - The address of the API backend. The scheme is used to determine the backend protocol and security. The following schemes are accepted: SCHEME PROTOCOL SECURITY http:// HTTP None https:// HTTP TLS grpc:// gRPC None grpcs:// gRPC TLS It is recommended to explicitly include a scheme. Leaving out the scheme may cause constrasting behaviors across platforms. If the port is unspecified, the default is: - 80 for schemes without TLS - 443 for schemes with TLS For HTTP backends, use protocol to specify the protocol version.
  *   `deadline` (*type:* `float()`, *default:* `nil`) - The number of seconds to wait for a response from a request. The default varies based on the request protocol and deployment environment.
  *   `disableAuth` (*type:* `boolean()`, *default:* `nil`) - When disable_auth is true, a JWT ID token won't be generated and the original "Authorization" HTTP header will be preserved. If the header is used to carry the original token and is expected by the backend, this field must be set to true to preserve the header.
  *   `jwtAudience` (*type:* `String.t`, *default:* `nil`) - The JWT audience is used when generating a JWT ID token for the backend. This ID token will be added in the HTTP "authorization" header, and sent to the backend.
  *   `operationDeadline` (*type:* `float()`, *default:* `nil`) - The number of seconds to wait for the completion of a long running operation. The default is no deadline.
  *   `pathTranslation` (*type:* `String.t`, *default:* `nil`) - 
  *   `protocol` (*type:* `String.t`, *default:* `nil`) - The protocol used for sending a request to the backend. The supported values are "http/1.1" and "h2". The default value is inferred from the scheme in the address field: SCHEME PROTOCOL http:// http/1.1 https:// http/1.1 grpc:// h2 grpcs:// h2 For secure HTTP backends (https://) that support HTTP/2, set this field to "h2" for improved performance. Configuring this field to non-default values is only supported for secure HTTP backends. This field will be ignored for all other backends. See https://www.iana.org/assignments/tls-extensiontype-values/tls-extensiontype-values.xhtml#alpn-protocol-ids for more details on the supported values.
  *   `selector` (*type:* `String.t`, *default:* `nil`) - Selects the methods to which this rule applies. Refer to selector for syntax details.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :address => String.t() | nil,
          :deadline => float() | nil,
          :disableAuth => boolean() | nil,
          :jwtAudience => String.t() | nil,
          :operationDeadline => float() | nil,
          :pathTranslation => String.t() | nil,
          :protocol => String.t() | nil,
          :selector => String.t() | nil
        }

  field(:address)
  field(:deadline)
  field(:disableAuth)
  field(:jwtAudience)
  field(:operationDeadline)
  field(:pathTranslation)
  field(:protocol)
  field(:selector)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.BackendRule do
  def decode(value, options) do
    GoogleApi.ServiceConsumerManagement.V1.Model.BackendRule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.BackendRule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
