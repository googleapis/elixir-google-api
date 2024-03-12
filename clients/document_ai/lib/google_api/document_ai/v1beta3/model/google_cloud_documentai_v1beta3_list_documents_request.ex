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

defmodule GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3ListDocumentsRequest do
  @moduledoc """


  ## Attributes

  *   `filter` (*type:* `String.t`, *default:* `nil`) - Optional. Query to filter the documents based on https://google.aip.dev/160. ## Currently support query strings are: `SplitType=DATASET_SPLIT_TEST|DATASET_SPLIT_TRAIN|DATASET_SPLIT_UNASSIGNED` - `LabelingState=DOCUMENT_LABELED|DOCUMENT_UNLABELED|DOCUMENT_AUTO_LABELED` - `DisplayName=\\"file_name.pdf\\"` - `EntityType=abc/def` - `TagName=\\"auto-labeling-running\\"|\\"sampled\\"` Note: - Only `AND`, `=` and `!=` are supported. e.g. `DisplayName=file_name AND EntityType!=abc` IS supported. - Wildcard `*` is supported only in `DisplayName` filter - No duplicate filter keys are allowed, e.g. `EntityType=a AND EntityType=b` is NOT supported. - String match is case sensitive (for filter `DisplayName` & `EntityType`).
  *   `pageSize` (*type:* `integer()`, *default:* `nil`) - The maximum number of documents to return. The service may return fewer than this value. If unspecified, at most 20 documents will be returned. The maximum value is 100; values above 100 will be coerced to 100.
  *   `pageToken` (*type:* `String.t`, *default:* `nil`) - A page token, received from a previous `ListDocuments` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListDocuments` must match the call that provided the page token.
  *   `returnTotalSize` (*type:* `boolean()`, *default:* `nil`) - Optional. Controls if the request requires a total size of matched documents. See ListDocumentsResponse.total_size. Enabling this flag may adversely impact performance. Defaults to false.
  *   `skip` (*type:* `integer()`, *default:* `nil`) - Optional. Number of results to skip beginning from the `page_token` if provided. https://google.aip.dev/158#skipping-results. It must be a non-negative integer. Negative values will be rejected. Note that this is not the number of pages to skip. If this value causes the cursor to move past the end of results, ListDocumentsResponse.document_metadata and ListDocumentsResponse.next_page_token will be empty.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :filter => String.t() | nil,
          :pageSize => integer() | nil,
          :pageToken => String.t() | nil,
          :returnTotalSize => boolean() | nil,
          :skip => integer() | nil
        }

  field(:filter)
  field(:pageSize)
  field(:pageToken)
  field(:returnTotalSize)
  field(:skip)
end

defimpl Poison.Decoder,
  for: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3ListDocumentsRequest do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3ListDocumentsRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3ListDocumentsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end