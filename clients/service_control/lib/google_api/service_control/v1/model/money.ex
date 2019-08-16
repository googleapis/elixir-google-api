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

defmodule GoogleApi.ServiceControl.V1.Model.Money do
  @moduledoc """
  Represents an amount of money with its currency type.

  ## Attributes

  *   `currencyCode` (*type:* `String.t`, *default:* `nil`) - The 3-letter currency code defined in ISO 4217.
  *   `nanos` (*type:* `integer()`, *default:* `nil`) - Number of nano (10^-9) units of the amount.
      The value must be between -999,999,999 and +999,999,999 inclusive.
      If `units` is positive, `nanos` must be positive or zero.
      If `units` is zero, `nanos` can be positive, zero, or negative.
      If `units` is negative, `nanos` must be negative or zero.
      For example $-1.75 is represented as `units`=-1 and `nanos`=-750,000,000.
  *   `units` (*type:* `String.t`, *default:* `nil`) - The whole units of the amount.
      For example if `currencyCode` is `"USD"`, then 1 unit is one US dollar.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :currencyCode => String.t(),
          :nanos => integer(),
          :units => String.t()
        }

  field(:currencyCode)
  field(:nanos)
  field(:units)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceControl.V1.Model.Money do
  def decode(value, options) do
    GoogleApi.ServiceControl.V1.Model.Money.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceControl.V1.Model.Money do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
