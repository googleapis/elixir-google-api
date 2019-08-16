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

defmodule GoogleApi.Content.V2.Model.OrderCancellation do
  @moduledoc """


  ## Attributes

  *   `actor` (*type:* `String.t`, *default:* `nil`) - The actor that created the cancellation.
  *   `creationDate` (*type:* `String.t`, *default:* `nil`) - Date on which the cancellation has been created, in ISO 8601 format.
  *   `quantity` (*type:* `integer()`, *default:* `nil`) - The quantity that was canceled.
  *   `reason` (*type:* `String.t`, *default:* `nil`) - The reason for the cancellation. Orders that are cancelled with a noInventory reason will lead to the removal of the product from Shopping Actions until you make an update to that product. This will not affect your Shopping ads.
  *   `reasonText` (*type:* `String.t`, *default:* `nil`) - The explanation of the reason.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :actor => String.t(),
          :creationDate => String.t(),
          :quantity => integer(),
          :reason => String.t(),
          :reasonText => String.t()
        }

  field(:actor)
  field(:creationDate)
  field(:quantity)
  field(:reason)
  field(:reasonText)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.OrderCancellation do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.OrderCancellation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.OrderCancellation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
