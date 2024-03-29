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

defmodule GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_ConversionTrackingSetting do
  @moduledoc """
  A collection of customer-wide settings related to Search Ads 360 Conversion Tracking.

  ## Attributes

  *   `acceptedCustomerDataTerms` (*type:* `boolean()`, *default:* `nil`) - Output only. Whether the customer has accepted customer data terms. If using cross-account conversion tracking, this value is inherited from the manager. This field is read-only. For more information, see https://support.google.com/adspolicy/answer/7475709.
  *   `conversionTrackingId` (*type:* `String.t`, *default:* `nil`) - Output only. The conversion tracking id used for this account. This id doesn't indicate whether the customer uses conversion tracking (conversion_tracking_status does). This field is read-only.
  *   `conversionTrackingStatus` (*type:* `String.t`, *default:* `nil`) - Output only. Conversion tracking status. It indicates whether the customer is using conversion tracking, and who is the conversion tracking owner of this customer. If this customer is using cross-account conversion tracking, the value returned will differ based on the `login-customer-id` of the request.
  *   `crossAccountConversionTrackingId` (*type:* `String.t`, *default:* `nil`) - Output only. The conversion tracking id of the customer's manager. This is set when the customer is opted into cross-account conversion tracking, and it overrides conversion_tracking_id.
  *   `enhancedConversionsForLeadsEnabled` (*type:* `boolean()`, *default:* `nil`) - Output only. Whether the customer is opted-in for enhanced conversions for leads. If using cross-account conversion tracking, this value is inherited from the manager. This field is read-only.
  *   `googleAdsConversionCustomer` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the customer where conversions are created and managed. This field is read-only.
  *   `googleAdsCrossAccountConversionTrackingId` (*type:* `String.t`, *default:* `nil`) - Output only. The conversion tracking id of the customer's manager. This is set when the customer is opted into conversion tracking, and it overrides conversion_tracking_id. This field can only be managed through the Google Ads UI. This field is read-only.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :acceptedCustomerDataTerms => boolean() | nil,
          :conversionTrackingId => String.t() | nil,
          :conversionTrackingStatus => String.t() | nil,
          :crossAccountConversionTrackingId => String.t() | nil,
          :enhancedConversionsForLeadsEnabled => boolean() | nil,
          :googleAdsConversionCustomer => String.t() | nil,
          :googleAdsCrossAccountConversionTrackingId => String.t() | nil
        }

  field(:acceptedCustomerDataTerms)
  field(:conversionTrackingId)
  field(:conversionTrackingStatus)
  field(:crossAccountConversionTrackingId)
  field(:enhancedConversionsForLeadsEnabled)
  field(:googleAdsConversionCustomer)
  field(:googleAdsCrossAccountConversionTrackingId)
end

defimpl Poison.Decoder,
  for: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_ConversionTrackingSetting do
  def decode(value, options) do
    GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_ConversionTrackingSetting.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_ConversionTrackingSetting do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
