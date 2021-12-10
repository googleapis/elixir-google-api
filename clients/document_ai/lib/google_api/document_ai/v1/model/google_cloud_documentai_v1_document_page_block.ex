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

defmodule GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1DocumentPageBlock do
  @moduledoc """
  A block has a set of lines (collected into paragraphs) that have a common line-spacing and orientation.

  ## Attributes

  *   `detectedLanguages` (*type:* `list(GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage.t)`, *default:* `nil`) - A list of detected languages together with confidence.
  *   `layout` (*type:* `GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1DocumentPageLayout.t`, *default:* `nil`) - Layout for Block.
  *   `provenance` (*type:* `GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1DocumentProvenance.t`, *default:* `nil`) - The history of this annotation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :detectedLanguages =>
            list(
              GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage.t()
            )
            | nil,
          :layout =>
            GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1DocumentPageLayout.t() | nil,
          :provenance =>
            GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1DocumentProvenance.t() | nil
        }

  field(:detectedLanguages,
    as: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage,
    type: :list
  )

  field(:layout, as: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1DocumentPageLayout)
  field(:provenance, as: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1DocumentProvenance)
end

defimpl Poison.Decoder,
  for: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1DocumentPageBlock do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1DocumentPageBlock.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1DocumentPageBlock do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
