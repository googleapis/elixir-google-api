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

defmodule GoogleApi.PubSubLite.V1.Model.Subscription do
  @moduledoc """
  Metadata about a subscription resource.

  ## Attributes

  *   `deliveryConfig` (*type:* `GoogleApi.PubSubLite.V1.Model.DeliveryConfig.t`, *default:* `nil`) - The settings for this subscription's message delivery.
  *   `exportConfig` (*type:* `GoogleApi.PubSubLite.V1.Model.ExportConfig.t`, *default:* `nil`) - If present, messages are automatically written from the Pub/Sub Lite topic associated with this subscription to a destination.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the subscription. Structured like: projects/{project_number}/locations/{location}/subscriptions/{subscription_id}
  *   `topic` (*type:* `String.t`, *default:* `nil`) - The name of the topic this subscription is attached to. Structured like: projects/{project_number}/locations/{location}/topics/{topic_id}
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deliveryConfig => GoogleApi.PubSubLite.V1.Model.DeliveryConfig.t() | nil,
          :exportConfig => GoogleApi.PubSubLite.V1.Model.ExportConfig.t() | nil,
          :name => String.t() | nil,
          :topic => String.t() | nil
        }

  field(:deliveryConfig, as: GoogleApi.PubSubLite.V1.Model.DeliveryConfig)
  field(:exportConfig, as: GoogleApi.PubSubLite.V1.Model.ExportConfig)
  field(:name)
  field(:topic)
end

defimpl Poison.Decoder, for: GoogleApi.PubSubLite.V1.Model.Subscription do
  def decode(value, options) do
    GoogleApi.PubSubLite.V1.Model.Subscription.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PubSubLite.V1.Model.Subscription do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
