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

defmodule GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaControlPromoteAction do
  @moduledoc """
  Promote certain links based on some trigger queries. Example: Promote shoe store link when searching for `shoe` keyword. The link can be outside of associated data store.

  ## Attributes

  *   `dataStore` (*type:* `String.t`, *default:* `nil`) - Required. Data store with which this promotion is attached to.
  *   `searchLinkPromotion` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchLinkPromotion.t`, *default:* `nil`) - Required. Promotion attached to this action.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dataStore => String.t() | nil,
          :searchLinkPromotion =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchLinkPromotion.t()
            | nil
        }

  field(:dataStore)

  field(:searchLinkPromotion,
    as: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchLinkPromotion
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaControlPromoteAction do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaControlPromoteAction.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaControlPromoteAction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
