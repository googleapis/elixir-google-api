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

defmodule GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1VertexModelSpec do
  @moduledoc """
  Specification for vertex model resources.

  ## Attributes

  *   `containerImageUri` (*type:* `String.t`, *default:* `nil`) - URI of the Docker image to be used as the custom container for serving predictions.
  *   `versionAliases` (*type:* `list(String.t)`, *default:* `nil`) - User provided version aliases so that a model version can be referenced via alias
  *   `versionDescription` (*type:* `String.t`, *default:* `nil`) - The description of this version.
  *   `versionId` (*type:* `String.t`, *default:* `nil`) - The version ID of the model.
  *   `vertexModelSourceInfo` (*type:* `GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1VertexModelSourceInfo.t`, *default:* `nil`) - Source of a Vertex model.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :containerImageUri => String.t() | nil,
          :versionAliases => list(String.t()) | nil,
          :versionDescription => String.t() | nil,
          :versionId => String.t() | nil,
          :vertexModelSourceInfo =>
            GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1VertexModelSourceInfo.t() | nil
        }

  field(:containerImageUri)
  field(:versionAliases, type: :list)
  field(:versionDescription)
  field(:versionId)

  field(:vertexModelSourceInfo,
    as: GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1VertexModelSourceInfo
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1VertexModelSpec do
  def decode(value, options) do
    GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1VertexModelSpec.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1VertexModelSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
