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

defmodule GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingLocalLocalResultId do
  @moduledoc """
  This message holds all info the local assistant team will need to lookup a LocalResult in search.

  ## Attributes

  *   `featureId` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostoreFeatureIdProto.t`, *default:* `nil`) - 
  *   `geocodingAddress` (*type:* `String.t`, *default:* `nil`) - The full address of the result. This should be a verbose address string that geocodes reliably.
  *   `kgMid` (*type:* `String.t`, *default:* `nil`) - The knowledge graph reference of the result.
  *   `position` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostorePointProto.t`, *default:* `nil`) - The position of the result.
  *   `rect` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostoreRectProto.t`, *default:* `nil`) - The position of the result, if it can't be expressed as a pointproto.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :featureId => GoogleApi.ContentWarehouse.V1.Model.GeostoreFeatureIdProto.t() | nil,
          :geocodingAddress => String.t() | nil,
          :kgMid => String.t() | nil,
          :position => GoogleApi.ContentWarehouse.V1.Model.GeostorePointProto.t() | nil,
          :rect => GoogleApi.ContentWarehouse.V1.Model.GeostoreRectProto.t() | nil
        }

  field(:featureId, as: GoogleApi.ContentWarehouse.V1.Model.GeostoreFeatureIdProto)
  field(:geocodingAddress)
  field(:kgMid)
  field(:position, as: GoogleApi.ContentWarehouse.V1.Model.GeostorePointProto)
  field(:rect, as: GoogleApi.ContentWarehouse.V1.Model.GeostoreRectProto)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingLocalLocalResultId do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingLocalLocalResultId.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingLocalLocalResultId do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
