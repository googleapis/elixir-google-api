# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.AdExchangeBuyer.V2beta1.Model.NonGuaranteedAuctionTerms do
  @moduledoc """
  Terms for Private Auctions. Note that Private Auctions can be created only by the seller, but they can be returned in a get or list request.

  ## Attributes

  - autoOptimizePrivateAuction (boolean()): True if open auction buyers are allowed to compete with invited buyers in this private auction. Defaults to: `null`.
  - reservePricesPerBuyer ([PricePerBuyer]): Reserve price for the specified buyer. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoOptimizePrivateAuction => any(),
          :reservePricesPerBuyer =>
            list(GoogleApi.AdExchangeBuyer.V2beta1.Model.PricePerBuyer.t())
        }

  field(:autoOptimizePrivateAuction)

  field(:reservePricesPerBuyer,
    as: GoogleApi.AdExchangeBuyer.V2beta1.Model.PricePerBuyer,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.NonGuaranteedAuctionTerms do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V2beta1.Model.NonGuaranteedAuctionTerms.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.NonGuaranteedAuctionTerms do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
