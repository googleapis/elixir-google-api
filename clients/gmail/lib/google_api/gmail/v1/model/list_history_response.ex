# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Gmail.V1.Model.ListHistoryResponse do
  @moduledoc """


  ## Attributes

  - history (list(GoogleApi.Gmail.V1.Model.History.t)): List of history records. Any messages contained in the response will typically only have id and threadId fields populated. Defaults to `nil`.
  - historyId (String.t): The ID of the mailbox's current history record. Defaults to `nil`.
  - nextPageToken (String.t): Page token to retrieve the next page of results in the list. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :history => list(GoogleApi.Gmail.V1.Model.History.t()),
          :historyId => String.t(),
          :nextPageToken => String.t()
        }

  field(:history, as: GoogleApi.Gmail.V1.Model.History, type: :list)
  field(:historyId)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.Gmail.V1.Model.ListHistoryResponse do
  def decode(value, options) do
    GoogleApi.Gmail.V1.Model.ListHistoryResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Gmail.V1.Model.ListHistoryResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
