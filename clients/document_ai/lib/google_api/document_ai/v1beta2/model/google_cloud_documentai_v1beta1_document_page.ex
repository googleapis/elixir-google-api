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

defmodule GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPage do
  @moduledoc """
  A page in a Document.

  ## Attributes

  *   `blocks` (*type:* `list(GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageBlock.t)`, *default:* `nil`) - A list of visually detected text blocks on the page. A block has a set of lines (collected into paragraphs) that have a common line-spacing and orientation.
  *   `detectedBarcodes` (*type:* `list(GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageDetectedBarcode.t)`, *default:* `nil`) - A list of detected barcodes.
  *   `detectedLanguages` (*type:* `list(GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage.t)`, *default:* `nil`) - A list of detected languages together with confidence.
  *   `dimension` (*type:* `GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageDimension.t`, *default:* `nil`) - Physical dimension of the page.
  *   `formFields` (*type:* `list(GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageFormField.t)`, *default:* `nil`) - A list of visually detected form fields on the page.
  *   `image` (*type:* `GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageImage.t`, *default:* `nil`) - Rendered image for this page. This image is preprocessed to remove any skew, rotation, and distortions such that the annotation bounding boxes can be upright and axis-aligned.
  *   `imageQualityScores` (*type:* `GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageImageQualityScores.t`, *default:* `nil`) - Image Quality Scores.
  *   `layout` (*type:* `GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageLayout.t`, *default:* `nil`) - Layout for the page.
  *   `lines` (*type:* `list(GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageLine.t)`, *default:* `nil`) - A list of visually detected text lines on the page. A collection of tokens that a human would perceive as a line.
  *   `pageNumber` (*type:* `integer()`, *default:* `nil`) - 1-based index for current Page in a parent Document. Useful when a page is taken out of a Document for individual processing.
  *   `paragraphs` (*type:* `list(GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageParagraph.t)`, *default:* `nil`) - A list of visually detected text paragraphs on the page. A collection of lines that a human would perceive as a paragraph.
  *   `provenance` (*type:* `GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentProvenance.t`, *default:* `nil`) - The history of this page.
  *   `symbols` (*type:* `list(GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageSymbol.t)`, *default:* `nil`) - A list of visually detected symbols on the page.
  *   `tables` (*type:* `list(GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageTable.t)`, *default:* `nil`) - A list of visually detected tables on the page.
  *   `tokens` (*type:* `list(GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageToken.t)`, *default:* `nil`) - A list of visually detected tokens on the page.
  *   `transforms` (*type:* `list(GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageMatrix.t)`, *default:* `nil`) - Transformation matrices that were applied to the original document image to produce Page.image.
  *   `visualElements` (*type:* `list(GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageVisualElement.t)`, *default:* `nil`) - A list of detected non-text visual elements e.g. checkbox, signature etc. on the page.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :blocks =>
            list(
              GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageBlock.t()
            )
            | nil,
          :detectedBarcodes =>
            list(
              GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageDetectedBarcode.t()
            )
            | nil,
          :detectedLanguages =>
            list(
              GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage.t()
            )
            | nil,
          :dimension =>
            GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageDimension.t()
            | nil,
          :formFields =>
            list(
              GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageFormField.t()
            )
            | nil,
          :image =>
            GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageImage.t()
            | nil,
          :imageQualityScores =>
            GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageImageQualityScores.t()
            | nil,
          :layout =>
            GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageLayout.t()
            | nil,
          :lines =>
            list(
              GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageLine.t()
            )
            | nil,
          :pageNumber => integer() | nil,
          :paragraphs =>
            list(
              GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageParagraph.t()
            )
            | nil,
          :provenance =>
            GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentProvenance.t()
            | nil,
          :symbols =>
            list(
              GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageSymbol.t()
            )
            | nil,
          :tables =>
            list(
              GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageTable.t()
            )
            | nil,
          :tokens =>
            list(
              GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageToken.t()
            )
            | nil,
          :transforms =>
            list(
              GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageMatrix.t()
            )
            | nil,
          :visualElements =>
            list(
              GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageVisualElement.t()
            )
            | nil
        }

  field(:blocks,
    as: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageBlock,
    type: :list
  )

  field(:detectedBarcodes,
    as:
      GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageDetectedBarcode,
    type: :list
  )

  field(:detectedLanguages,
    as:
      GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage,
    type: :list
  )

  field(:dimension,
    as: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageDimension
  )

  field(:formFields,
    as: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageFormField,
    type: :list
  )

  field(:image,
    as: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageImage
  )

  field(:imageQualityScores,
    as:
      GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageImageQualityScores
  )

  field(:layout,
    as: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageLayout
  )

  field(:lines,
    as: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageLine,
    type: :list
  )

  field(:pageNumber)

  field(:paragraphs,
    as: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageParagraph,
    type: :list
  )

  field(:provenance,
    as: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentProvenance
  )

  field(:symbols,
    as: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageSymbol,
    type: :list
  )

  field(:tables,
    as: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageTable,
    type: :list
  )

  field(:tokens,
    as: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageToken,
    type: :list
  )

  field(:transforms,
    as: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageMatrix,
    type: :list
  )

  field(:visualElements,
    as: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageVisualElement,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPage do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPage.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPage do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
