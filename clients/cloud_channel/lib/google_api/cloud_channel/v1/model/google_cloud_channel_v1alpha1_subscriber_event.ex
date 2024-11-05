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

defmodule GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1alpha1SubscriberEvent do
  @moduledoc """
  Represents information which resellers will get as part of notification from Pub/Sub.

  ## Attributes

  *   `channelPartnerEvent` (*type:* `GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1alpha1ChannelPartnerEvent.t`, *default:* `nil`) - Channel Partner event sent as part of Pub/Sub event to partners.
  *   `customerEvent` (*type:* `GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1alpha1CustomerEvent.t`, *default:* `nil`) - Customer event sent as part of Pub/Sub event to partners.
  *   `entitlementEvent` (*type:* `GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1alpha1EntitlementEvent.t`, *default:* `nil`) - Entitlement event sent as part of Pub/Sub event to partners.
  *   `opportunityEvent` (*type:* `GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1alpha1OpportunityEvent.t`, *default:* `nil`) - Opportunity event sent as part of Pub/Sub event to partners/integrators.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :channelPartnerEvent =>
            GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1alpha1ChannelPartnerEvent.t()
            | nil,
          :customerEvent =>
            GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1alpha1CustomerEvent.t() | nil,
          :entitlementEvent =>
            GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1alpha1EntitlementEvent.t() | nil,
          :opportunityEvent =>
            GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1alpha1OpportunityEvent.t() | nil
        }

  field(:channelPartnerEvent,
    as: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1alpha1ChannelPartnerEvent
  )

  field(:customerEvent,
    as: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1alpha1CustomerEvent
  )

  field(:entitlementEvent,
    as: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1alpha1EntitlementEvent
  )

  field(:opportunityEvent,
    as: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1alpha1OpportunityEvent
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1alpha1SubscriberEvent do
  def decode(value, options) do
    GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1alpha1SubscriberEvent.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1alpha1SubscriberEvent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
