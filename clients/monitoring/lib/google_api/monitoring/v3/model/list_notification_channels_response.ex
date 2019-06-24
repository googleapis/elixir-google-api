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

defmodule GoogleApi.Monitoring.V3.Model.ListNotificationChannelsResponse do
  @moduledoc """
  The ListNotificationChannels response.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - If not empty, indicates that there may be more results that match the request. Use the value in the page_token field in a subsequent request to fetch the next set of results. If empty, all results have been returned.
  *   `notificationChannels` (*type:* `list(GoogleApi.Monitoring.V3.Model.NotificationChannel.t)`, *default:* `nil`) - The notification channels defined for the specified project.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t(),
          :notificationChannels => list(GoogleApi.Monitoring.V3.Model.NotificationChannel.t())
        }

  field(:nextPageToken)
  field(:notificationChannels, as: GoogleApi.Monitoring.V3.Model.NotificationChannel, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Monitoring.V3.Model.ListNotificationChannelsResponse do
  def decode(value, options) do
    GoogleApi.Monitoring.V3.Model.ListNotificationChannelsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Monitoring.V3.Model.ListNotificationChannelsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
