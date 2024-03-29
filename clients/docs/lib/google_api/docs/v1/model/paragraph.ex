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

defmodule GoogleApi.Docs.V1.Model.Paragraph do
  @moduledoc """
  A StructuralElement representing a paragraph. A paragraph is a range of content that's terminated with a newline character.

  ## Attributes

  *   `bullet` (*type:* `GoogleApi.Docs.V1.Model.Bullet.t`, *default:* `nil`) - The bullet for this paragraph. If not present, the paragraph does not belong to a list.
  *   `elements` (*type:* `list(GoogleApi.Docs.V1.Model.ParagraphElement.t)`, *default:* `nil`) - The content of the paragraph, broken down into its component parts.
  *   `paragraphStyle` (*type:* `GoogleApi.Docs.V1.Model.ParagraphStyle.t`, *default:* `nil`) - The style of this paragraph.
  *   `positionedObjectIds` (*type:* `list(String.t)`, *default:* `nil`) - The IDs of the positioned objects tethered to this paragraph.
  *   `suggestedBulletChanges` (*type:* `%{optional(String.t) => GoogleApi.Docs.V1.Model.SuggestedBullet.t}`, *default:* `nil`) - The suggested changes to this paragraph's bullet.
  *   `suggestedParagraphStyleChanges` (*type:* `%{optional(String.t) => GoogleApi.Docs.V1.Model.SuggestedParagraphStyle.t}`, *default:* `nil`) - The suggested paragraph style changes to this paragraph, keyed by suggestion ID.
  *   `suggestedPositionedObjectIds` (*type:* `%{optional(String.t) => GoogleApi.Docs.V1.Model.ObjectReferences.t}`, *default:* `nil`) - The IDs of the positioned objects suggested to be attached to this paragraph, keyed by suggestion ID.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bullet => GoogleApi.Docs.V1.Model.Bullet.t() | nil,
          :elements => list(GoogleApi.Docs.V1.Model.ParagraphElement.t()) | nil,
          :paragraphStyle => GoogleApi.Docs.V1.Model.ParagraphStyle.t() | nil,
          :positionedObjectIds => list(String.t()) | nil,
          :suggestedBulletChanges =>
            %{optional(String.t()) => GoogleApi.Docs.V1.Model.SuggestedBullet.t()} | nil,
          :suggestedParagraphStyleChanges =>
            %{optional(String.t()) => GoogleApi.Docs.V1.Model.SuggestedParagraphStyle.t()} | nil,
          :suggestedPositionedObjectIds =>
            %{optional(String.t()) => GoogleApi.Docs.V1.Model.ObjectReferences.t()} | nil
        }

  field(:bullet, as: GoogleApi.Docs.V1.Model.Bullet)
  field(:elements, as: GoogleApi.Docs.V1.Model.ParagraphElement, type: :list)
  field(:paragraphStyle, as: GoogleApi.Docs.V1.Model.ParagraphStyle)
  field(:positionedObjectIds, type: :list)
  field(:suggestedBulletChanges, as: GoogleApi.Docs.V1.Model.SuggestedBullet, type: :map)

  field(:suggestedParagraphStyleChanges,
    as: GoogleApi.Docs.V1.Model.SuggestedParagraphStyle,
    type: :map
  )

  field(:suggestedPositionedObjectIds, as: GoogleApi.Docs.V1.Model.ObjectReferences, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.Docs.V1.Model.Paragraph do
  def decode(value, options) do
    GoogleApi.Docs.V1.Model.Paragraph.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Docs.V1.Model.Paragraph do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
