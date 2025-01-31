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

defmodule GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_AdGroupAdEffectiveLabel do
  @moduledoc """
  A relationship between an ad group ad and an effective label. An effective label is a label inherited or directly assigned to this ad group ad.

  ## Attributes

  *   `adGroupAd` (*type:* `String.t`, *default:* `nil`) - Immutable. The ad group ad to which the effective label is attached.
  *   `label` (*type:* `String.t`, *default:* `nil`) - Immutable. The effective label assigned to the ad group ad.
  *   `ownerCustomerId` (*type:* `String.t`, *default:* `nil`) - Output only. The ID of the Customer which owns the effective label.
  *   `resourceName` (*type:* `String.t`, *default:* `nil`) - Immutable. The resource name of the ad group ad effective label. Ad group ad effective label resource names have the form: `customers/{customer_id}/adGroupAdEffectiveLabels/{ad_group_id}~{ad_id}~{label_id}`
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :adGroupAd => String.t() | nil,
          :label => String.t() | nil,
          :ownerCustomerId => String.t() | nil,
          :resourceName => String.t() | nil
        }

  field(:adGroupAd)
  field(:label)
  field(:ownerCustomerId)
  field(:resourceName)
end

defimpl Poison.Decoder,
  for: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_AdGroupAdEffectiveLabel do
  def decode(value, options) do
    GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_AdGroupAdEffectiveLabel.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_AdGroupAdEffectiveLabel do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
