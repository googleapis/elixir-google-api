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

defmodule GoogleApi.DriveActivity.V2.Model.QueryDriveActivityRequest do
  @moduledoc """
  The request message for querying Drive activity.

  ## Attributes

  *   `ancestorName` (*type:* `String.t`, *default:* `nil`) - Return activities for this Drive folder, plus all children and descendants. The format is `items/ITEM_ID`.
  *   `consolidationStrategy` (*type:* `GoogleApi.DriveActivity.V2.Model.ConsolidationStrategy.t`, *default:* `nil`) - Details on how to consolidate related actions that make up the activity. If not set, then related actions aren't consolidated.
  *   `filter` (*type:* `String.t`, *default:* `nil`) - The filtering for items returned from this query request. The format of the filter string is a sequence of expressions, joined by an optional "AND", where each expression is of the form "field operator value". Supported fields: - `time`: Uses numerical operators on date values either in terms of milliseconds since Jan 1, 1970 or in RFC 3339 format. Examples: - `time > 1452409200000 AND time <= 1492812924310` - `time >= "2016-01-10T01:02:03-05:00"` - `detail.action_detail_case`: Uses the "has" operator (:) and either a singular value or a list of allowed action types enclosed in parentheses, separated by a space. To exclude a result from the response, prepend a hyphen (`-`) to the beginning of the filter string. Examples: - `detail.action_detail_case:RENAME` - `detail.action_detail_case:(CREATE RESTORE)` - `-detail.action_detail_case:MOVE` 
  *   `itemName` (*type:* `String.t`, *default:* `nil`) - Return activities for this Drive item. The format is `items/ITEM_ID`.
  *   `pageSize` (*type:* `integer()`, *default:* `nil`) - The minimum number of activities desired in the response; the server attempts to return at least this quantity. The server may also return fewer activities if it has a partial response ready before the request times out. If not set, a default value is used.
  *   `pageToken` (*type:* `String.t`, *default:* `nil`) - The token identifies which page of results to return. Set this to the next_page_token value returned from a previous query to obtain the following page of results. If not set, the first page of results is returned.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ancestorName => String.t() | nil,
          :consolidationStrategy =>
            GoogleApi.DriveActivity.V2.Model.ConsolidationStrategy.t() | nil,
          :filter => String.t() | nil,
          :itemName => String.t() | nil,
          :pageSize => integer() | nil,
          :pageToken => String.t() | nil
        }

  field(:ancestorName)
  field(:consolidationStrategy, as: GoogleApi.DriveActivity.V2.Model.ConsolidationStrategy)
  field(:filter)
  field(:itemName)
  field(:pageSize)
  field(:pageToken)
end

defimpl Poison.Decoder, for: GoogleApi.DriveActivity.V2.Model.QueryDriveActivityRequest do
  def decode(value, options) do
    GoogleApi.DriveActivity.V2.Model.QueryDriveActivityRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DriveActivity.V2.Model.QueryDriveActivityRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
