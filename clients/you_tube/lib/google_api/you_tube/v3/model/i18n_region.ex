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

defmodule GoogleApi.YouTube.V3.Model.I18nRegion do
  @moduledoc """
  A i18nRegion resource identifies a region where YouTube is available.

  ## Attributes

  *   `etag` (*type:* `String.t`, *default:* `nil`) - Etag of this resource.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The ID that YouTube uses to uniquely identify the i18n region.
  *   `kind` (*type:* `String.t`, *default:* `youtube#i18nRegion`) - Identifies what kind of resource this is. Value: the fixed string "youtube#i18nRegion".
  *   `snippet` (*type:* `GoogleApi.YouTube.V3.Model.I18nRegionSnippet.t`, *default:* `nil`) - The snippet object contains basic details about the i18n region, such as region code and human-readable name.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :etag => String.t(),
          :id => String.t(),
          :kind => String.t(),
          :snippet => GoogleApi.YouTube.V3.Model.I18nRegionSnippet.t()
        }

  field(:etag)
  field(:id)
  field(:kind)
  field(:snippet, as: GoogleApi.YouTube.V3.Model.I18nRegionSnippet)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.I18nRegion do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.I18nRegion.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.I18nRegion do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
