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

defmodule GoogleApi.ContentWarehouse.V1.Model.GeostoreGeopoliticalGeometryProto do
  @moduledoc """
  Geopolitical (unsimplified) polygons for a feature for different geopolitical use cases. See go/unsimplified-poly.

  ## Attributes

  *   `restOfWorldPolygon` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostorePolygonProto.t`, *default:* `nil`) - The unsimplified, water-subtracted polygon representing the feature's geometry as viewed by the rest of the world, which may differ from its default polygon, for example by excluding certain regions.
  *   `selfPolygon` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostorePolygonProto.t`, *default:* `nil`) - The unsimplified, water-subtracted polygon representing the feature's geometry as viewed by the country that administers it, which may differ from its default polygon, for example by including disputed areas.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :restOfWorldPolygon =>
            GoogleApi.ContentWarehouse.V1.Model.GeostorePolygonProto.t() | nil,
          :selfPolygon => GoogleApi.ContentWarehouse.V1.Model.GeostorePolygonProto.t() | nil
        }

  field(:restOfWorldPolygon, as: GoogleApi.ContentWarehouse.V1.Model.GeostorePolygonProto)
  field(:selfPolygon, as: GoogleApi.ContentWarehouse.V1.Model.GeostorePolygonProto)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreGeopoliticalGeometryProto do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GeostoreGeopoliticalGeometryProto.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreGeopoliticalGeometryProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
