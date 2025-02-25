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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryResponseContentSuggestion do
  @moduledoc """
  Suggestions as content.

  ## Attributes

  *   `contentType` (*type:* `String.t`, *default:* `nil`) - The type of the content suggestion.
  *   `dataStore` (*type:* `String.t`, *default:* `nil`) - The name of the dataStore that this suggestion belongs to.
  *   `destinationUri` (*type:* `String.t`, *default:* `nil`) - The destination uri of the content suggestion.
  *   `document` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaDocument.t`, *default:* `nil`) - The document data snippet in the suggestion. Only a subset of fields will be populated.
  *   `iconUri` (*type:* `String.t`, *default:* `nil`) - The icon uri of the content suggestion.
  *   `score` (*type:* `float()`, *default:* `nil`) - The score of each suggestion. The score is in the range of [0, 1].
  *   `suggestion` (*type:* `String.t`, *default:* `nil`) - The suggestion for the query.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contentType => String.t() | nil,
          :dataStore => String.t() | nil,
          :destinationUri => String.t() | nil,
          :document =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaDocument.t()
            | nil,
          :iconUri => String.t() | nil,
          :score => float() | nil,
          :suggestion => String.t() | nil
        }

  field(:contentType)
  field(:dataStore)
  field(:destinationUri)

  field(:document,
    as: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaDocument
  )

  field(:iconUri)
  field(:score)
  field(:suggestion)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryResponseContentSuggestion do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryResponseContentSuggestion.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaAdvancedCompleteQueryResponseContentSuggestion do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
