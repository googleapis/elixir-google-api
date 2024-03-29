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

defmodule GoogleApi.DisplayVideo.V3.Model.FixedBidStrategy do
  @moduledoc """
  A strategy that uses a fixed bidding price.

  ## Attributes

  *   `bidAmountMicros` (*type:* `String.t`, *default:* `nil`) - The fixed bid amount, in micros of the advertiser's currency. For insertion order entity, bid_amount_micros should be set as 0. For line item entity, bid_amount_micros must be greater than or equal to billable unit of the given currency and smaller than or equal to the upper limit 1000000000. For example, 1500000 represents 1.5 standard units of the currency.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bidAmountMicros => String.t() | nil
        }

  field(:bidAmountMicros)
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V3.Model.FixedBidStrategy do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V3.Model.FixedBidStrategy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V3.Model.FixedBidStrategy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
