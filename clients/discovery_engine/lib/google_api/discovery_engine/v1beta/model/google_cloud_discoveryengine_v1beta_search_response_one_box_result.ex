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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseOneBoxResult do
  @moduledoc """
  OneBoxResult is a holder for all results of specific type that we want to display in UI differently.

  ## Attributes

  *   `oneBoxType` (*type:* `String.t`, *default:* `nil`) - The type of One Box result.
  *   `searchResults` (*type:* `list(GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseSearchResult.t)`, *default:* `nil`) - The search results for this One Box.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :oneBoxType => String.t() | nil,
          :searchResults =>
            list(
              GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseSearchResult.t()
            )
            | nil
        }

  field(:oneBoxType)

  field(:searchResults,
    as:
      GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseSearchResult,
    type: :list
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseOneBoxResult do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseOneBoxResult.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseOneBoxResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
