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

defmodule GoogleApi.Eventarc.V1.Model.Channel do
  @moduledoc """
  A representation of the Channel resource. A Channel is a resource on which event providers publish their events. The published events are delivered through the transport associated with the channel. Note that a channel is associated with exactly one event provider.

  ## Attributes

  *   `activationToken` (*type:* `String.t`, *default:* `nil`) - Output only. The activation token for the channel. The token must be used by the provider to register the channel for publishing.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The creation time.
  *   `cryptoKeyName` (*type:* `String.t`, *default:* `nil`) - Optional. Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt their event data. It must match the pattern `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. The resource name of the channel. Must be unique within the location on the project and must be in `projects/{project}/locations/{location}/channels/{channel_id}` format.
  *   `provider` (*type:* `String.t`, *default:* `nil`) - The name of the event provider (e.g. Eventarc SaaS partner) associated with the channel. This provider will be granted permissions to publish events to the channel. Format: `projects/{project}/locations/{location}/providers/{provider_id}`.
  *   `pubsubTopic` (*type:* `String.t`, *default:* `nil`) - Output only. The name of the Pub/Sub topic created and managed by Eventarc system as a transport for the event delivery. Format: `projects/{project}/topics/{topic_id}`.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The state of a Channel.
  *   `uid` (*type:* `String.t`, *default:* `nil`) - Output only. Server assigned unique identifier for the channel. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The last-modified time.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :activationToken => String.t() | nil,
          :createTime => DateTime.t() | nil,
          :cryptoKeyName => String.t() | nil,
          :name => String.t() | nil,
          :provider => String.t() | nil,
          :pubsubTopic => String.t() | nil,
          :state => String.t() | nil,
          :uid => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:activationToken)
  field(:createTime, as: DateTime)
  field(:cryptoKeyName)
  field(:name)
  field(:provider)
  field(:pubsubTopic)
  field(:state)
  field(:uid)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Eventarc.V1.Model.Channel do
  def decode(value, options) do
    GoogleApi.Eventarc.V1.Model.Channel.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Eventarc.V1.Model.Channel do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
