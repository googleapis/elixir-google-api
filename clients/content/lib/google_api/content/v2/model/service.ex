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

defmodule GoogleApi.Content.V2.Model.Service do
  @moduledoc """


  ## Attributes

  - active (boolean()): A boolean exposing the active status of the shipping service. Required. Defaults to: `null`.
  - currency (String.t): The CLDR code of the currency to which this service applies. Must match that of the prices in rate groups. Defaults to: `null`.
  - deliveryCountry (String.t): The CLDR territory code of the country to which the service applies. Required. Defaults to: `null`.
  - deliveryTime (DeliveryTime): Time spent in various aspects from order to the delivery of the product. Required. Defaults to: `null`.
  - eligibility (String.t): Eligibility for this service. Defaults to: `null`.
  - minimumOrderValue (Price): Minimum order value for this service. If set, indicates that customers will have to spend at least this amount. All prices within a service must have the same currency. Defaults to: `null`.
  - name (String.t): Free-form name of the service. Must be unique within target account. Required. Defaults to: `null`.
  - rateGroups ([RateGroup]): Shipping rate group definitions. Only the last one is allowed to have an empty applicableShippingLabels, which means \&quot;everything else\&quot;. The other applicableShippingLabels must not overlap. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :active => any(),
          :currency => any(),
          :deliveryCountry => any(),
          :deliveryTime => GoogleApi.Content.V2.Model.DeliveryTime.t(),
          :eligibility => any(),
          :minimumOrderValue => GoogleApi.Content.V2.Model.Price.t(),
          :name => any(),
          :rateGroups => list(GoogleApi.Content.V2.Model.RateGroup.t())
        }

  field(:active)
  field(:currency)
  field(:deliveryCountry)
  field(:deliveryTime, as: GoogleApi.Content.V2.Model.DeliveryTime)
  field(:eligibility)
  field(:minimumOrderValue, as: GoogleApi.Content.V2.Model.Price)
  field(:name)
  field(:rateGroups, as: GoogleApi.Content.V2.Model.RateGroup, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.Service do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.Service.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.Service do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
