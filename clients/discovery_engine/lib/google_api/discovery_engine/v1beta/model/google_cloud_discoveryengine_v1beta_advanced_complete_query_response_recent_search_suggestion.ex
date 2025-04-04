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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryResponseRecentSearchSuggestion do
  @moduledoc """
  Suggestions from recent search history.

  ## Attributes

  *   `recentSearchTime` (*type:* `DateTime.t`, *default:* `nil`) - The time when this recent rearch happened.
  *   `score` (*type:* `float()`, *default:* `nil`) - The score of each suggestion. The score is in the range of [0, 1].
  *   `suggestion` (*type:* `String.t`, *default:* `nil`) - The suggestion for the query.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :recentSearchTime => DateTime.t() | nil,
          :score => float() | nil,
          :suggestion => String.t() | nil
        }

  field(:recentSearchTime, as: DateTime)
  field(:score)
  field(:suggestion)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryResponseRecentSearchSuggestion do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryResponseRecentSearchSuggestion.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryResponseRecentSearchSuggestion do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
