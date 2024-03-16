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

defmodule GoogleApi.ContentWarehouse.V1.Model.GeostoreSocialReferenceProto do
  @moduledoc """
  MapFacts GAIA ID assigned to this feature. These values are virtual GAIA IDs from MapFacts, and as such are not stored in Focus.

  ## Attributes

  *   `baseGaiaId` (*type:* `String.t`, *default:* `nil`) - WARNING: Please do NOT introduce new uses; treat this field as if it were deprecated. 
  *   `claimedGaiaId` (*type:* `String.t`, *default:* `nil`) - GAIA ID used when a business has been claimed. This value is a robot GAIA ID. Robots are a special type of GAIA account used to denote identity for a user or a group of users, but are not logged-in directly by a user.
  *   `gaiaIdForDisplay` (*type:* `String.t`, *default:* `nil`) - WARNING: Please do NOT introduce new uses; treat this field as if it were deprecated. 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :baseGaiaId => String.t() | nil,
          :claimedGaiaId => String.t() | nil,
          :gaiaIdForDisplay => String.t() | nil
        }

  field(:baseGaiaId)
  field(:claimedGaiaId)
  field(:gaiaIdForDisplay)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreSocialReferenceProto do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GeostoreSocialReferenceProto.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreSocialReferenceProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end