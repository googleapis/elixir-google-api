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

defmodule GoogleApi.Gmail.V1.Model.ListThreadsResponse do
  @moduledoc """


  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Page token to retrieve the next page of results in the list.
  *   `resultSizeEstimate` (*type:* `integer()`, *default:* `nil`) - Estimated total number of results.
  *   `threads` (*type:* `list(GoogleApi.Gmail.V1.Model.Thread.t)`, *default:* `nil`) - List of threads. Note that each thread resource does not contain a list of `messages`. The list of `messages` for a given thread can be fetched using the [`threads.get`](https://developers.google.com/workspace/gmail/api/v1/reference/users/threads/get) method.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t() | nil,
          :resultSizeEstimate => integer() | nil,
          :threads => list(GoogleApi.Gmail.V1.Model.Thread.t()) | nil
        }

  field(:nextPageToken)
  field(:resultSizeEstimate)
  field(:threads, as: GoogleApi.Gmail.V1.Model.Thread, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Gmail.V1.Model.ListThreadsResponse do
  def decode(value, options) do
    GoogleApi.Gmail.V1.Model.ListThreadsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Gmail.V1.Model.ListThreadsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
