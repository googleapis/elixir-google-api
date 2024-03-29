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

defmodule GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1CustomWeightsMetadata do
  @moduledoc """
  To support the custom weighting across document schemas.

  ## Attributes

  *   `weightedSchemaProperties` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1WeightedSchemaProperty.t)`, *default:* `nil`) - List of schema and property name. Allows a maximum of 10 schemas to be specified for relevance boosting.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :weightedSchemaProperties =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1WeightedSchemaProperty.t()
            )
            | nil
        }

  field(:weightedSchemaProperties,
    as: GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1WeightedSchemaProperty,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1CustomWeightsMetadata do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1CustomWeightsMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1CustomWeightsMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
