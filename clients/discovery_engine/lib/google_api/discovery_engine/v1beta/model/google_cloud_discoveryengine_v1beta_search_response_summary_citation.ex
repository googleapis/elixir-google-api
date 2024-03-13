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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseSummaryCitation do
  @moduledoc """
  Citation info for a segment.

  ## Attributes

  *   `endIndex` (*type:* `String.t`, *default:* `nil`) - End of the attributed segment, exclusive.
  *   `sources` (*type:* `list(GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseSummaryCitationSource.t)`, *default:* `nil`) - Citation sources for the attributed segment.
  *   `startIndex` (*type:* `String.t`, *default:* `nil`) - Index indicates the start of the segment, measured in bytes/unicode.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endIndex => String.t() | nil,
          :sources =>
            list(
              GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseSummaryCitationSource.t()
            )
            | nil,
          :startIndex => String.t() | nil
        }

  field(:endIndex)

  field(:sources,
    as:
      GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseSummaryCitationSource,
    type: :list
  )

  field(:startIndex)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseSummaryCitation do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseSummaryCitation.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseSummaryCitation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
