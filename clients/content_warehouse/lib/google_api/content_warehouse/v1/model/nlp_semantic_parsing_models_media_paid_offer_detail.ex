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

defmodule GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaPaidOfferDetail do
  @moduledoc """
  Represents BUY and RENT offers and associated cost info. Next ID: 3

  ## Attributes

  *   `cost` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaCost.t)`, *default:* `nil`) - Represents the price of this offer according to the locale and region.
  *   `paidOfferType` (*type:* `String.t`, *default:* `nil`) - Specifies the type of offer.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cost =>
            list(GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaCost.t()) | nil,
          :paidOfferType => String.t() | nil
        }

  field(:cost,
    as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaCost,
    type: :list
  )

  field(:paidOfferType)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaPaidOfferDetail do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaPaidOfferDetail.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaPaidOfferDetail do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
