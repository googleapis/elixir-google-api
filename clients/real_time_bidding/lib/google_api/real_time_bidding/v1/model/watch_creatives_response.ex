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

defmodule GoogleApi.RealTimeBidding.V1.Model.WatchCreativesResponse do
  @moduledoc """
  A response for the request to receive push notification when a bidder's creatives change status.

  ## Attributes

  *   `subscription` (*type:* `String.t`, *default:* `nil`) - The Pub/Sub subscription that can be used to pull creative status notifications. This would be of the format `projects/{project_id}/subscriptions/{subscription_id}`. Subscription is created with pull delivery. All service accounts belonging to the bidder will have read access to this subscription. Subscriptions that are inactive for more than 90 days will be disabled. Please use watchCreatives to re-enable the subscription.
  *   `topic` (*type:* `String.t`, *default:* `nil`) - The Pub/Sub topic that will be used to publish creative serving status notifications. This would be of the format `projects/{project_id}/topics/{topic_id}`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :subscription => String.t() | nil,
          :topic => String.t() | nil
        }

  field(:subscription)
  field(:topic)
end

defimpl Poison.Decoder, for: GoogleApi.RealTimeBidding.V1.Model.WatchCreativesResponse do
  def decode(value, options) do
    GoogleApi.RealTimeBidding.V1.Model.WatchCreativesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.RealTimeBidding.V1.Model.WatchCreativesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
