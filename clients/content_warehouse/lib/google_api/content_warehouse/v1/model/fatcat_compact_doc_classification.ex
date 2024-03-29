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

defmodule GoogleApi.ContentWarehouse.V1.Model.FatcatCompactDocClassification do
  @moduledoc """
  The result of PetacatAnnotator. Each result contains: 1. RephilClusters; 2. At most 5 verticals from each taxonomy, sorted by the probabilities in descending order. 3. Binary classification results about page types and sensitive content. The types of taxonomies include: verticals4, geo, verticals4_geo, products_services, icm_im_audiences and icm_im_audiences_dev.

  ## Attributes

  *   `binary` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.FatcatCompactBinaryClassification.t)`, *default:* `nil`) - 
  *   `clusters` (*type:* `GoogleApi.ContentWarehouse.V1.Model.FatcatCompactRephilClusters.t`, *default:* `nil`) - 
  *   `epoch` (*type:* `String.t`, *default:* `nil`) - 
  *   `langCode` (*type:* `String.t`, *default:* `nil`) - 
  *   `rephilModelId` (*type:* `integer()`, *default:* `nil`) - The id of the Rephil model used to generate the Rephil clusters. If it is absent, Rephil 4 is assumed.
  *   `taxonomic` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.FatcatCompactTaxonomicClassification.t)`, *default:* `nil`) - 
  *   `url` (*type:* `String.t`, *default:* `nil`) - not needed if the url is the sstable / bigtable key used during intermediate processing only
  *   `weight` (*type:* `String.t`, *default:* `nil`) - The relative weight of this doc within a site, typically something like pagerank or navboost impressions. May be a large number (like an actual pageviews estimate), not limited to a small range.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :binary =>
            list(GoogleApi.ContentWarehouse.V1.Model.FatcatCompactBinaryClassification.t()) | nil,
          :clusters => GoogleApi.ContentWarehouse.V1.Model.FatcatCompactRephilClusters.t() | nil,
          :epoch => String.t() | nil,
          :langCode => String.t() | nil,
          :rephilModelId => integer() | nil,
          :taxonomic =>
            list(GoogleApi.ContentWarehouse.V1.Model.FatcatCompactTaxonomicClassification.t())
            | nil,
          :url => String.t() | nil,
          :weight => String.t() | nil
        }

  field(:binary,
    as: GoogleApi.ContentWarehouse.V1.Model.FatcatCompactBinaryClassification,
    type: :list
  )

  field(:clusters, as: GoogleApi.ContentWarehouse.V1.Model.FatcatCompactRephilClusters)
  field(:epoch)
  field(:langCode)
  field(:rephilModelId)

  field(:taxonomic,
    as: GoogleApi.ContentWarehouse.V1.Model.FatcatCompactTaxonomicClassification,
    type: :list
  )

  field(:url)
  field(:weight)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.FatcatCompactDocClassification do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.FatcatCompactDocClassification.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.FatcatCompactDocClassification do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
