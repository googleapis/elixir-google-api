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

defmodule GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3DocumentTextChange do
  @moduledoc """
  This message is used for text changes aka. OCR corrections.

  ## Attributes

  *   `changedText` (*type:* `String.t`, *default:* `nil`) - The text that replaces the text identified in the `text_anchor`.
  *   `provenance` (*type:* `list(GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3DocumentProvenance.t)`, *default:* `nil`) - The history of this annotation.
  *   `textAnchor` (*type:* `GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3DocumentTextAnchor.t`, *default:* `nil`) - Provenance of the correction. Text anchor indexing into the Document.text. There can only be a single `TextAnchor.text_segments` element. If the start and end index of the text segment are the same, the text change is inserted before that index.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :changedText => String.t(),
          :provenance =>
            list(
              GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3DocumentProvenance.t()
            ),
          :textAnchor =>
            GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3DocumentTextAnchor.t()
        }

  field(:changedText)

  field(:provenance,
    as: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3DocumentProvenance,
    type: :list
  )

  field(:textAnchor,
    as: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3DocumentTextAnchor
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3DocumentTextChange do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3DocumentTextChange.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3DocumentTextChange do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
