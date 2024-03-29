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

defmodule GoogleApi.MyBusinessBusinessInformation.V1.Model.SpecialHourPeriod do
  @moduledoc """
  Represents a single time period when a location's operational hours differ from its normal business hours. A special hour period must represent a range of less than 24 hours. The `open_time` and `start_date` must predate the `close_time` and `end_date`. The `close_time` and `end_date` can extend to 11:59 a.m. on the day after the specified `start_date`. For example, the following inputs are valid: start_date=2015-11-23, open_time=08:00, close_time=18:00 start_date=2015-11-23, end_date=2015-11-23, open_time=08:00, close_time=18:00 start_date=2015-11-23, end_date=2015-11-24, open_time=13:00, close_time=11:59 The following inputs are not valid: start_date=2015-11-23, open_time=13:00, close_time=11:59 start_date=2015-11-23, end_date=2015-11-24, open_time=13:00, close_time=12:00 start_date=2015-11-23, end_date=2015-11-25, open_time=08:00, close_time=18:00

  ## Attributes

  *   `closeTime` (*type:* `GoogleApi.MyBusinessBusinessInformation.V1.Model.TimeOfDay.t`, *default:* `nil`) - Optional. Valid values are 00:00-24:00, where 24:00 represents midnight at the end of the specified day field. Must be specified if `closed` is false.
  *   `closed` (*type:* `boolean()`, *default:* `nil`) - Optional. If true, `end_date`, `open_time`, and `close_time` are ignored, and the date specified in `start_date` is treated as the location being closed for the entire day.
  *   `endDate` (*type:* `GoogleApi.MyBusinessBusinessInformation.V1.Model.Date.t`, *default:* `nil`) - Optional. The calendar date this special hour period ends on. If `end_date` field is not set, default to the date specified in `start_date`. If set, this field must be equal to or at most 1 day after `start_date`.
  *   `openTime` (*type:* `GoogleApi.MyBusinessBusinessInformation.V1.Model.TimeOfDay.t`, *default:* `nil`) - Optional. Valid values are 00:00-24:00 where 24:00 represents midnight at the end of the specified day field. Must be specified if `closed` is false.
  *   `startDate` (*type:* `GoogleApi.MyBusinessBusinessInformation.V1.Model.Date.t`, *default:* `nil`) - Required. The calendar date this special hour period starts on.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :closeTime => GoogleApi.MyBusinessBusinessInformation.V1.Model.TimeOfDay.t() | nil,
          :closed => boolean() | nil,
          :endDate => GoogleApi.MyBusinessBusinessInformation.V1.Model.Date.t() | nil,
          :openTime => GoogleApi.MyBusinessBusinessInformation.V1.Model.TimeOfDay.t() | nil,
          :startDate => GoogleApi.MyBusinessBusinessInformation.V1.Model.Date.t() | nil
        }

  field(:closeTime, as: GoogleApi.MyBusinessBusinessInformation.V1.Model.TimeOfDay)
  field(:closed)
  field(:endDate, as: GoogleApi.MyBusinessBusinessInformation.V1.Model.Date)
  field(:openTime, as: GoogleApi.MyBusinessBusinessInformation.V1.Model.TimeOfDay)
  field(:startDate, as: GoogleApi.MyBusinessBusinessInformation.V1.Model.Date)
end

defimpl Poison.Decoder, for: GoogleApi.MyBusinessBusinessInformation.V1.Model.SpecialHourPeriod do
  def decode(value, options) do
    GoogleApi.MyBusinessBusinessInformation.V1.Model.SpecialHourPeriod.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MyBusinessBusinessInformation.V1.Model.SpecialHourPeriod do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
