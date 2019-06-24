# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Books.V1.Model.VolumeLayerInfo do
  @moduledoc """
  What layers exist in this volume and high level information about them.

  ## Attributes

  *   `layers` (*type:* `list(GoogleApi.Books.V1.Model.VolumeLayerInfoLayers.t)`, *default:* `nil`) - A layer should appear here if and only if the layer exists for this book.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :layers => list(GoogleApi.Books.V1.Model.VolumeLayerInfoLayers.t())
        }

  field(:layers, as: GoogleApi.Books.V1.Model.VolumeLayerInfoLayers, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Books.V1.Model.VolumeLayerInfo do
  def decode(value, options) do
    GoogleApi.Books.V1.Model.VolumeLayerInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Books.V1.Model.VolumeLayerInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
