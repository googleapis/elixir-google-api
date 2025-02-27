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

defmodule GoogleApi.Docs.V1.Model.DocumentStyle do
  @moduledoc """
  The style of the document.

  ## Attributes

  *   `background` (*type:* `GoogleApi.Docs.V1.Model.Background.t`, *default:* `nil`) - The background of the document. Documents cannot have a transparent background color.
  *   `defaultFooterId` (*type:* `String.t`, *default:* `nil`) - The ID of the default footer. If not set, there's no default footer. This property is read-only.
  *   `defaultHeaderId` (*type:* `String.t`, *default:* `nil`) - The ID of the default header. If not set, there's no default header. This property is read-only.
  *   `evenPageFooterId` (*type:* `String.t`, *default:* `nil`) - The ID of the footer used only for even pages. The value of use_even_page_header_footer determines whether to use the default_footer_id or this value for the footer on even pages. If not set, there's no even page footer. This property is read-only.
  *   `evenPageHeaderId` (*type:* `String.t`, *default:* `nil`) - The ID of the header used only for even pages. The value of use_even_page_header_footer determines whether to use the default_header_id or this value for the header on even pages. If not set, there's no even page header. This property is read-only.
  *   `firstPageFooterId` (*type:* `String.t`, *default:* `nil`) - The ID of the footer used only for the first page. If not set then a unique footer for the first page does not exist. The value of use_first_page_header_footer determines whether to use the default_footer_id or this value for the footer on the first page. If not set, there's no first page footer. This property is read-only.
  *   `firstPageHeaderId` (*type:* `String.t`, *default:* `nil`) - The ID of the header used only for the first page. If not set then a unique header for the first page does not exist. The value of use_first_page_header_footer determines whether to use the default_header_id or this value for the header on the first page. If not set, there's no first page header. This property is read-only.
  *   `flipPageOrientation` (*type:* `boolean()`, *default:* `nil`) - Optional. Indicates whether to flip the dimensions of the page_size, which allows changing the page orientation between portrait and landscape.
  *   `marginBottom` (*type:* `GoogleApi.Docs.V1.Model.Dimension.t`, *default:* `nil`) - The bottom page margin. Updating the bottom page margin on the document style clears the bottom page margin on all section styles.
  *   `marginFooter` (*type:* `GoogleApi.Docs.V1.Model.Dimension.t`, *default:* `nil`) - The amount of space between the bottom of the page and the contents of the footer.
  *   `marginHeader` (*type:* `GoogleApi.Docs.V1.Model.Dimension.t`, *default:* `nil`) - The amount of space between the top of the page and the contents of the header.
  *   `marginLeft` (*type:* `GoogleApi.Docs.V1.Model.Dimension.t`, *default:* `nil`) - The left page margin. Updating the left page margin on the document style clears the left page margin on all section styles. It may also cause columns to resize in all sections.
  *   `marginRight` (*type:* `GoogleApi.Docs.V1.Model.Dimension.t`, *default:* `nil`) - The right page margin. Updating the right page margin on the document style clears the right page margin on all section styles. It may also cause columns to resize in all sections.
  *   `marginTop` (*type:* `GoogleApi.Docs.V1.Model.Dimension.t`, *default:* `nil`) - The top page margin. Updating the top page margin on the document style clears the top page margin on all section styles.
  *   `pageNumberStart` (*type:* `integer()`, *default:* `nil`) - The page number from which to start counting the number of pages.
  *   `pageSize` (*type:* `GoogleApi.Docs.V1.Model.Size.t`, *default:* `nil`) - The size of a page in the document.
  *   `useCustomHeaderFooterMargins` (*type:* `boolean()`, *default:* `nil`) - Indicates whether DocumentStyle margin_header, SectionStyle margin_header and DocumentStyle margin_footer, SectionStyle margin_footer are respected. When false, the default values in the Docs editor for header and footer margin is used. This property is read-only.
  *   `useEvenPageHeaderFooter` (*type:* `boolean()`, *default:* `nil`) - Indicates whether to use the even page header / footer IDs for the even pages.
  *   `useFirstPageHeaderFooter` (*type:* `boolean()`, *default:* `nil`) - Indicates whether to use the first page header / footer IDs for the first page.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :background => GoogleApi.Docs.V1.Model.Background.t() | nil,
          :defaultFooterId => String.t() | nil,
          :defaultHeaderId => String.t() | nil,
          :evenPageFooterId => String.t() | nil,
          :evenPageHeaderId => String.t() | nil,
          :firstPageFooterId => String.t() | nil,
          :firstPageHeaderId => String.t() | nil,
          :flipPageOrientation => boolean() | nil,
          :marginBottom => GoogleApi.Docs.V1.Model.Dimension.t() | nil,
          :marginFooter => GoogleApi.Docs.V1.Model.Dimension.t() | nil,
          :marginHeader => GoogleApi.Docs.V1.Model.Dimension.t() | nil,
          :marginLeft => GoogleApi.Docs.V1.Model.Dimension.t() | nil,
          :marginRight => GoogleApi.Docs.V1.Model.Dimension.t() | nil,
          :marginTop => GoogleApi.Docs.V1.Model.Dimension.t() | nil,
          :pageNumberStart => integer() | nil,
          :pageSize => GoogleApi.Docs.V1.Model.Size.t() | nil,
          :useCustomHeaderFooterMargins => boolean() | nil,
          :useEvenPageHeaderFooter => boolean() | nil,
          :useFirstPageHeaderFooter => boolean() | nil
        }

  field(:background, as: GoogleApi.Docs.V1.Model.Background)
  field(:defaultFooterId)
  field(:defaultHeaderId)
  field(:evenPageFooterId)
  field(:evenPageHeaderId)
  field(:firstPageFooterId)
  field(:firstPageHeaderId)
  field(:flipPageOrientation)
  field(:marginBottom, as: GoogleApi.Docs.V1.Model.Dimension)
  field(:marginFooter, as: GoogleApi.Docs.V1.Model.Dimension)
  field(:marginHeader, as: GoogleApi.Docs.V1.Model.Dimension)
  field(:marginLeft, as: GoogleApi.Docs.V1.Model.Dimension)
  field(:marginRight, as: GoogleApi.Docs.V1.Model.Dimension)
  field(:marginTop, as: GoogleApi.Docs.V1.Model.Dimension)
  field(:pageNumberStart)
  field(:pageSize, as: GoogleApi.Docs.V1.Model.Size)
  field(:useCustomHeaderFooterMargins)
  field(:useEvenPageHeaderFooter)
  field(:useFirstPageHeaderFooter)
end

defimpl Poison.Decoder, for: GoogleApi.Docs.V1.Model.DocumentStyle do
  def decode(value, options) do
    GoogleApi.Docs.V1.Model.DocumentStyle.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Docs.V1.Model.DocumentStyle do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
