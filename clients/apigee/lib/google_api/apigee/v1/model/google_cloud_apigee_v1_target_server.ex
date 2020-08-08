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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1TargetServer do
  @moduledoc """
  TargetServer configuration. TargetServers are used to decouple a proxy's TargetEndpoint HTTPTargetConnections from concrete URLs for backend services.

  ## Attributes

  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. A human-readable description of this TargetServer.
  *   `host` (*type:* `String.t`, *default:* `nil`) - Required. The host name this target connects to. Value must be a valid hostname as described by RFC-1123.
  *   `isEnabled` (*type:* `boolean()`, *default:* `nil`) - Optional. Enabling/disabling a TargetServer is useful when TargetServers are used in load balancing configurations, and one or more TargetServers need to taken out of rotation periodically. Defaults to true.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. The resource id of this target server. Values must match the regular expression 
  *   `port` (*type:* `integer()`, *default:* `nil`) - Required. The port number this target connects to on the given host. Value must be between 1 and 65535, inclusive.
  *   `sSLInfo` (*type:* `GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1TlsInfo.t`, *default:* `nil`) - Optional. Specifies TLS configuration info for this TargetServer. The JSON name is `sSLInfo` for legacy/backwards compatibility reasons -- Edge originally supported SSL, and the name is still used for TLS configuration.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => String.t(),
          :host => String.t(),
          :isEnabled => boolean(),
          :name => String.t(),
          :port => integer(),
          :sSLInfo => GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1TlsInfo.t()
        }

  field(:description)
  field(:host)
  field(:isEnabled)
  field(:name)
  field(:port)
  field(:sSLInfo, as: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1TlsInfo)
end

defimpl Poison.Decoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1TargetServer do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1TargetServer.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1TargetServer do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
