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

defmodule GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_AccessibleBiddingStrategy_TargetCpa do
  @moduledoc """
  An automated bid strategy that sets bids to help get as many conversions as possible at the target cost-per-acquisition (CPA) you set.

  ## Attributes

  *   `targetCpaMicros` (*type:* `String.t`, *default:* `nil`) - Output only. Average CPA target. This target should be greater than or equal to minimum billable unit based on the currency for the account.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :targetCpaMicros => String.t() | nil
        }

  field(:targetCpaMicros)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_AccessibleBiddingStrategy_TargetCpa do
  def decode(value, options) do
    GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_AccessibleBiddingStrategy_TargetCpa.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_AccessibleBiddingStrategy_TargetCpa do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
