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

defmodule GoogleApi.CSS.V1.Model.CssProductStatus do
  @moduledoc """
  The status of the Css Product, data validation issues, that is, information about the Css Product computed asynchronously.

  ## Attributes

  *   `creationDate` (*type:* `DateTime.t`, *default:* `nil`) - Date on which the item has been created, in [ISO 8601](http://en.wikipedia.org/wiki/ISO_8601) format.
  *   `destinationStatuses` (*type:* `list(GoogleApi.CSS.V1.Model.DestinationStatus.t)`, *default:* `nil`) - The intended destinations for the product.
  *   `googleExpirationDate` (*type:* `DateTime.t`, *default:* `nil`) - Date on which the item expires, in [ISO 8601](http://en.wikipedia.org/wiki/ISO_8601) format.
  *   `itemLevelIssues` (*type:* `list(GoogleApi.CSS.V1.Model.ItemLevelIssue.t)`, *default:* `nil`) - A list of all issues associated with the product.
  *   `lastUpdateDate` (*type:* `DateTime.t`, *default:* `nil`) - Date on which the item has been last updated, in [ISO 8601](http://en.wikipedia.org/wiki/ISO_8601) format.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creationDate => DateTime.t() | nil,
          :destinationStatuses => list(GoogleApi.CSS.V1.Model.DestinationStatus.t()) | nil,
          :googleExpirationDate => DateTime.t() | nil,
          :itemLevelIssues => list(GoogleApi.CSS.V1.Model.ItemLevelIssue.t()) | nil,
          :lastUpdateDate => DateTime.t() | nil
        }

  field(:creationDate, as: DateTime)
  field(:destinationStatuses, as: GoogleApi.CSS.V1.Model.DestinationStatus, type: :list)
  field(:googleExpirationDate, as: DateTime)
  field(:itemLevelIssues, as: GoogleApi.CSS.V1.Model.ItemLevelIssue, type: :list)
  field(:lastUpdateDate, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.CSS.V1.Model.CssProductStatus do
  def decode(value, options) do
    GoogleApi.CSS.V1.Model.CssProductStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CSS.V1.Model.CssProductStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
