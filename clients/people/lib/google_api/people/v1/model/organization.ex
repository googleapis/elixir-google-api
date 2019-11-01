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

defmodule GoogleApi.People.V1.Model.Organization do
  @moduledoc """
  A person's past or current organization. Overlapping date ranges are
  permitted.

  ## Attributes

  *   `current` (*type:* `boolean()`, *default:* `nil`) - True if the organization is the person's current organization;
      false if the organization is a past organization.
  *   `department` (*type:* `String.t`, *default:* `nil`) - The person's department at the organization.
  *   `domain` (*type:* `String.t`, *default:* `nil`) - The domain name associated with the organization; for example,
      `google.com`.
  *   `endDate` (*type:* `GoogleApi.People.V1.Model.Date.t`, *default:* `nil`) - The end date when the person left the organization.
  *   `formattedType` (*type:* `String.t`, *default:* `nil`) - Output only. The type of the organization translated and formatted in the
      viewer's account locale or the `Accept-Language` HTTP header locale.
  *   `jobDescription` (*type:* `String.t`, *default:* `nil`) - The person's job description at the organization.
  *   `location` (*type:* `String.t`, *default:* `nil`) - The location of the organization office the person works at.
  *   `metadata` (*type:* `GoogleApi.People.V1.Model.FieldMetadata.t`, *default:* `nil`) - Metadata about the organization.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the organization.
  *   `phoneticName` (*type:* `String.t`, *default:* `nil`) - The phonetic name of the organization.
  *   `startDate` (*type:* `GoogleApi.People.V1.Model.Date.t`, *default:* `nil`) - The start date when the person joined the organization.
  *   `symbol` (*type:* `String.t`, *default:* `nil`) - The symbol associated with the organization; for example, a stock ticker
      symbol, abbreviation, or acronym.
  *   `title` (*type:* `String.t`, *default:* `nil`) - The person's job title at the organization.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of the organization. The type can be custom or  one of these
      predefined values:

      * `work`
      * `school`
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :current => boolean(),
          :department => String.t(),
          :domain => String.t(),
          :endDate => GoogleApi.People.V1.Model.Date.t(),
          :formattedType => String.t(),
          :jobDescription => String.t(),
          :location => String.t(),
          :metadata => GoogleApi.People.V1.Model.FieldMetadata.t(),
          :name => String.t(),
          :phoneticName => String.t(),
          :startDate => GoogleApi.People.V1.Model.Date.t(),
          :symbol => String.t(),
          :title => String.t(),
          :type => String.t()
        }

  field(:current)
  field(:department)
  field(:domain)
  field(:endDate, as: GoogleApi.People.V1.Model.Date)
  field(:formattedType)
  field(:jobDescription)
  field(:location)
  field(:metadata, as: GoogleApi.People.V1.Model.FieldMetadata)
  field(:name)
  field(:phoneticName)
  field(:startDate, as: GoogleApi.People.V1.Model.Date)
  field(:symbol)
  field(:title)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.People.V1.Model.Organization do
  def decode(value, options) do
    GoogleApi.People.V1.Model.Organization.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.People.V1.Model.Organization do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
