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

defmodule GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1UserEvent do
  @moduledoc """
  UserEvent captures all metadata information Discovery Engine API needs to know about how end users interact with your website.

  ## Attributes

  *   `attributes` (*type:* `%{optional(String.t) => GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1CustomAttribute.t}`, *default:* `nil`) - Extra user event features to include in the recommendation model. These attributes must NOT contain data that needs to be parsed or processed further, e.g. JSON or other encodings. If you provide custom attributes for ingested user events, also include them in the user events that you associate with prediction requests. Custom attribute formatting must be consistent between imported events and events provided with prediction requests. This lets the Discovery Engine API use those custom attributes when training models and serving predictions, which helps improve recommendation quality. This field needs to pass all below criteria, otherwise an `INVALID_ARGUMENT` error is returned: * The key must be a UTF-8 encoded string with a length limit of 5,000 characters. * For text attributes, at most 400 values are allowed. Empty values are not allowed. Each value must be a UTF-8 encoded string with a length limit of 256 characters. * For number attributes, at most 400 values are allowed. For product recommendations, an example of extra user information is `traffic_channel`, which is how a user arrives at the site. Users can arrive at the site by coming to the site directly, coming through Google search, or in other ways.
  *   `attributionToken` (*type:* `String.t`, *default:* `nil`) - Token to attribute an API response to user action(s) to trigger the event. Highly recommended for user events that are the result of RecommendationService.Recommend. This field enables accurate attribution of recommendation model performance. The value must be one of: * RecommendResponse.attribution_token for events that are the result of RecommendationService.Recommend. * SearchResponse.attribution_token for events that are the result of SearchService.Search. This token enables us to accurately attribute page view or conversion completion back to the event and the particular predict response containing this clicked/purchased product. If user clicks on product K in the recommendation results, pass RecommendResponse.attribution_token as a URL parameter to product K's page. When recording events on product K's page, log the RecommendResponse.attribution_token to this field.
  *   `completionInfo` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1CompletionInfo.t`, *default:* `nil`) - CompletionService.CompleteQuery details related to the event. This field should be set for `search` event when autocomplete function is enabled and the user clicks a suggestion for search.
  *   `dataStore` (*type:* `String.t`, *default:* `nil`) - The DataStore resource full name, of the form `projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}`. Optional. Only required for user events whose data store can't by determined by UserEvent.engine or UserEvent.documents. If data store is set in the parent of write/import/collect user event requests, this field can be omitted.
  *   `directUserRequest` (*type:* `boolean()`, *default:* `nil`) - Should set to true if the request is made directly from the end user, in which case the UserEvent.user_info.user_agent can be populated from the HTTP request. This flag should be set only if the API request is made directly from the end user such as a mobile app (and not if a gateway or a server is processing and pushing the user events). This should not be set when using the JavaScript tag in UserEventService.CollectUserEvent.
  *   `documents` (*type:* `list(GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1DocumentInfo.t)`, *default:* `nil`) - List of Documents associated with this user event. This field is optional except for the following event types: * `view-item` * `add-to-cart` * `purchase` * `media-play` * `media-complete` In a `search` event, this field represents the documents returned to the end user on the current page (the end user may have not finished browsing the whole page yet). When a new page is returned to the end user, after pagination/filtering/ordering even for the same query, a new `search` event with different UserEvent.documents is desired.
  *   `engine` (*type:* `String.t`, *default:* `nil`) - The Engine resource name, in the form of `projects/{project}/locations/{location}/collections/{collection_id}/engines/{engine_id}`. Optional. Only required for Engine produced user events. For example, user events from blended search.
  *   `eventTime` (*type:* `DateTime.t`, *default:* `nil`) - Only required for UserEventService.ImportUserEvents method. Timestamp of when the user event happened.
  *   `eventType` (*type:* `String.t`, *default:* `nil`) - Required. User event type. Allowed values are: Generic values: * `search`: Search for Documents. * `view-item`: Detailed page view of a Document. * `view-item-list`: View of a panel or ordered list of Documents. * `view-home-page`: View of the home page. * `view-category-page`: View of a category page, e.g. Home > Men > Jeans * `add-feedback`: Add a user feedback. Retail-related values: * `add-to-cart`: Add an item(s) to cart, e.g. in Retail online shopping * `purchase`: Purchase an item(s) Media-related values: * `media-play`: Start/resume watching a video, playing a song, etc. * `media-complete`: Finished or stopped midway through a video, song, etc.
  *   `filter` (*type:* `String.t`, *default:* `nil`) - The filter syntax consists of an expression language for constructing a predicate from one or more fields of the documents being filtered. One example is for `search` events, the associated SearchRequest may contain a filter expression in SearchRequest.filter conforming to https://google.aip.dev/160#filtering. Similarly, for `view-item-list` events that are generated from a RecommendRequest, this field may be populated directly from RecommendRequest.filter conforming to https://google.aip.dev/160#filtering. The value must be a UTF-8 encoded string with a length limit of 1,000 characters. Otherwise, an `INVALID_ARGUMENT` error is returned.
  *   `mediaInfo` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1MediaInfo.t`, *default:* `nil`) - Media-specific info.
  *   `pageInfo` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1PageInfo.t`, *default:* `nil`) - Page metadata such as categories and other critical information for certain event types such as `view-category-page`.
  *   `panel` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1PanelInfo.t`, *default:* `nil`) - Panel metadata associated with this user event.
  *   `promotionIds` (*type:* `list(String.t)`, *default:* `nil`) - The promotion IDs if this is an event associated with promotions. Currently, this field is restricted to at most one ID.
  *   `searchInfo` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1SearchInfo.t`, *default:* `nil`) - SearchService.Search details related to the event. This field should be set for `search` event.
  *   `sessionId` (*type:* `String.t`, *default:* `nil`) - A unique identifier for tracking a visitor session with a length limit of 128 bytes. A session is an aggregation of an end user behavior in a time span. A general guideline to populate the session_id: 1. If user has no activity for 30 min, a new session_id should be assigned. 2. The session_id should be unique across users, suggest use uuid or add UserEvent.user_pseudo_id as prefix.
  *   `tagIds` (*type:* `list(String.t)`, *default:* `nil`) - A list of identifiers for the independent experiment groups this user event belongs to. This is used to distinguish between user events associated with different experiment setups.
  *   `transactionInfo` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1TransactionInfo.t`, *default:* `nil`) - The transaction metadata (if any) associated with this user event.
  *   `userInfo` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1UserInfo.t`, *default:* `nil`) - Information about the end user.
  *   `userPseudoId` (*type:* `String.t`, *default:* `nil`) - Required. A unique identifier for tracking visitors. For example, this could be implemented with an HTTP cookie, which should be able to uniquely identify a visitor on a single device. This unique identifier should not change if the visitor log in/out of the website. Do not set the field to the same fixed ID for different users. This mixes the event history of those users together, which results in degraded model quality. The field must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an `INVALID_ARGUMENT` error is returned. The field should not contain PII or user-data. We recommend to use Google Analytics [Client ID](https://developers.google.com/analytics/devguides/collection/analyticsjs/field-reference#clientId) for this field.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attributes =>
            %{
              optional(String.t()) =>
                GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1CustomAttribute.t()
            }
            | nil,
          :attributionToken => String.t() | nil,
          :completionInfo =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1CompletionInfo.t()
            | nil,
          :dataStore => String.t() | nil,
          :directUserRequest => boolean() | nil,
          :documents =>
            list(GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1DocumentInfo.t())
            | nil,
          :engine => String.t() | nil,
          :eventTime => DateTime.t() | nil,
          :eventType => String.t() | nil,
          :filter => String.t() | nil,
          :mediaInfo =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1MediaInfo.t() | nil,
          :pageInfo =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1PageInfo.t() | nil,
          :panel =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1PanelInfo.t() | nil,
          :promotionIds => list(String.t()) | nil,
          :searchInfo =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1SearchInfo.t() | nil,
          :sessionId => String.t() | nil,
          :tagIds => list(String.t()) | nil,
          :transactionInfo =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1TransactionInfo.t()
            | nil,
          :userInfo =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1UserInfo.t() | nil,
          :userPseudoId => String.t() | nil
        }

  field(:attributes,
    as: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1CustomAttribute,
    type: :map
  )

  field(:attributionToken)

  field(:completionInfo,
    as: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1CompletionInfo
  )

  field(:dataStore)
  field(:directUserRequest)

  field(:documents,
    as: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1DocumentInfo,
    type: :list
  )

  field(:engine)
  field(:eventTime, as: DateTime)
  field(:eventType)
  field(:filter)
  field(:mediaInfo, as: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1MediaInfo)
  field(:pageInfo, as: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1PageInfo)
  field(:panel, as: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1PanelInfo)
  field(:promotionIds, type: :list)

  field(:searchInfo, as: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1SearchInfo)

  field(:sessionId)
  field(:tagIds, type: :list)

  field(:transactionInfo,
    as: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1TransactionInfo
  )

  field(:userInfo, as: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1UserInfo)
  field(:userPseudoId)
end

defimpl Poison.Decoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1UserEvent do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1UserEvent.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1UserEvent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
