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

defmodule GoogleApi.AdExchangeBuyer.V14.Model.DealTermsGuaranteedFixedPriceTerms do
  @moduledoc """


  ## Attributes

  - billingInfo (DealTermsGuaranteedFixedPriceTermsBillingInfo): External billing info for this Deal. This field is relevant when external billing info such as price has a different currency code than DFP/AdX. Defaults to: `null`.
  - fixedPrices ([PricePerBuyer]): Fixed price for the specified buyer. Defaults to: `null`.
  - guaranteedImpressions (String.t): Guaranteed impressions as a percentage. This is the percentage of guaranteed looks that the buyer is guaranteeing to buy. Defaults to: `null`.
  - guaranteedLooks (String.t): Count of guaranteed looks. Required for deal, optional for product. For CPD deals, buyer changes to guaranteed_looks will be ignored. Defaults to: `null`.
  - minimumDailyLooks (String.t): Count of minimum daily looks for a CPD deal. For CPD deals, buyer should negotiate on this field instead of guaranteed_looks. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :billingInfo =>
            GoogleApi.AdExchangeBuyer.V14.Model.DealTermsGuaranteedFixedPriceTermsBillingInfo.t(),
          :fixedPrices => list(GoogleApi.AdExchangeBuyer.V14.Model.PricePerBuyer.t()),
          :guaranteedImpressions => any(),
          :guaranteedLooks => any(),
          :minimumDailyLooks => any()
        }

  field(:billingInfo,
    as: GoogleApi.AdExchangeBuyer.V14.Model.DealTermsGuaranteedFixedPriceTermsBillingInfo
  )

  field(:fixedPrices, as: GoogleApi.AdExchangeBuyer.V14.Model.PricePerBuyer, type: :list)
  field(:guaranteedImpressions)
  field(:guaranteedLooks)
  field(:minimumDailyLooks)
end

defimpl Poison.Decoder,
  for: GoogleApi.AdExchangeBuyer.V14.Model.DealTermsGuaranteedFixedPriceTerms do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V14.Model.DealTermsGuaranteedFixedPriceTerms.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AdExchangeBuyer.V14.Model.DealTermsGuaranteedFixedPriceTerms do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
