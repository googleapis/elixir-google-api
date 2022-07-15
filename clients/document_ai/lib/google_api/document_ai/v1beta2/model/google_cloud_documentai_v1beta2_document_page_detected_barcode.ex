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

defmodule GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2DocumentPageDetectedBarcode do
  @moduledoc """
  A detected barcode.

  ## Attributes

  *   `barcode` (*type:* `GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2Barcode.t`, *default:* `nil`) - Detailed barcode information of the DetectedBarcode.
  *   `layout` (*type:* `GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2DocumentPageLayout.t`, *default:* `nil`) - Layout for DetectedBarcode.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :barcode =>
            GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2Barcode.t() | nil,
          :layout =>
            GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2DocumentPageLayout.t()
            | nil
        }

  field(:barcode, as: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2Barcode)

  field(:layout,
    as: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2DocumentPageLayout
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2DocumentPageDetectedBarcode do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2DocumentPageDetectedBarcode.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2DocumentPageDetectedBarcode do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
