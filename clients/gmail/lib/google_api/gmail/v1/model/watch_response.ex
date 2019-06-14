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

defmodule GoogleApi.Gmail.V1.Model.WatchResponse do
  @moduledoc """
  Push notification watch response.

  ## Attributes

  - expiration (String.t): When Gmail will stop sending notifications for mailbox updates (epoch millis). Call watch again before this time to renew the watch. Defaults to `nil`.
  - historyId (String.t): The ID of the mailbox's current history record. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :expiration => String.t(),
          :historyId => String.t()
        }

  field(:expiration)
  field(:historyId)
end

defimpl Poison.Decoder, for: GoogleApi.Gmail.V1.Model.WatchResponse do
  def decode(value, options) do
    GoogleApi.Gmail.V1.Model.WatchResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Gmail.V1.Model.WatchResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
