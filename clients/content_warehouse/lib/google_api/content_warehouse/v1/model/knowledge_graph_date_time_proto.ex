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

defmodule GoogleApi.ContentWarehouse.V1.Model.KnowledgeGraphDateTimeProto do
  @moduledoc """


  ## Attributes

  *   `days` (*type:* `integer()`, *default:* `nil`) - A day of month, 1-31. If present, year and month must be present as well, and must form a valid date.
  *   `hours` (*type:* `integer()`, *default:* `nil`) - Hour of the day, 0-23
  *   `microseconds` (*type:* `integer()`, *default:* `nil`) - Microsecond, in the interval [0, 999999]. If present, seconds have to be present as well.
  *   `minutes` (*type:* `integer()`, *default:* `nil`) - Minute, 0-59. If present, hours have to be present as well.
  *   `months` (*type:* `integer()`, *default:* `nil`) - A month, 1-12. If present, year must be present as well.
  *   `seconds` (*type:* `integer()`, *default:* `nil`) - Second, in the interval [0, 60], where 60 is an exceptional value reserved for leap seconds. If present, minutes have to be present as well.
  *   `tzOffset` (*type:* `String.t`, *default:* `nil`) - Timezone offset in seconds (can be positive/negative). If present, hours have to be present as well If absent, we expect the time above to be in local time (a.k.a. civil time, go/httat#civil_time).
  *   `years` (*type:* `integer()`, *default:* `nil`) - A year.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :days => integer() | nil,
          :hours => integer() | nil,
          :microseconds => integer() | nil,
          :minutes => integer() | nil,
          :months => integer() | nil,
          :seconds => integer() | nil,
          :tzOffset => String.t() | nil,
          :years => integer() | nil
        }

  field(:days)
  field(:hours)
  field(:microseconds)
  field(:minutes)
  field(:months)
  field(:seconds)
  field(:tzOffset)
  field(:years)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.KnowledgeGraphDateTimeProto do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.KnowledgeGraphDateTimeProto.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.KnowledgeGraphDateTimeProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
