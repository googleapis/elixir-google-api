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

defmodule GoogleApi.Retail.V2.Model.GoogleCloudRetailV2CompleteQueryResponse do
  @moduledoc """
  Response of the auto-complete query.

  ## Attributes

  *   `attributionToken` (*type:* `String.t`, *default:* `nil`) - A unique complete token. This should be included in the SearchRequest resulting from this completion, which enables accurate attribution of complete model performance.
  *   `completionResults` (*type:* `list(GoogleApi.Retail.V2.Model.GoogleCloudRetailV2CompleteQueryResponseCompletionResult.t)`, *default:* `nil`) - Results of the matching suggestions. The result list is ordered and the first result is top suggestion.
  *   `recentSearchResults` (*type:* `list(GoogleApi.Retail.V2.Model.GoogleCloudRetailV2CompleteQueryResponseRecentSearchResult.t)`, *default:* `nil`) - Matched recent searches of this user. The maximum number of recent searches is 10. This field is a restricted feature. Contact Retail Search support team if you are interested in enabling it. This feature is only available when CompleteQueryRequest.visitor_id field is set and UserEvent is imported. The recent searches satisfy the follow rules: * They are ordered from latest to oldest. * They are matched with CompleteQueryRequest.query case insensitively. * They are transformed to lower cases. * They are UTF-8 safe. Recent searches are deduplicated. More recent searches will be reserved when duplication happens.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attributionToken => String.t() | nil,
          :completionResults =>
            list(
              GoogleApi.Retail.V2.Model.GoogleCloudRetailV2CompleteQueryResponseCompletionResult.t()
            )
            | nil,
          :recentSearchResults =>
            list(
              GoogleApi.Retail.V2.Model.GoogleCloudRetailV2CompleteQueryResponseRecentSearchResult.t()
            )
            | nil
        }

  field(:attributionToken)

  field(:completionResults,
    as: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2CompleteQueryResponseCompletionResult,
    type: :list
  )

  field(:recentSearchResults,
    as: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2CompleteQueryResponseRecentSearchResult,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2CompleteQueryResponse do
  def decode(value, options) do
    GoogleApi.Retail.V2.Model.GoogleCloudRetailV2CompleteQueryResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2CompleteQueryResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
