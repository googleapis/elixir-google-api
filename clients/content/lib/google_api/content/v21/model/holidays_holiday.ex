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

defmodule GoogleApi.Content.V21.Model.HolidaysHoliday do
  @moduledoc """


  ## Attributes

  *   `countryCode` (*type:* `String.t`, *default:* `nil`) - The CLDR territory code of the country in which the holiday is available. For example, "US", "DE", "GB". A holiday cutoff can only be configured in a shipping settings service with matching delivery country. Always present.
  *   `date` (*type:* `String.t`, *default:* `nil`) - Date of the holiday, in ISO 8601 format. For example, "2016-12-25" for Christmas 2016. Always present.
  *   `deliveryGuaranteeDate` (*type:* `String.t`, *default:* `nil`) - Date on which the order has to arrive at the customer's, in ISO 8601 format. For example, "2016-12-24" for 24th December 2016. Always present.
  *   `deliveryGuaranteeHour` (*type:* `String.t`, *default:* `nil`) - Hour of the day in the delivery location's timezone on the guaranteed delivery date by which the order has to arrive at the customer's. Possible values are: 0 (midnight), 1, ..., 12 (noon), 13, ..., 23. Always present.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Unique identifier for the holiday to be used when configuring holiday cutoffs. Always present.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The holiday type. Always present. Acceptable values are: - "`Christmas`" - "`Easter`" - "`Father's Day`" - "`Halloween`" - "`Independence Day (USA)`" - "`Mother's Day`" - "`Thanksgiving`" - "`Valentine's Day`" 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :countryCode => String.t() | nil,
          :date => String.t() | nil,
          :deliveryGuaranteeDate => String.t() | nil,
          :deliveryGuaranteeHour => String.t() | nil,
          :id => String.t() | nil,
          :type => String.t() | nil
        }

  field(:countryCode)
  field(:date)
  field(:deliveryGuaranteeDate)
  field(:deliveryGuaranteeHour)
  field(:id)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.HolidaysHoliday do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.HolidaysHoliday.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.HolidaysHoliday do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
