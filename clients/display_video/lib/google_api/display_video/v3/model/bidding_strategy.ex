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

defmodule GoogleApi.DisplayVideo.V3.Model.BiddingStrategy do
  @moduledoc """
  Settings that control the bid strategy. Bid strategy determines the bid price.

  ## Attributes

  *   `fixedBid` (*type:* `GoogleApi.DisplayVideo.V3.Model.FixedBidStrategy.t`, *default:* `nil`) - A strategy that uses a fixed bid price.
  *   `maximizeSpendAutoBid` (*type:* `GoogleApi.DisplayVideo.V3.Model.MaximizeSpendBidStrategy.t`, *default:* `nil`) - A strategy that automatically adjusts the bid to optimize to your performance goal while spending the full budget. At insertion order level, the markup_type of line items cannot be set to `PARTNER_REVENUE_MODEL_MARKUP_TYPE_CPM`. In addition, when performance_goal_type is one of: * `BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_CPA` * `BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_CPC` * `BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_AV_VIEWED` , the line_item_type of the insertion order line items must be either: * `LINE_ITEM_TYPE_DISPLAY_DEFAULT` * `LINE_ITEM_TYPE_VIDEO_DEFAULT` , and when performance_goal_type is either: * `BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_CIVA` * `BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_IVO_TEN` the line_item_type of the insertion order line items must be `LINE_ITEM_TYPE_VIDEO_DEFAULT`.
  *   `performanceGoalAutoBid` (*type:* `GoogleApi.DisplayVideo.V3.Model.PerformanceGoalBidStrategy.t`, *default:* `nil`) - A strategy that automatically adjusts the bid to meet or beat a specified performance goal. It is to be used only for a line item entity.
  *   `youtubeAndPartnersBid` (*type:* `GoogleApi.DisplayVideo.V3.Model.YoutubeAndPartnersBiddingStrategy.t`, *default:* `nil`) - A bid strategy used by YouTube and Partners resources. It can only be used for a YouTube and Partners line item or ad group entity.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fixedBid => GoogleApi.DisplayVideo.V3.Model.FixedBidStrategy.t() | nil,
          :maximizeSpendAutoBid =>
            GoogleApi.DisplayVideo.V3.Model.MaximizeSpendBidStrategy.t() | nil,
          :performanceGoalAutoBid =>
            GoogleApi.DisplayVideo.V3.Model.PerformanceGoalBidStrategy.t() | nil,
          :youtubeAndPartnersBid =>
            GoogleApi.DisplayVideo.V3.Model.YoutubeAndPartnersBiddingStrategy.t() | nil
        }

  field(:fixedBid, as: GoogleApi.DisplayVideo.V3.Model.FixedBidStrategy)
  field(:maximizeSpendAutoBid, as: GoogleApi.DisplayVideo.V3.Model.MaximizeSpendBidStrategy)
  field(:performanceGoalAutoBid, as: GoogleApi.DisplayVideo.V3.Model.PerformanceGoalBidStrategy)

  field(:youtubeAndPartnersBid,
    as: GoogleApi.DisplayVideo.V3.Model.YoutubeAndPartnersBiddingStrategy
  )
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V3.Model.BiddingStrategy do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V3.Model.BiddingStrategy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V3.Model.BiddingStrategy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
