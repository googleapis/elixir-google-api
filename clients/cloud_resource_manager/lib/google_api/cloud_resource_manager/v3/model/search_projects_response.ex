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

defmodule GoogleApi.CloudResourceManager.V3.Model.SearchProjectsResponse do
  @moduledoc """
  A page of the response received from the SearchProjects method. A paginated response where more pages are available has `next_page_token` set. This token can be used in a subsequent request to retrieve the next request page.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Pagination token. If the result set is too large to fit in a single response, this token is returned. It encodes the position of the current result cursor. Feeding this value into a new list request with the `page_token` parameter gives the next page of the results. When `next_page_token` is not filled in, there is no next page and the list returned is the last page in the result set. Pagination tokens have a limited lifetime.
  *   `projects` (*type:* `list(GoogleApi.CloudResourceManager.V3.Model.Project.t)`, *default:* `nil`) - The list of Projects that matched the list filter query. This list can be paginated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t() | nil,
          :projects => list(GoogleApi.CloudResourceManager.V3.Model.Project.t()) | nil
        }

  field(:nextPageToken)
  field(:projects, as: GoogleApi.CloudResourceManager.V3.Model.Project, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudResourceManager.V3.Model.SearchProjectsResponse do
  def decode(value, options) do
    GoogleApi.CloudResourceManager.V3.Model.SearchProjectsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudResourceManager.V3.Model.SearchProjectsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
