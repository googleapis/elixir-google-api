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

defmodule GoogleApi.CloudSearch.V1.Model.ThirdPartyGenericCard do
  @moduledoc """


  ## Attributes

  *   `cardId` (*type:* `String.t`, *default:* `nil`) - Unique identifier for the card.
  *   `category` (*type:* `String.t`, *default:* `nil`) - Category that the card belongs to.
  *   `content` (*type:* `GoogleApi.CloudSearch.V1.Model.Content.t`, *default:* `nil`) - [Required] Card content.
  *   `context` (*type:* `GoogleApi.CloudSearch.V1.Model.Context.t`, *default:* `nil`) - [Required] Context where the card should be triggered.
  *   `isDismissible` (*type:* `boolean()`, *default:* `nil`) - Whether the card can be dismissed.
  *   `priority` (*type:* `integer()`, *default:* `nil`) - Priority of the card, where 0 is the highest priority.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cardId => String.t() | nil,
          :category => String.t() | nil,
          :content => GoogleApi.CloudSearch.V1.Model.Content.t() | nil,
          :context => GoogleApi.CloudSearch.V1.Model.Context.t() | nil,
          :isDismissible => boolean() | nil,
          :priority => integer() | nil
        }

  field(:cardId)
  field(:category)
  field(:content, as: GoogleApi.CloudSearch.V1.Model.Content)
  field(:context, as: GoogleApi.CloudSearch.V1.Model.Context)
  field(:isDismissible)
  field(:priority)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.ThirdPartyGenericCard do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.ThirdPartyGenericCard.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.ThirdPartyGenericCard do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
