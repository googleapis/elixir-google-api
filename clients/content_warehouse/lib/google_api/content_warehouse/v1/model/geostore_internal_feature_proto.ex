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

defmodule GoogleApi.ContentWarehouse.V1.Model.GeostoreInternalFeatureProto do
  @moduledoc """
  Main proto for all internal fields to be stored at the feature level.

  ## Attributes

  *   `polygonShapeId` (*type:* `String.t`, *default:* `nil`) - A unique identifier for this feature's polygon data which is being held externally in Shapestore (see go/shapestore).
  *   `restOfWorldPolygonShapeId` (*type:* `String.t`, *default:* `nil`) - A unique identifier for this feature's rest-of-world view polygon data which is being held externally in Shapestore (see go/shapestore). This is part of the feature's geopolitical geometry.
  *   `rightsStatus` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostoreRightsStatusProto.t`, *default:* `nil`) - Per-field rights for this feature. See http://g3doc/geostore/g3doc/developers-guide/inputs/rights-tracking for more information.
  *   `selfPolygonShapeId` (*type:* `String.t`, *default:* `nil`) - A unique identifier for this feature's self view polygon data which is being held externally in Shapestore (see go/shapestore). This is part of the feature's geopolitical geometry.
  *   `trust` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostoreTrustSignalsProto.t`, *default:* `nil`) - Trust signals/annotations for the feature. In an input feature, these signals are computed at the beginning of the pipeline and are immutable during the processing. In output features, this proto may define the rules/criteria that a newer edit should meet, in order to be applied.
  *   `waterRemovedPolygonShapeId` (*type:* `String.t`, *default:* `nil`) - A unique identifier for this feature's water-removed polygon data which is being held externally in Shapestore (see go/shapestore).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :polygonShapeId => String.t() | nil,
          :restOfWorldPolygonShapeId => String.t() | nil,
          :rightsStatus =>
            GoogleApi.ContentWarehouse.V1.Model.GeostoreRightsStatusProto.t() | nil,
          :selfPolygonShapeId => String.t() | nil,
          :trust => GoogleApi.ContentWarehouse.V1.Model.GeostoreTrustSignalsProto.t() | nil,
          :waterRemovedPolygonShapeId => String.t() | nil
        }

  field(:polygonShapeId)
  field(:restOfWorldPolygonShapeId)
  field(:rightsStatus, as: GoogleApi.ContentWarehouse.V1.Model.GeostoreRightsStatusProto)
  field(:selfPolygonShapeId)
  field(:trust, as: GoogleApi.ContentWarehouse.V1.Model.GeostoreTrustSignalsProto)
  field(:waterRemovedPolygonShapeId)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreInternalFeatureProto do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GeostoreInternalFeatureProto.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreInternalFeatureProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end