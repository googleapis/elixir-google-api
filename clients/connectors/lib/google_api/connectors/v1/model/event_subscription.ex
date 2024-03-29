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

defmodule GoogleApi.Connectors.V1.Model.EventSubscription do
  @moduledoc """
  represents the Connector's EventSubscription resource

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Created time.
  *   `destinations` (*type:* `GoogleApi.Connectors.V1.Model.EventSubscriptionDestination.t`, *default:* `nil`) - Optional. The destination to hit when we receive an event
  *   `eventTypeId` (*type:* `String.t`, *default:* `nil`) - Optional. Event type id of the event of current EventSubscription.
  *   `jms` (*type:* `GoogleApi.Connectors.V1.Model.JMS.t`, *default:* `nil`) - Optional. JMS is the source for the event listener.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. Resource name of the EventSubscription. Format: projects/{project}/locations/{location}/connections/{connection}/eventSubscriptions/{event_subscription}
  *   `status` (*type:* `GoogleApi.Connectors.V1.Model.EventSubscriptionStatus.t`, *default:* `nil`) - Optional. Status indicates the status of the event subscription resource
  *   `subscriber` (*type:* `String.t`, *default:* `nil`) - Optional. name of the Subscriber for the current EventSubscription.
  *   `subscriberLink` (*type:* `String.t`, *default:* `nil`) - Optional. Link for Subscriber of the current EventSubscription.
  *   `triggerConfigVariables` (*type:* `list(GoogleApi.Connectors.V1.Model.ConfigVariable.t)`, *default:* `nil`) - Optional. Configuration for configuring the trigger
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Updated time.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :destinations => GoogleApi.Connectors.V1.Model.EventSubscriptionDestination.t() | nil,
          :eventTypeId => String.t() | nil,
          :jms => GoogleApi.Connectors.V1.Model.JMS.t() | nil,
          :name => String.t() | nil,
          :status => GoogleApi.Connectors.V1.Model.EventSubscriptionStatus.t() | nil,
          :subscriber => String.t() | nil,
          :subscriberLink => String.t() | nil,
          :triggerConfigVariables => list(GoogleApi.Connectors.V1.Model.ConfigVariable.t()) | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:destinations, as: GoogleApi.Connectors.V1.Model.EventSubscriptionDestination)
  field(:eventTypeId)
  field(:jms, as: GoogleApi.Connectors.V1.Model.JMS)
  field(:name)
  field(:status, as: GoogleApi.Connectors.V1.Model.EventSubscriptionStatus)
  field(:subscriber)
  field(:subscriberLink)
  field(:triggerConfigVariables, as: GoogleApi.Connectors.V1.Model.ConfigVariable, type: :list)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Connectors.V1.Model.EventSubscription do
  def decode(value, options) do
    GoogleApi.Connectors.V1.Model.EventSubscription.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Connectors.V1.Model.EventSubscription do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
