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

defmodule GoogleApi.DFAReporting.V34.Model.DirectorySite do
  @moduledoc """
  DirectorySites contains properties of a website from the Site Directory. Sites need to be added to an account via the Sites resource before they can be assigned to a placement.

  ## Attributes

  *   `id` (*type:* `String.t`, *default:* `nil`) - ID of this directory site. This is a read-only, auto-generated field.
  *   `idDimensionValue` (*type:* `GoogleApi.DFAReporting.V34.Model.DimensionValue.t`, *default:* `nil`) - Dimension value for the ID of this directory site. This is a read-only, auto-generated field.
  *   `inpageTagFormats` (*type:* `list(String.t)`, *default:* `nil`) - Tag types for regular placements.

      Acceptable values are:
      - "STANDARD"
      - "IFRAME_JAVASCRIPT_INPAGE"
      - "INTERNAL_REDIRECT_INPAGE"
      - "JAVASCRIPT_INPAGE"
  *   `interstitialTagFormats` (*type:* `list(String.t)`, *default:* `nil`) - Tag types for interstitial placements.

      Acceptable values are:
      - "IFRAME_JAVASCRIPT_INTERSTITIAL"
      - "INTERNAL_REDIRECT_INTERSTITIAL"
      - "JAVASCRIPT_INTERSTITIAL"
  *   `kind` (*type:* `String.t`, *default:* `dfareporting#directorySite`) - Identifies what kind of resource this is. Value: the fixed string "dfareporting#directorySite".
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of this directory site.
  *   `settings` (*type:* `GoogleApi.DFAReporting.V34.Model.DirectorySiteSettings.t`, *default:* `nil`) - Directory site settings.
  *   `url` (*type:* `String.t`, *default:* `nil`) - URL of this directory site.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :id => String.t(),
          :idDimensionValue => GoogleApi.DFAReporting.V34.Model.DimensionValue.t(),
          :inpageTagFormats => list(String.t()),
          :interstitialTagFormats => list(String.t()),
          :kind => String.t(),
          :name => String.t(),
          :settings => GoogleApi.DFAReporting.V34.Model.DirectorySiteSettings.t(),
          :url => String.t()
        }

  field(:id)
  field(:idDimensionValue, as: GoogleApi.DFAReporting.V34.Model.DimensionValue)
  field(:inpageTagFormats, type: :list)
  field(:interstitialTagFormats, type: :list)
  field(:kind)
  field(:name)
  field(:settings, as: GoogleApi.DFAReporting.V34.Model.DirectorySiteSettings)
  field(:url)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V34.Model.DirectorySite do
  def decode(value, options) do
    GoogleApi.DFAReporting.V34.Model.DirectorySite.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V34.Model.DirectorySite do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
