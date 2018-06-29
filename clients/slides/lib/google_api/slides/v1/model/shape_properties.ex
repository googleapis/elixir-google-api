# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Slides.V1.Model.ShapeProperties do
  @moduledoc """
  The properties of a Shape.  If the shape is a placeholder shape as determined by the placeholder field, then these properties may be inherited from a parent placeholder shape. Determining the rendered value of the property depends on the corresponding property_state field value.

  ## Attributes

  - contentAlignment (String.t): The alignment of the content in the shape. If unspecified, the alignment is inherited from a parent placeholder if it exists. If the shape has no parent, the default alignment matches the alignment for new shapes created in the Slides editor. Defaults to: `null`.
    - Enum - one of [CONTENT_ALIGNMENT_UNSPECIFIED, CONTENT_ALIGNMENT_UNSUPPORTED, TOP, MIDDLE, BOTTOM]
  - link (Link): The hyperlink destination of the shape. If unset, there is no link. Links are not inherited from parent placeholders. Defaults to: `null`.
  - outline (Outline): The outline of the shape. If unset, the outline is inherited from a parent placeholder if it exists. If the shape has no parent, then the default outline depends on the shape type, matching the defaults for new shapes created in the Slides editor. Defaults to: `null`.
  - shadow (Shadow): The shadow properties of the shape. If unset, the shadow is inherited from a parent placeholder if it exists. If the shape has no parent, then the default shadow matches the defaults for new shapes created in the Slides editor. This property is read-only. Defaults to: `null`.
  - shapeBackgroundFill (ShapeBackgroundFill): The background fill of the shape. If unset, the background fill is inherited from a parent placeholder if it exists. If the shape has no parent, then the default background fill depends on the shape type, matching the defaults for new shapes created in the Slides editor. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contentAlignment => any(),
          :link => GoogleApi.Slides.V1.Model.Link.t(),
          :outline => GoogleApi.Slides.V1.Model.Outline.t(),
          :shadow => GoogleApi.Slides.V1.Model.Shadow.t(),
          :shapeBackgroundFill => GoogleApi.Slides.V1.Model.ShapeBackgroundFill.t()
        }

  field(:contentAlignment)
  field(:link, as: GoogleApi.Slides.V1.Model.Link)
  field(:outline, as: GoogleApi.Slides.V1.Model.Outline)
  field(:shadow, as: GoogleApi.Slides.V1.Model.Shadow)
  field(:shapeBackgroundFill, as: GoogleApi.Slides.V1.Model.ShapeBackgroundFill)
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.ShapeProperties do
  def decode(value, options) do
    GoogleApi.Slides.V1.Model.ShapeProperties.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.ShapeProperties do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
