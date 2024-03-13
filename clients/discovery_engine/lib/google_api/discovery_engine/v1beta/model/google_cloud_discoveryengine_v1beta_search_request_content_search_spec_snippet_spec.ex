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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSnippetSpec do
  @moduledoc """
  A specification for configuring snippets in a search response.

  ## Attributes

  *   `maxSnippetCount` (*type:* `integer()`, *default:* `nil`) - [DEPRECATED] This field is deprecated. To control snippet return, use `return_snippet` field. For backwards compatibility, we will return snippet if max_snippet_count > 0.
  *   `referenceOnly` (*type:* `boolean()`, *default:* `nil`) - [DEPRECATED] This field is deprecated and will have no affect on the snippet.
  *   `returnSnippet` (*type:* `boolean()`, *default:* `nil`) - If `true`, then return snippet. If no snippet can be generated, we return "No snippet is available for this page." A `snippet_status` with `SUCCESS` or `NO_SNIPPET_AVAILABLE` will also be returned.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :maxSnippetCount => integer() | nil,
          :referenceOnly => boolean() | nil,
          :returnSnippet => boolean() | nil
        }

  field(:maxSnippetCount)
  field(:referenceOnly)
  field(:returnSnippet)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSnippetSpec do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSnippetSpec.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSnippetSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
