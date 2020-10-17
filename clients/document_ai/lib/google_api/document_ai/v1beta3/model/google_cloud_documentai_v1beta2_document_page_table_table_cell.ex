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

defmodule GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell do
  @moduledoc """
  A cell representation inside the table.

  ## Attributes

  *   `colSpan` (*type:* `integer()`, *default:* `nil`) - How many columns this cell spans.
  *   `detectedLanguages` (*type:* `list(GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage.t)`, *default:* `nil`) - A list of detected languages together with confidence.
  *   `layout` (*type:* `GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta2DocumentPageLayout.t`, *default:* `nil`) - Layout for TableCell.
  *   `rowSpan` (*type:* `integer()`, *default:* `nil`) - How many rows this cell spans.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :colSpan => integer(),
          :detectedLanguages =>
            list(
              GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage.t()
            ),
          :layout =>
            GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta2DocumentPageLayout.t(),
          :rowSpan => integer()
        }

  field(:colSpan)

  field(:detectedLanguages,
    as:
      GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage,
    type: :list
  )

  field(:layout,
    as: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta2DocumentPageLayout
  )

  field(:rowSpan)
end

defimpl Poison.Decoder,
  for: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
