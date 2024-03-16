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

defmodule GoogleApi.WorkspaceEvents.V1.Model.NotificationEndpoint do
  @moduledoc """
  The endpoint where the subscription delivers events.

  ## Attributes

  *   `pubsubTopic` (*type:* `String.t`, *default:* `nil`) - Immutable. The Cloud Pub/Sub topic that receives events for the subscription. Format: `projects/{project}/topics/{topic}` You must create the topic in the same Google Cloud project where you create this subscription. When the topic receives events, the events are encoded as Cloud Pub/Sub messages. For details, see the [Google Cloud Pub/Sub Protocol Binding for CloudEvents](https://github.com/googleapis/google-cloudevents/blob/main/docs/spec/pubsub.md).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :pubsubTopic => String.t() | nil
        }

  field(:pubsubTopic)
end

defimpl Poison.Decoder, for: GoogleApi.WorkspaceEvents.V1.Model.NotificationEndpoint do
  def decode(value, options) do
    GoogleApi.WorkspaceEvents.V1.Model.NotificationEndpoint.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WorkspaceEvents.V1.Model.NotificationEndpoint do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end