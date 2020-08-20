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

defmodule GoogleApi.Fonts.V1.Model.Webfont do
  @moduledoc """
  Metadata describing a family of fonts.

  ## Attributes

  *   `category` (*type:* `String.t`, *default:* `nil`) - The category of the font.
  *   `family` (*type:* `String.t`, *default:* `nil`) - The name of the font.
  *   `files` (*type:* `map()`, *default:* `nil`) - The font files (with all supported scripts) for each one of the available variants, as a key : value map.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - This kind represents a webfont object in the webfonts service.
  *   `lastModified` (*type:* `String.t`, *default:* `nil`) - The date (format "yyyy-MM-dd") the font was modified for the last time.
  *   `subsets` (*type:* `list(String.t)`, *default:* `nil`) - The scripts supported by the font.
  *   `variants` (*type:* `list(String.t)`, *default:* `nil`) - The available variants for the font.
  *   `version` (*type:* `String.t`, *default:* `nil`) - The font version.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :category => String.t(),
          :family => String.t(),
          :files => map(),
          :kind => String.t(),
          :lastModified => String.t(),
          :subsets => list(String.t()),
          :variants => list(String.t()),
          :version => String.t()
        }

  field(:category)
  field(:family)
  field(:files, type: :map)
  field(:kind)
  field(:lastModified)
  field(:subsets, type: :list)
  field(:variants, type: :list)
  field(:version)
end

defimpl Poison.Decoder, for: GoogleApi.Fonts.V1.Model.Webfont do
  def decode(value, options) do
    GoogleApi.Fonts.V1.Model.Webfont.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Fonts.V1.Model.Webfont do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
