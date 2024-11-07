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

defmodule GoogleApi.NetworkConnectivity.V1.Model.ServiceConnectionToken do
  @moduledoc """
  The ServiceConnectionToken resource.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time when the ServiceConnectionToken was created.
  *   `description` (*type:* `String.t`, *default:* `nil`) - A description of this resource.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Optional. The etag is computed by the server, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  *   `expireTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time to which this token is valid.
  *   `labels` (*type:* `map()`, *default:* `nil`) - User-defined labels.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Immutable. The name of a ServiceConnectionToken. Format: projects/{project}/locations/{location}/ServiceConnectionTokens/{service_connection_token} See: https://google.aip.dev/122#fields-representing-resource-names
  *   `network` (*type:* `String.t`, *default:* `nil`) - The resource path of the network associated with this token. Example: projects/{projectNumOrId}/global/networks/{resourceId}.
  *   `token` (*type:* `String.t`, *default:* `nil`) - Output only. The token generated by Automation.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time when the ServiceConnectionToken was updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :etag => String.t() | nil,
          :expireTime => DateTime.t() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :network => String.t() | nil,
          :token => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:description)
  field(:etag)
  field(:expireTime, as: DateTime)
  field(:labels, type: :map)
  field(:name)
  field(:network)
  field(:token)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkConnectivity.V1.Model.ServiceConnectionToken do
  def decode(value, options) do
    GoogleApi.NetworkConnectivity.V1.Model.ServiceConnectionToken.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkConnectivity.V1.Model.ServiceConnectionToken do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
