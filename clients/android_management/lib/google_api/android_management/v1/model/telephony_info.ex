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

defmodule GoogleApi.AndroidManagement.V1.Model.TelephonyInfo do
  @moduledoc """
  Telephony information associated with a given SIM card on the device. Only supported on fully managed devices starting from Android API level 23.

  ## Attributes

  *   `carrierName` (*type:* `String.t`, *default:* `nil`) - The carrier name associated with this SIM card.
  *   `phoneNumber` (*type:* `String.t`, *default:* `nil`) - The phone number associated with this SIM card.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :carrierName => String.t() | nil,
          :phoneNumber => String.t() | nil
        }

  field(:carrierName)
  field(:phoneNumber)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.TelephonyInfo do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.TelephonyInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.TelephonyInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
