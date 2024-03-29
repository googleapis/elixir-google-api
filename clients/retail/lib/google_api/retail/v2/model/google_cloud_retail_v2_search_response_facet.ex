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

defmodule GoogleApi.Retail.V2.Model.GoogleCloudRetailV2SearchResponseFacet do
  @moduledoc """
  A facet result.

  ## Attributes

  *   `dynamicFacet` (*type:* `boolean()`, *default:* `nil`) - Whether the facet is dynamically generated.
  *   `key` (*type:* `String.t`, *default:* `nil`) - The key for this facet. E.g., "colorFamilies" or "price" or "attributes.attr1".
  *   `values` (*type:* `list(GoogleApi.Retail.V2.Model.GoogleCloudRetailV2SearchResponseFacetFacetValue.t)`, *default:* `nil`) - The facet values for this field.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dynamicFacet => boolean() | nil,
          :key => String.t() | nil,
          :values =>
            list(GoogleApi.Retail.V2.Model.GoogleCloudRetailV2SearchResponseFacetFacetValue.t())
            | nil
        }

  field(:dynamicFacet)
  field(:key)

  field(:values,
    as: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2SearchResponseFacetFacetValue,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2SearchResponseFacet do
  def decode(value, options) do
    GoogleApi.Retail.V2.Model.GoogleCloudRetailV2SearchResponseFacet.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2SearchResponseFacet do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
