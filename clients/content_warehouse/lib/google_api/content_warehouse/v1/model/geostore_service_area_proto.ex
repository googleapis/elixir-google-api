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

defmodule GoogleApi.ContentWarehouse.V1.Model.GeostoreServiceAreaProto do
  @moduledoc """
  This proto represents the geographic area served by an establishment. WARNING: This proto is not meant to be used directly. Please use the provided libraries. http://google3/geostore/base/public/service_area.h http://google3/java/com/google/geostore/base/ServiceArea.java

  ## Attributes

  *   `servedFeature` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.GeostoreFeatureIdProto.t)`, *default:* `nil`) - The features that make up the service area for this establishment. These features are subject to the following constraints applied by editing middleware (notably, not strictly enforced by lints in storage): 1. The following feature types (and their subtypes) may be used: + TYPE_ISLAND + TYPE_POLITICAL, except the following prohibited subtypes: - TYPE_CONSTITUENCY - TYPE_LAND_PARCEL + TYPE_POSTAL 2. There is a maximum limit (currently 20) to the number of areas which may be provided. This is due to serving efficiency limitations. 3. There are no additional geometry requirements for these features beyond the requirements based on the feature types above. In practice this means that these features will either have polygonal or point-based geometries. 4. These referenced features are generally required to have names, though this is not strictly enforced.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :servedFeature =>
            list(GoogleApi.ContentWarehouse.V1.Model.GeostoreFeatureIdProto.t()) | nil
        }

  field(:servedFeature,
    as: GoogleApi.ContentWarehouse.V1.Model.GeostoreFeatureIdProto,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreServiceAreaProto do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GeostoreServiceAreaProto.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreServiceAreaProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
