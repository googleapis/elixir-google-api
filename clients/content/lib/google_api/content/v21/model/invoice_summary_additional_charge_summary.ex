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

defmodule GoogleApi.Content.V21.Model.InvoiceSummaryAdditionalChargeSummary do
  @moduledoc """


  ## Attributes

  *   `totalAmount` (*type:* `GoogleApi.Content.V21.Model.Amount.t`, *default:* `nil`) - [required] Total additional charge for this type.
  *   `type` (*type:* `String.t`, *default:* `nil`) - [required] Type of the additional charge. Acceptable values are: - "`shipping`" 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :totalAmount => GoogleApi.Content.V21.Model.Amount.t() | nil,
          :type => String.t() | nil
        }

  field(:totalAmount, as: GoogleApi.Content.V21.Model.Amount)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.InvoiceSummaryAdditionalChargeSummary do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.InvoiceSummaryAdditionalChargeSummary.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.InvoiceSummaryAdditionalChargeSummary do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
