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

defmodule GoogleApi.DFAReporting.V4.Model.BillingAssignment do
  @moduledoc """
  List account, subaccount, advertiser, and campaign associated with a given Billing Profile.

  ## Attributes

  *   `accountId` (*type:* `String.t`, *default:* `nil`) - ID of the account associated with the billing assignment.This is a read-only, auto-generated field.
  *   `advertiserId` (*type:* `String.t`, *default:* `nil`) - ID of the advertiser associated with the billing assignment.Wildcard (*) means this assignment is not limited to a single advertiser
  *   `campaignId` (*type:* `String.t`, *default:* `nil`) - ID of the campaign associated with the billing assignment. Wildcard (*) means this assignment is not limited to a single campaign
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string "dfareporting#billingAssignment".
  *   `subaccountId` (*type:* `String.t`, *default:* `nil`) - ID of the subaccount associated with the billing assignment.Wildcard (*) means this assignment is not limited to a single subaccountThis is a read-only, auto-generated field.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => String.t() | nil,
          :advertiserId => String.t() | nil,
          :campaignId => String.t() | nil,
          :kind => String.t() | nil,
          :subaccountId => String.t() | nil
        }

  field(:accountId)
  field(:advertiserId)
  field(:campaignId)
  field(:kind)
  field(:subaccountId)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V4.Model.BillingAssignment do
  def decode(value, options) do
    GoogleApi.DFAReporting.V4.Model.BillingAssignment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V4.Model.BillingAssignment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
