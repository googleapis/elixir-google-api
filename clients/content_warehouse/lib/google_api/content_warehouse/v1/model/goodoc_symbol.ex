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

defmodule GoogleApi.ContentWarehouse.V1.Model.GoodocSymbol do
  @moduledoc """
  A single symbol representation

  ## Attributes

  *   `Box` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GoodocBoundingBox.t`, *default:* `nil`) - 
  *   `Code` (*type:* `integer()`, *default:* `nil`) - The unicode character code in UTF-32
  *   `Label` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GoodocLabel.t`, *default:* `nil`) - 
  *   `RotatedBox` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GoodocRotatedBoundingBox.t`, *default:* `nil`) - If RotatedBox is set, Box must be set as well. See RotatedBoundingBox.
  *   `symbolvariant` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.GoodocSymbolSymbolVariant.t)`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :Box => GoogleApi.ContentWarehouse.V1.Model.GoodocBoundingBox.t() | nil,
          :Code => integer() | nil,
          :Label => GoogleApi.ContentWarehouse.V1.Model.GoodocLabel.t() | nil,
          :RotatedBox => GoogleApi.ContentWarehouse.V1.Model.GoodocRotatedBoundingBox.t() | nil,
          :symbolvariant =>
            list(GoogleApi.ContentWarehouse.V1.Model.GoodocSymbolSymbolVariant.t()) | nil
        }

  field(:Box, as: GoogleApi.ContentWarehouse.V1.Model.GoodocBoundingBox)
  field(:Code)
  field(:Label, as: GoogleApi.ContentWarehouse.V1.Model.GoodocLabel)
  field(:RotatedBox, as: GoogleApi.ContentWarehouse.V1.Model.GoodocRotatedBoundingBox)

  field(:symbolvariant,
    as: GoogleApi.ContentWarehouse.V1.Model.GoodocSymbolSymbolVariant,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.GoodocSymbol do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GoodocSymbol.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.GoodocSymbol do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end