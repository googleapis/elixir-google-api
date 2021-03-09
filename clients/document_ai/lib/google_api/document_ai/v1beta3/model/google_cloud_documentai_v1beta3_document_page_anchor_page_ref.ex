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

defmodule GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef do
  @moduledoc """
  Represents a weak reference to a page element within a document.

  ## Attributes

  *   `boundingPoly` (*type:* `GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3BoundingPoly.t`, *default:* `nil`) - Optional. Identifies the bounding polygon of a layout element on the page.
  *   `layoutId` (*type:* `String.t`, *default:* `nil`) - Optional. Deprecated. Use PageRef.bounding_poly instead.
  *   `layoutType` (*type:* `String.t`, *default:* `nil`) - Optional. The type of the layout element that is being referenced if any.
  *   `page` (*type:* `String.t`, *default:* `nil`) - Required. Index into the Document.pages element, for example using Document.pages to locate the related page element.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :boundingPoly =>
            GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3BoundingPoly.t() | nil,
          :layoutId => String.t() | nil,
          :layoutType => String.t() | nil,
          :page => String.t() | nil
        }

  field(:boundingPoly,
    as: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3BoundingPoly
  )

  field(:layoutId)
  field(:layoutType)
  field(:page)
end

defimpl Poison.Decoder,
  for: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
