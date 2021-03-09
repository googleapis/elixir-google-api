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

defmodule GoogleApi.Content.V21.Model.AccountReturnCarrier do
  @moduledoc """
   The return carrier information. This service is designed for merchants enrolled in the Buy on Google program. 

  ## Attributes

  *   `carrierAccountId` (*type:* `String.t`, *default:* `nil`) - Output only. Immutable. The Google-provided unique carrier ID, used to update the resource.
  *   `carrierAccountName` (*type:* `String.t`, *default:* `nil`) - Name of the carrier account.
  *   `carrierAccountNumber` (*type:* `String.t`, *default:* `nil`) - Number of the carrier account.
  *   `carrierCode` (*type:* `String.t`, *default:* `nil`) - The carrier code enum. Accepts the values FEDEX or UPS.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :carrierAccountId => String.t() | nil,
          :carrierAccountName => String.t() | nil,
          :carrierAccountNumber => String.t() | nil,
          :carrierCode => String.t() | nil
        }

  field(:carrierAccountId)
  field(:carrierAccountName)
  field(:carrierAccountNumber)
  field(:carrierCode)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.AccountReturnCarrier do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.AccountReturnCarrier.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.AccountReturnCarrier do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
