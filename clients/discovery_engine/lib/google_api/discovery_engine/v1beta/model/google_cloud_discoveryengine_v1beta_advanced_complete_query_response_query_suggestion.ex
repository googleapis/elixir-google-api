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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryResponseQuerySuggestion do
  @moduledoc """
  Suggestions as search queries.

  ## Attributes

  *   `completableFieldPaths` (*type:* `list(String.t)`, *default:* `nil`) - The unique document field paths that serve as the source of this suggestion if it was generated from completable fields. This field is only populated for the document-completable model.
  *   `dataStore` (*type:* `list(String.t)`, *default:* `nil`) - The name of the dataStore that this suggestion belongs to.
  *   `score` (*type:* `float()`, *default:* `nil`) - The score of each suggestion. The score is in the range of [0, 1].
  *   `suggestion` (*type:* `String.t`, *default:* `nil`) - The suggestion for the query.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :completableFieldPaths => list(String.t()) | nil,
          :dataStore => list(String.t()) | nil,
          :score => float() | nil,
          :suggestion => String.t() | nil
        }

  field(:completableFieldPaths, type: :list)
  field(:dataStore, type: :list)
  field(:score)
  field(:suggestion)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryResponseQuerySuggestion do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryResponseQuerySuggestion.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryResponseQuerySuggestion do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
