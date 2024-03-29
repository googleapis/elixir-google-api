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

defmodule GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1ListSubscribersResponse do
  @moduledoc """
  Response Message for ListSubscribers.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - A token that can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.
  *   `serviceAccounts` (*type:* `list(String.t)`, *default:* `nil`) - List of service accounts which have subscriber access to the topic.
  *   `topic` (*type:* `String.t`, *default:* `nil`) - Name of the topic registered with the reseller.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t() | nil,
          :serviceAccounts => list(String.t()) | nil,
          :topic => String.t() | nil
        }

  field(:nextPageToken)
  field(:serviceAccounts, type: :list)
  field(:topic)
end

defimpl Poison.Decoder,
  for: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1ListSubscribersResponse do
  def decode(value, options) do
    GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1ListSubscribersResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1ListSubscribersResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
