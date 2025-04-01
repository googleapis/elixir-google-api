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

defmodule GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1ChangeOfferRequest do
  @moduledoc """
  Request message for CloudChannelService.ChangeOffer.

  ## Attributes

  *   `billingAccount` (*type:* `String.t`, *default:* `nil`) - Optional. The billing account resource name that is used to pay for this entitlement when setting up billing on a trial subscription. This field is only relevant for multi-currency accounts. It should be left empty for single currency accounts.
  *   `offer` (*type:* `String.t`, *default:* `nil`) - Required. New Offer. Format: accounts/{account_id}/offers/{offer_id}.
  *   `parameters` (*type:* `list(GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1Parameter.t)`, *default:* `nil`) - Optional. Parameters needed to purchase the Offer. To view the available Parameters refer to the Offer.parameter_definitions from the desired offer.
  *   `priceReferenceId` (*type:* `String.t`, *default:* `nil`) - Optional. Price reference ID for the offer. Optional field only for offers that require additional price information. Used to guarantee that the pricing is consistent between quoting the offer and placing the order.
  *   `purchaseOrderId` (*type:* `String.t`, *default:* `nil`) - Optional. Purchase order id provided by the reseller.
  *   `requestId` (*type:* `String.t`, *default:* `nil`) - Optional. You can specify an optional unique request ID, and if you need to retry your request, the server will know to ignore the request if it's complete. For example, you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if it received the original operation with the same request ID. If it did, it will ignore the second request. The request ID must be a valid [UUID](https://tools.ietf.org/html/rfc4122) with the exception that zero UUID is not supported (`00000000-0000-0000-0000-000000000000`).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :billingAccount => String.t() | nil,
          :offer => String.t() | nil,
          :parameters =>
            list(GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1Parameter.t()) | nil,
          :priceReferenceId => String.t() | nil,
          :purchaseOrderId => String.t() | nil,
          :requestId => String.t() | nil
        }

  field(:billingAccount)
  field(:offer)

  field(:parameters,
    as: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1Parameter,
    type: :list
  )

  field(:priceReferenceId)
  field(:purchaseOrderId)
  field(:requestId)
end

defimpl Poison.Decoder,
  for: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1ChangeOfferRequest do
  def decode(value, options) do
    GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1ChangeOfferRequest.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1ChangeOfferRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
