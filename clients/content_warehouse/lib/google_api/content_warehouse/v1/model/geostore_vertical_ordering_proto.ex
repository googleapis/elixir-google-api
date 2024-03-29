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

defmodule GoogleApi.ContentWarehouse.V1.Model.GeostoreVerticalOrderingProto do
  @moduledoc """
  A proto representing a vertical ordering of a feature. NOTE: This shouldn’t be used if a more specific field can be used instead. E.g., for TYPE_SEGMENT features grade_level field should be preferred. For indoor features RELATION_ON_LEVEL should be preferred. See go/aboutgrades for comparison of various types of levels available.

  ## Attributes

  *   `level` (*type:* `number()`, *default:* `nil`) - The level represents the relative vertical ordering of a feature among all overlapping features. For example, we may have features along freeway surface have level = 0, and features on an overpass have level = 1. NOTE: It’s assumed that all features have level 0 by default, so that it’s not necessary for all overlapping features to have this set.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :level => number() | nil
        }

  field(:level)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreVerticalOrderingProto do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GeostoreVerticalOrderingProto.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreVerticalOrderingProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
