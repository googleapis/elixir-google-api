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

defmodule GoogleApi.AndroidPublisher.V3.Model.RegionalSubscriptionOfferConfig do
  @moduledoc """
  Configuration for a subscription offer in a single region.

  ## Attributes

  *   `newSubscriberAvailability` (*type:* `boolean()`, *default:* `nil`) - Whether the subscription offer in the specified region is available for new subscribers. Existing subscribers will not have their subscription cancelled if this value is set to false. If not specified, this will default to false.
  *   `regionCode` (*type:* `String.t`, *default:* `nil`) - Required. Immutable. Region code this configuration applies to, as defined by ISO 3166-2, e.g. "US".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :newSubscriberAvailability => boolean() | nil,
          :regionCode => String.t() | nil
        }

  field(:newSubscriberAvailability)
  field(:regionCode)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidPublisher.V3.Model.RegionalSubscriptionOfferConfig do
  def decode(value, options) do
    GoogleApi.AndroidPublisher.V3.Model.RegionalSubscriptionOfferConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidPublisher.V3.Model.RegionalSubscriptionOfferConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
