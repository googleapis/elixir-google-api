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

defmodule GoogleApi.APIGateway.V1.Model.ApigatewayListApiConfigsResponse do
  @moduledoc """
  Response message for ApiGatewayService.ListApiConfigs

  ## Attributes

  *   `apiConfigs` (*type:* `list(GoogleApi.APIGateway.V1.Model.ApigatewayApiConfig.t)`, *default:* `nil`) - API Configs.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Next page token.
  *   `unreachableLocations` (*type:* `list(String.t)`, *default:* `nil`) - Locations that could not be reached.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :apiConfigs => list(GoogleApi.APIGateway.V1.Model.ApigatewayApiConfig.t()) | nil,
          :nextPageToken => String.t() | nil,
          :unreachableLocations => list(String.t()) | nil
        }

  field(:apiConfigs, as: GoogleApi.APIGateway.V1.Model.ApigatewayApiConfig, type: :list)
  field(:nextPageToken)
  field(:unreachableLocations, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.APIGateway.V1.Model.ApigatewayListApiConfigsResponse do
  def decode(value, options) do
    GoogleApi.APIGateway.V1.Model.ApigatewayListApiConfigsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.APIGateway.V1.Model.ApigatewayListApiConfigsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
