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

defmodule GoogleApi.ContentWarehouse.V1.Model.IndexingDupsLocalizedLocalizedClusterTargetLinkLinkAnnotationSourceInfo do
  @moduledoc """
  Message describing where was the link discovered and with what language annotation.

  ## Attributes

  *   `anchorText` (*type:* `String.t`, *default:* `nil`) - Optional field for storing the anchor text the language code was extracted from. Applies to outlinks only.
  *   `annotationSource` (*type:* `String.t`, *default:* `nil`) - Information about where the language code was extracted from.
  *   `languageCode` (*type:* `String.t`, *default:* `nil`) - Language code extracted from the URL (hreflang or outlink). One URL can represent multiple language codes, like e.g. de-at and de-ch
  *   `sourceFeedUrl` (*type:* `String.t`, *default:* `nil`) - Optional field that stores the feed URL where a Sitemap annotation was discovered. Only populated if annotation_source is SITEMAP.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :anchorText => String.t() | nil,
          :annotationSource => String.t() | nil,
          :languageCode => String.t() | nil,
          :sourceFeedUrl => String.t() | nil
        }

  field(:anchorText)
  field(:annotationSource)
  field(:languageCode)
  field(:sourceFeedUrl)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ContentWarehouse.V1.Model.IndexingDupsLocalizedLocalizedClusterTargetLinkLinkAnnotationSourceInfo do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.IndexingDupsLocalizedLocalizedClusterTargetLinkLinkAnnotationSourceInfo.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ContentWarehouse.V1.Model.IndexingDupsLocalizedLocalizedClusterTargetLinkLinkAnnotationSourceInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
