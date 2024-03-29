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

defmodule GoogleApi.AndroidPublisher.V3.Model.AssetSliceSet do
  @moduledoc """
  Set of asset slices belonging to a single asset module.

  ## Attributes

  *   `apkDescription` (*type:* `list(GoogleApi.AndroidPublisher.V3.Model.ApkDescription.t)`, *default:* `nil`) - Asset slices.
  *   `assetModuleMetadata` (*type:* `GoogleApi.AndroidPublisher.V3.Model.AssetModuleMetadata.t`, *default:* `nil`) - Module level metadata.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :apkDescription => list(GoogleApi.AndroidPublisher.V3.Model.ApkDescription.t()) | nil,
          :assetModuleMetadata =>
            GoogleApi.AndroidPublisher.V3.Model.AssetModuleMetadata.t() | nil
        }

  field(:apkDescription, as: GoogleApi.AndroidPublisher.V3.Model.ApkDescription, type: :list)
  field(:assetModuleMetadata, as: GoogleApi.AndroidPublisher.V3.Model.AssetModuleMetadata)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidPublisher.V3.Model.AssetSliceSet do
  def decode(value, options) do
    GoogleApi.AndroidPublisher.V3.Model.AssetSliceSet.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidPublisher.V3.Model.AssetSliceSet do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
