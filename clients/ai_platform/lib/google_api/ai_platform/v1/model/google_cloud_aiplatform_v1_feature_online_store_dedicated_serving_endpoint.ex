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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FeatureOnlineStoreDedicatedServingEndpoint do
  @moduledoc """
  The dedicated serving endpoint for this FeatureOnlineStore. Only need to set when you choose Optimized storage type. Public endpoint is provisioned by default.

  ## Attributes

  *   `publicEndpointDomainName` (*type:* `String.t`, *default:* `nil`) - Output only. This field will be populated with the domain name to use for this FeatureOnlineStore
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :publicEndpointDomainName => String.t() | nil
        }

  field(:publicEndpointDomainName)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FeatureOnlineStoreDedicatedServingEndpoint do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FeatureOnlineStoreDedicatedServingEndpoint.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FeatureOnlineStoreDedicatedServingEndpoint do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
