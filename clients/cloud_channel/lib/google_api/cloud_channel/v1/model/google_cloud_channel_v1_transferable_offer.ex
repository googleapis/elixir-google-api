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

defmodule GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1TransferableOffer do
  @moduledoc """
  TransferableOffer represents an Offer that can be used in Transfer. Read-only.

  ## Attributes

  *   `offer` (*type:* `GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1Offer.t`, *default:* `nil`) - Offer with parameter constraints updated to allow the Transfer.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :offer => GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1Offer.t() | nil
        }

  field(:offer, as: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1Offer)
end

defimpl Poison.Decoder, for: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1TransferableOffer do
  def decode(value, options) do
    GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1TransferableOffer.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1TransferableOffer do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
