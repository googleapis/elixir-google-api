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

defmodule GoogleApi.Content.V21.Model.SearchResponse do
  @moduledoc """
  Response message for the ReportService.Search method.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Token which can be sent as `page_token` to retrieve the next page. If omitted, there are no subsequent pages.
  *   `results` (*type:* `list(GoogleApi.Content.V21.Model.ReportRow.t)`, *default:* `nil`) - Rows that matched the search query.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t() | nil,
          :results => list(GoogleApi.Content.V21.Model.ReportRow.t()) | nil
        }

  field(:nextPageToken)
  field(:results, as: GoogleApi.Content.V21.Model.ReportRow, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.SearchResponse do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.SearchResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.SearchResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
