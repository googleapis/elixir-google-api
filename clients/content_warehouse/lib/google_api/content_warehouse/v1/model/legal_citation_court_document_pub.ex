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

defmodule GoogleApi.ContentWarehouse.V1.Model.LegalCitationCourtDocumentPub do
  @moduledoc """


  ## Attributes

  *   `Page` (*type:* `String.t`, *default:* `nil`) - Page number
  *   `Paragraph` (*type:* `String.t`, *default:* `nil`) - Paragraph number
  *   `Reporter` (*type:* `String.t`, *default:* `nil`) - The publisher of the opinion. For example, 'U.S.' - United States Reports 'S. Ct.' - Supreme Court Reporter 'L. Ed. 2d' - Lawyers Edition Second Series
  *   `Volume` (*type:* `integer()`, *default:* `nil`) - For documents published by a court reporter. Vendor/Media neutral citations will probably not have this.
  *   `Year` (*type:* `integer()`, *default:* `nil`) - This is the publication year. In many citations, there is one year listed and it is typically the year the opinion was handed down. For example: Roe v. Wade, 410 U.S. 113 (1973) Occasionally, the publication year of the reporter is included. This happens typically when the law reporter volume numbers are numbered within a calendar year. For example, Swiss Bank Corp. v. Air Canada, [1988] 1 F.C. 71. It some (most?) areas, publication date is denoted by [] while opinion date is denoted by ().
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :Page => String.t() | nil,
          :Paragraph => String.t() | nil,
          :Reporter => String.t() | nil,
          :Volume => integer() | nil,
          :Year => integer() | nil
        }

  field(:Page)
  field(:Paragraph)
  field(:Reporter)
  field(:Volume)
  field(:Year)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.LegalCitationCourtDocumentPub do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.LegalCitationCourtDocumentPub.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.LegalCitationCourtDocumentPub do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
