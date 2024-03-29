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

defmodule GoogleApi.AndroidPublisher.V3.Model.TextureCompressionFormatTargeting do
  @moduledoc """
  Targeting by a texture compression format.

  ## Attributes

  *   `alternatives` (*type:* `list(GoogleApi.AndroidPublisher.V3.Model.TextureCompressionFormat.t)`, *default:* `nil`) - List of alternative TCFs (TCFs targeted by the sibling splits).
  *   `value` (*type:* `list(GoogleApi.AndroidPublisher.V3.Model.TextureCompressionFormat.t)`, *default:* `nil`) - The list of targeted TCFs. Should not be empty.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :alternatives =>
            list(GoogleApi.AndroidPublisher.V3.Model.TextureCompressionFormat.t()) | nil,
          :value => list(GoogleApi.AndroidPublisher.V3.Model.TextureCompressionFormat.t()) | nil
        }

  field(:alternatives,
    as: GoogleApi.AndroidPublisher.V3.Model.TextureCompressionFormat,
    type: :list
  )

  field(:value, as: GoogleApi.AndroidPublisher.V3.Model.TextureCompressionFormat, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidPublisher.V3.Model.TextureCompressionFormatTargeting do
  def decode(value, options) do
    GoogleApi.AndroidPublisher.V3.Model.TextureCompressionFormatTargeting.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidPublisher.V3.Model.TextureCompressionFormatTargeting do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
