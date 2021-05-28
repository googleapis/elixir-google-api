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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1GraphQLOperationGroup do
  @moduledoc """
  List of graphQL operation configuration details associated with Apigee API proxies or remote services. Remote services are non-Apigee proxies, such as Istio-Envoy.

  ## Attributes

  *   `operationConfigType` (*type:* `String.t`, *default:* `nil`) - Flag that specifies whether the configuration is for Apigee API proxy or a remote service. Valid values include `proxy` or `remoteservice`. Defaults to `proxy`. Set to `proxy` when Apigee API proxies are associated with the API product. Set to `remoteservice` when non-Apigee proxies like Istio-Envoy are associated with the API product.
  *   `operationConfigs` (*type:* `list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1GraphQLOperationConfig.t)`, *default:* `nil`) - Required. List of operation configurations for either Apigee API proxies or other remote services that are associated with this API product.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :operationConfigType => String.t() | nil,
          :operationConfigs =>
            list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1GraphQLOperationConfig.t()) | nil
        }

  field(:operationConfigType)

  field(:operationConfigs,
    as: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1GraphQLOperationConfig,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1GraphQLOperationGroup do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1GraphQLOperationGroup.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1GraphQLOperationGroup do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
