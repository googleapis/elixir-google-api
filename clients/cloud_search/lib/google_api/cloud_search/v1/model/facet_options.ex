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

defmodule GoogleApi.CloudSearch.V1.Model.FacetOptions do
  @moduledoc """
  Specifies operators to return facet results for. There will be one FacetResult for every source_name/object_type/operator_name combination.

  ## Attributes

  *   `numFacetBuckets` (*type:* `integer()`, *default:* `nil`) - Maximum number of facet buckets that should be returned for this facet. Defaults to 10. Maximum value is 100.
  *   `objectType` (*type:* `String.t`, *default:* `nil`) - If object_type is set, only those objects of that type will be used to compute facets. If empty, then all objects will be used to compute facets.
  *   `operatorName` (*type:* `String.t`, *default:* `nil`) - The name of the operator chosen for faceting. @see cloudsearch.SchemaPropertyOptions
  *   `sourceName` (*type:* `String.t`, *default:* `nil`) - Source name to facet on. Format: datasources/{source_id} If empty, all data sources will be used.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :numFacetBuckets => integer() | nil,
          :objectType => String.t() | nil,
          :operatorName => String.t() | nil,
          :sourceName => String.t() | nil
        }

  field(:numFacetBuckets)
  field(:objectType)
  field(:operatorName)
  field(:sourceName)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.FacetOptions do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.FacetOptions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.FacetOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
