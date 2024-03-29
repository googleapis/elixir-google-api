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

defmodule GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1FiniteBillingCycleDetails do
  @moduledoc """
  Details for a subscriptiin line item with finite billing cycles.

  ## Attributes

  *   `billingCycleCountLimit` (*type:* `String.t`, *default:* `nil`) - Required. The number of a subscription line item billing cycles after which billing will stop automatically.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :billingCycleCountLimit => String.t() | nil
        }

  field(:billingCycleCountLimit)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1FiniteBillingCycleDetails do
  def decode(value, options) do
    GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1FiniteBillingCycleDetails.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1FiniteBillingCycleDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
