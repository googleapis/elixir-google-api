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

defmodule GoogleApi.AndroidPublisher.V2.Model.SubscriptionPriceChange do
  @moduledoc """
  Contains the price change information for a subscription that can be used to control the user journey for the price change in the app. This can be in the form of seeking confirmation from the user or tailoring the experience for a successful conversion.

  ## Attributes

  *   `newPrice` (*type:* `GoogleApi.AndroidPublisher.V2.Model.Price.t`, *default:* `nil`) - The new price the subscription will renew with if the price change is accepted by the user.
  *   `state` (*type:* `integer()`, *default:* `nil`) - The current state of the price change. Possible values are:  
      - Outstanding: State for a pending price change waiting for the user to agree. In this state, you can optionally seek confirmation from the user using the In-App API. 
      - Accepted: State for an accepted price change that the subscription will renew with unless it's canceled. The price change takes effect on a future date when the subscription renews. Note that the change might not occur when the subscription is renewed next.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :newPrice => GoogleApi.AndroidPublisher.V2.Model.Price.t(),
          :state => integer()
        }

  field(:newPrice, as: GoogleApi.AndroidPublisher.V2.Model.Price)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidPublisher.V2.Model.SubscriptionPriceChange do
  def decode(value, options) do
    GoogleApi.AndroidPublisher.V2.Model.SubscriptionPriceChange.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidPublisher.V2.Model.SubscriptionPriceChange do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
