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

defmodule GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult do
  @moduledoc """
  Information about the products similar to a single product in a query image.

  ## Attributes

  *   `boundingPoly` (*type:* `GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p2beta1BoundingPoly.t`, *default:* `nil`) - The bounding polygon around the product detected in the query image.
  *   `objectAnnotations` (*type:* `list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation.t)`, *default:* `nil`) - List of generic predictions for the object in the bounding box.
  *   `results` (*type:* `list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p2beta1ProductSearchResultsResult.t)`, *default:* `nil`) - List of results, one for each product match.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :boundingPoly =>
            GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p2beta1BoundingPoly.t() | nil,
          :objectAnnotations =>
            list(
              GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation.t()
            )
            | nil,
          :results =>
            list(
              GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p2beta1ProductSearchResultsResult.t()
            )
            | nil
        }

  field(:boundingPoly, as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p2beta1BoundingPoly)

  field(:objectAnnotations,
    as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation,
    type: :list
  )

  field(:results,
    as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p2beta1ProductSearchResultsResult,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult do
  def decode(value, options) do
    GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
