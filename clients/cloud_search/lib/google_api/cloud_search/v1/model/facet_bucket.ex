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

defmodule GoogleApi.CloudSearch.V1.Model.FacetBucket do
  @moduledoc """
  A bucket in a facet is the basic unit of operation. A bucket can comprise either a single value OR a contiguous range of values, depending on the type of the field bucketed. FacetBucket is currently used only for returning the response object.

  ## Attributes

  *   `count` (*type:* `integer()`, *default:* `nil`) - Number of results that match the bucket value. Counts are only returned for searches when count accuracy is ensured. Cloud Search does not guarantee facet counts for any query and facet counts might be present only intermittently, even for identical queries. Do not build dependencies on facet count existence; instead use facet ount percentages which are always returned.
  *   `percentage` (*type:* `integer()`, *default:* `nil`) - Percent of results that match the bucket value. The returned value is between (0-100], and is rounded down to an integer if fractional. If the value is not explicitly returned, it represents a percentage value that rounds to 0. Percentages are returned for all searches, but are an estimate. Because percentages are always returned, you should render percentages instead of counts.
  *   `value` (*type:* `GoogleApi.CloudSearch.V1.Model.Value.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :count => integer() | nil,
          :percentage => integer() | nil,
          :value => GoogleApi.CloudSearch.V1.Model.Value.t() | nil
        }

  field(:count)
  field(:percentage)
  field(:value, as: GoogleApi.CloudSearch.V1.Model.Value)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.FacetBucket do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.FacetBucket.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.FacetBucket do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
