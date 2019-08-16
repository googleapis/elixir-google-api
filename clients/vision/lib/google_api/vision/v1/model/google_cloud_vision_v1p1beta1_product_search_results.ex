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

defmodule GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1ProductSearchResults do
  @moduledoc """
  Results for a product search request.

  ## Attributes

  *   `indexTime` (*type:* `DateTime.t`, *default:* `nil`) - Timestamp of the index which provided these results. Products added to the
      product set and products removed from the product set after this time are
      not reflected in the current results.
  *   `productGroupedResults` (*type:* `list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult.t)`, *default:* `nil`) - List of results grouped by products detected in the query image. Each entry
      corresponds to one bounding polygon in the query image, and contains the
      matching products specific to that region. There may be duplicate product
      matches in the union of all the per-product results.
  *   `results` (*type:* `list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1ProductSearchResultsResult.t)`, *default:* `nil`) - List of results, one for each product match.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :indexTime => DateTime.t(),
          :productGroupedResults =>
            list(
              GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult.t()
            ),
          :results =>
            list(
              GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1ProductSearchResultsResult.t()
            )
        }

  field(:indexTime, as: DateTime)

  field(
    :productGroupedResults,
    as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult,
    type: :list
  )

  field(
    :results,
    as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1ProductSearchResultsResult,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1ProductSearchResults do
  def decode(value, options) do
    GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1ProductSearchResults.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1ProductSearchResults do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
