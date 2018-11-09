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

defmodule GoogleApi.AndroidPublisher.V2.Model.InAppProduct do
  @moduledoc """


  ## Attributes

  - defaultLanguage (String.t): The default language of the localized data, as defined by BCP 47. e.g. \&quot;en-US\&quot;, \&quot;en-GB\&quot;. Defaults to: `null`.
  - defaultPrice (Price): Default price cannot be zero. In-app products can never be free. Default price is always in the developer&#39;s Checkout merchant currency. Defaults to: `null`.
  - gracePeriod (String.t): Grace period of the subscription, specified in ISO 8601 format. It will allow developers to give their subscribers a grace period when the payment for the new recurrence period is declined. Acceptable values &#x3D; \&quot;P3D\&quot; (three days) and \&quot;P7D\&quot; (seven days) Defaults to: `null`.
  - listings (%{optional(String.t) &#x3D;&gt; InAppProductListing}): List of localized title and description data. Defaults to: `null`.
  - packageName (String.t): The package name of the parent app. Defaults to: `null`.
  - prices (%{optional(String.t) &#x3D;&gt; Price}): Prices per buyer region. None of these prices should be zero. In-app products can never be free. Defaults to: `null`.
  - purchaseType (String.t): Purchase type enum value. Unmodifiable after creation. Defaults to: `null`.
  - season (Season): Definition of a season for a seasonal subscription. Can be defined only for yearly subscriptions. Defaults to: `null`.
  - sku (String.t): The stock-keeping-unit (SKU) of the product, unique within an app. Defaults to: `null`.
  - status (String.t):  Defaults to: `null`.
  - subscriptionPeriod (String.t): Subscription period, specified in ISO 8601 format. Acceptable values are \&quot;P1W\&quot; (one week), \&quot;P1M\&quot; (one month), \&quot;P3M\&quot; (three months), \&quot;P6M\&quot; (six months), and \&quot;P1Y\&quot; (one year). Defaults to: `null`.
  - trialPeriod (String.t): Trial period, specified in ISO 8601 format. Acceptable values are anything between \&quot;P7D\&quot; (seven days) and \&quot;P999D\&quot; (999 days). Seasonal subscriptions cannot have a trial period. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :defaultLanguage => any(),
          :defaultPrice => GoogleApi.AndroidPublisher.V2.Model.Price.t(),
          :gracePeriod => any(),
          :listings => map(),
          :packageName => any(),
          :prices => map(),
          :purchaseType => any(),
          :season => GoogleApi.AndroidPublisher.V2.Model.Season.t(),
          :sku => any(),
          :status => any(),
          :subscriptionPeriod => any(),
          :trialPeriod => any()
        }

  field(:defaultLanguage)
  field(:defaultPrice, as: GoogleApi.AndroidPublisher.V2.Model.Price)
  field(:gracePeriod)
  field(:listings, as: GoogleApi.AndroidPublisher.V2.Model.InAppProductListing, type: :map)
  field(:packageName)
  field(:prices, as: GoogleApi.AndroidPublisher.V2.Model.Price, type: :map)
  field(:purchaseType)
  field(:season, as: GoogleApi.AndroidPublisher.V2.Model.Season)
  field(:sku)
  field(:status)
  field(:subscriptionPeriod)
  field(:trialPeriod)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidPublisher.V2.Model.InAppProduct do
  def decode(value, options) do
    GoogleApi.AndroidPublisher.V2.Model.InAppProduct.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidPublisher.V2.Model.InAppProduct do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
