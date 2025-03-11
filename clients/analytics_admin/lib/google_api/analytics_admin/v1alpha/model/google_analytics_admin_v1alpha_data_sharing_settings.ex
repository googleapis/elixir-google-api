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

defmodule GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaDataSharingSettings do
  @moduledoc """
  A resource message representing data sharing settings of a Google Analytics account.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Resource name. Format: accounts/{account}/dataSharingSettings Example: "accounts/1000/dataSharingSettings"
  *   `sharingWithGoogleAnySalesEnabled` (*type:* `boolean()`, *default:* `nil`) - Deprecated. This field is no longer used and always returns false.
  *   `sharingWithGoogleAssignedSalesEnabled` (*type:* `boolean()`, *default:* `nil`) - Allows Google access to your Google Analytics account data, including account usage and configuration data, product spending, and users associated with your Google Analytics account, so that Google can help you make the most of Google products, providing you with insights, offers, recommendations, and optimization tips across Google Analytics and other Google products for business. This field maps to the "Recommendations for your business" field in the Google Analytics Admin UI.
  *   `sharingWithGoogleProductsEnabled` (*type:* `boolean()`, *default:* `nil`) - Allows Google to use the data to improve other Google products or services. This fields maps to the "Google products & services" field in the Google Analytics Admin UI.
  *   `sharingWithGoogleSupportEnabled` (*type:* `boolean()`, *default:* `nil`) - Allows Google technical support representatives access to your Google Analytics data and account when necessary to provide service and find solutions to technical issues. This field maps to the "Technical support" field in the Google Analytics Admin UI.
  *   `sharingWithOthersEnabled` (*type:* `boolean()`, *default:* `nil`) - Enable features like predictions, modeled data, and benchmarking that can provide you with richer business insights when you contribute aggregated measurement data. The data you share (including information about the property from which it is shared) is aggregated and de-identified before being used to generate business insights. This field maps to the "Modeling contributions & business insights" field in the Google Analytics Admin UI.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :sharingWithGoogleAnySalesEnabled => boolean() | nil,
          :sharingWithGoogleAssignedSalesEnabled => boolean() | nil,
          :sharingWithGoogleProductsEnabled => boolean() | nil,
          :sharingWithGoogleSupportEnabled => boolean() | nil,
          :sharingWithOthersEnabled => boolean() | nil
        }

  field(:name)
  field(:sharingWithGoogleAnySalesEnabled)
  field(:sharingWithGoogleAssignedSalesEnabled)
  field(:sharingWithGoogleProductsEnabled)
  field(:sharingWithGoogleSupportEnabled)
  field(:sharingWithOthersEnabled)
end

defimpl Poison.Decoder,
  for: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaDataSharingSettings do
  def decode(value, options) do
    GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaDataSharingSettings.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaDataSharingSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
