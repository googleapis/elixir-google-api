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

defmodule GoogleApi.CloudTasks.V2beta2.Model.ListQueuesResponse do
  @moduledoc """
  Response message for ListQueues.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - A token to retrieve next page of results.

      To return the next page of results, call
      ListQueues with this value as the
      page_token.

      If the next_page_token is empty, there are no more results.

      The page token is valid for only 2 hours.
  *   `queues` (*type:* `list(GoogleApi.CloudTasks.V2beta2.Model.Queue.t)`, *default:* `nil`) - The list of queues.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t(),
          :queues => list(GoogleApi.CloudTasks.V2beta2.Model.Queue.t())
        }

  field(:nextPageToken)
  field(:queues, as: GoogleApi.CloudTasks.V2beta2.Model.Queue, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudTasks.V2beta2.Model.ListQueuesResponse do
  def decode(value, options) do
    GoogleApi.CloudTasks.V2beta2.Model.ListQueuesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudTasks.V2beta2.Model.ListQueuesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
