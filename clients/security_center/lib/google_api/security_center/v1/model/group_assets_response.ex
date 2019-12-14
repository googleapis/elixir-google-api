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

defmodule GoogleApi.SecurityCenter.V1.Model.GroupAssetsResponse do
  @moduledoc """
  Response message for grouping by assets.

  ## Attributes

  *   `groupByResults` (*type:* `list(GoogleApi.SecurityCenter.V1.Model.GroupResult.t)`, *default:* `nil`) - Group results. There exists an element for each existing unique
      combination of property/values. The element contains a count for the number
      of times those specific property/values appear.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Token to retrieve the next page of results, or empty if there are no more
      results.
  *   `readTime` (*type:* `DateTime.t`, *default:* `nil`) - Time used for executing the groupBy request.
  *   `totalSize` (*type:* `integer()`, *default:* `nil`) - The total number of results matching the query.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :groupByResults => list(GoogleApi.SecurityCenter.V1.Model.GroupResult.t()),
          :nextPageToken => String.t(),
          :readTime => DateTime.t(),
          :totalSize => integer()
        }

  field(:groupByResults, as: GoogleApi.SecurityCenter.V1.Model.GroupResult, type: :list)
  field(:nextPageToken)
  field(:readTime, as: DateTime)
  field(:totalSize)
end

defimpl Poison.Decoder, for: GoogleApi.SecurityCenter.V1.Model.GroupAssetsResponse do
  def decode(value, options) do
    GoogleApi.SecurityCenter.V1.Model.GroupAssetsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SecurityCenter.V1.Model.GroupAssetsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
